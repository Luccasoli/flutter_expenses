import 'package:expenses/models/Transaction.dart';
import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(
    ExpensesApp(),
  );
}

class ExpensesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final List<Transaction> _transactions = [
    Transaction(
      id: '1',
      title: 'Novo tênis de corrida',
      value: 310.30,
      date: DateTime.now(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Card(
            child: Text('Gráfico'),
          ),
          Column(
            children: _transactions
                .map(
                  (e) => Card(
                    child: Text(
                      e.title,
                    ),
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
