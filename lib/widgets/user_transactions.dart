import 'package:flutter/material.dart';
import './new_transactions.dart';
import './transactions_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: 't1', amount: 2500, title: 'New Shoes', date: DateTime.now()),
    Transaction(
        id: 't2', amount: 65000, title: 'New iPhone', date: DateTime.now())
  ];

  void _addNewTransactions(String txtitle, double txamount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: txtitle,
        amount: txamount,
        date: DateTime.now());

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransactions),
        TransactionList(_userTransactions)
      ],
    );
  }
}
