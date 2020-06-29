import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfinance/components/transaction_item.dart';
import 'notfound.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final void Function(String) onRemove;

  TransactionList(this.transactions, this.onRemove);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      child: transactions.isEmpty
          ? NotFound("Nenhuma transação encontrada")
          : ListView.builder(
              itemCount: transactions.length,
              itemBuilder: (ctx, index) {
                final tr = transactions[index];
                return TransactionItem(tr: tr, onRemove: onRemove);
              },
            ),
    );
  }
}