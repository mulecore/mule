#!/bin/sh

TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
SRCDIR=${SRCDIR:-$TOPDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

MULED=${MULED:-$SRCDIR/muled}
MULECLI=${MULECLI:-$SRCDIR/mule-cli}
MULETX=${MULETX:-$SRCDIR/mule-tx}
MULEQT=${MULEQT:-$SRCDIR/qt/mule-qt}

[ ! -x $MULED ] && echo "$MULED not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
MLDCVER=($($MULECLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }'))

# Create a footer file with copyright content.
# This gets autodetected fine for muled if --version-string is not set,
# but has different outcomes for mule-qt and mule-cli.
echo "[COPYRIGHT]" > footer.h2m
$MULED --version | sed -n '1!p' >> footer.h2m

for cmd in $MULED $MULECLI $MULETX $MULEQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${MLDCVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${MLDCVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
