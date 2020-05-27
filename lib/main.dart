import 'package:flutter/material.dart';
import './models/transaction.dart';

main() => runApp(MyFinanceApp());

class MyFinanceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomeApp());
  }
}

class MyHomeApp extends StatelessWidget {
  final _transactions = [
    Transaction(
      id: '1',
      title: 'Tenis',
      value: 200.00,
      date: new DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: 'Conta luz',
      value: 100.00,
      date: new DateTime.now(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Despesas pessoais")),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                child: Text("Gráfico"),
                elevation: 5,
              ),
            ),
            Column(
              children: _transactions
                  .map((e) => Card(
                        child: Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.purple, width: 2)),
                              padding: EdgeInsets.all(10),
                              child: Text(
                                e.value.toString(),
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.deepPurple),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  e.title,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(e.date.toString(),
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ))
                              ],
                            )
                          ],
                        ),
                      ))
                  .toList(),
            ),
          ]),
    );
  }
}
