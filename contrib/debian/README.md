
Debian
====================
This directory contains files used to package muled/mule-qt
for Debian-based Linux systems. If you compile muled/mule-qt yourself, there are some useful files here.

## mule: URI support ##


mule-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install mule-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your mule-qt binary to `/usr/bin`
and the `../../share/pixmaps/mule128.png` to `/usr/share/pixmaps`

mule-qt.protocol (KDE)

