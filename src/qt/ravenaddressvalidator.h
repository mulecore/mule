// Copyright (c) 2011-2014 The Bitcoin Core developers
// Copyright (c) 2017-2019 The Mule Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef MULE_QT_MULEADDRESSVALIDATOR_H
#define MULE_QT_MULEADDRESSVALIDATOR_H

#include <QValidator>

/** Base58 entry widget validator, checks for valid characters and
 * removes some whitespace.
 */
class MuleAddressEntryValidator : public QValidator
{
    Q_OBJECT

public:
    explicit MuleAddressEntryValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

/** Mule address widget validator, checks for a valid mule address.
 */
class MuleAddressCheckValidator : public QValidator
{
    Q_OBJECT

public:
    explicit MuleAddressCheckValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

#endif // MULE_QT_MULEADDRESSVALIDATOR_H
