import 'dart:math';

import 'package:expenses/components/transaction_form.dart';
import 'package:expenses/components/transaction_list.dart';
import 'package:expenses/models/Transaction.dart';
import 'package:flutter/material.dart';

class TransactionUser extends StatefulWidget {
  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
      id: '1',
      title: 'Novo tênis de corrida dddd',
      value: 310.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: '26',
      title: 'Conta #06',
      value: 211,
      date: DateTime.now(),
    ),
    Transaction(
      id: '25',
      title: 'Conta #05',
      value: 211,
      date: DateTime.now(),
    ),
    Transaction(
      id: '24',
      title: 'Conta #04',
      value: 211,
      date: DateTime.now(),
    ),
    Transaction(
      id: '23',
      title: 'Conta #03',
      value: 211,
      date: DateTime.now(),
    ),
    Transaction(
      id: '22',
      title: 'Conta #02',
      value: 211,
      date: DateTime.now(),
    ),
    Transaction(
      id: '21',
      title: 'Conta #01',
      value: 211,
      date: DateTime.now(),
    ),
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          TransactionForm(_addTransaction),
          TransactionList(_transactions),
        ],
      ),
    );
  }
}
