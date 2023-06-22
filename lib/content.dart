import 'package:flutter/material.dart';
import 'addNewTransaction.dart';
import 'showTransaction.dart';
import './transaction.dart';

class Content extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<Content> {
  List<Transaction> transactionList = [
    Transaction(amount: 100, title: "Grocery", dateTime: DateTime.now()),
    Transaction(amount: 200, title: "Food", dateTime: DateTime.now()),
    Transaction(amount: 300, title: "Uber", dateTime: DateTime.now()),
  ];
  DateTime selectedDate = DateTime.parse('0000-00-00');
  void _addIt(String txTitle, double txAmount) {
    if (txTitle.isEmpty || txAmount <= 0) return;
    final newTx = Transaction(
      title: txTitle,
      amount: txAmount,
      dateTime: selectedDate,
    );
    setState(() {
      transactionList.add(newTx);
    });
  }

  void chooseDate() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2019),
            lastDate: DateTime.now())
        .then((value) {
      if (value == null) return;
      selectedDate = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AddNewTransaction(_addIt, chooseDate),
        ShowTransactions(transactionList),
      ],
    );
  }
}
