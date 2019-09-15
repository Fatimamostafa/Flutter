import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  final Function addTx;

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              /* onChanged: (val) {
                      titleInput = val;
                    },*/
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              /* onChanged: (val) => amountInput = val,*/
            ),
            FlatButton(
              color: Colors.yellow,
              child: Text(
                'Add Transaction',
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                addTx(titleController.text, double.parse(amountController.text));
              },
            )
          ],
        ),
      ),
    );
  }

}