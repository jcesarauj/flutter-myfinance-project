import 'package:flutter/material.dart';
import './components/transaction_user.dart';

main() => runApp(MyFinanceApp());

class MyFinanceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomeApp());
  }
}

class MyHomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Despesas pessoais")),
      body: SingleChildScrollView(
        child: Column(
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
              TransationUser()
            ]),
      ),
    );
  }
}
