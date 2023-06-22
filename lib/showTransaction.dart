import 'dart:ui';

import 'package:flutter/material.dart';
import './transaction.dart';
import 'package:intl/intl.dart';

class ShowTransactions extends StatelessWidget {
  final List<Transaction> transactionList;
  ShowTransactions(this.transactionList);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 200,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.purple,
                    width: 2,
                  )),
                  padding: EdgeInsets.all(10),
                  child: Text('\$${transactionList[index].amount}',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                Column(
                  children: [
                    Text(
                      '${transactionList[index].title}',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(DateFormat.yMMMd()
                        .format(transactionList[index].dateTime)),
                  ],
                ),
              ],
            ),
          );
        },
        itemCount: transactionList.length,
      ),
    );
  }
}
