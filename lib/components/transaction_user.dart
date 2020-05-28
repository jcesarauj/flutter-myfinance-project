import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:myfinance/models/transaction.dart';
import 'transaction_list.dart';
import 'transaction_form.dart';

class TransationUser extends StatefulWidget {
  @override
  _TransationUserState createState() => _TransationUserState();
}

class _TransationUserState extends State<TransationUser> {
  final _transactions = [
    Transaction(
      id: '1',
      title: 'Tenis',
      value: 200.10,
      date: new DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: 'Conta luz',
      value: 100.05,
      date: new DateTime.now(),
    )
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
        id: Random().nextDouble().toString(),
        title: title,
        value: value,
        date: new DateTime.now());

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionList(_transactions),
        TransactionForm(_addTransaction),
      ],
    );
  }
}
