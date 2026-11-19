import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  var _titleController = TextEditingController();
  var _amountController = TextEditingController();
    var enteredTitle = '';
  void _saveTitleInput(String inputValue) {
    enteredTitle = inputValue;
    print(enteredTitle);
  }

@override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsetsGeometry.all(16),
    child: Column(
      children: [
        TextField(
          controller: _titleController, 
          maxLength: 50,
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            label: Text("Title"),
            )
          ),
          
        TextField(
          controller: _amountController,
          keyboardType: TextInputType.numberWithOptions(decimal: true),
          decoration: InputDecoration(
            prefixText: "\$",
            label: Text("Amount"),
            )
          ),

          Row(children: [
            ElevatedButton(onPressed: (){
              print(_titleController.text);
              print(_amountController.text);
            }, child: Text("Save Expense"))
          ])
        ],
      )
    );
  }
}