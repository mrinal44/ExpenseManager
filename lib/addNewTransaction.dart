import 'package:flutter/material.dart';
import './transaction.dart';

class AddNewTransaction extends StatelessWidget {
  List<Transaction> transactionList = [
    Transaction(amount: 500, title: "Flight", dateTime: DateTime.now()),
    Transaction(amount: 200, title: "Food", dateTime: DateTime.now()),
    Transaction(amount: 300, title: "Uber", dateTime: DateTime.now()),
  ];
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addit;
  VoidCallback chooseDate;
  AddNewTransaction(this.addit, this.chooseDate);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextField(
          decoration: InputDecoration(labelText: 'Title'),
          controller: titleController,
        ),
        TextField(
          decoration: InputDecoration(labelText: 'Amount'),
          controller: amountController,
          keyboardType: TextInputType.number,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("No Date Chosen"),
            ElevatedButton(
                onPressed: () {
                  chooseDate();
                },
                child: Text("Add Date")),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => addit(
                    titleController.text, double.parse(amountController.text)),
                child: Text("Add Transaction")),
          ],
        ),
      ],
    );
  }
}
