import 'package:expense_tracker/expense_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/new_expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget{
  const Expenses({super.key});
  
  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses>{
  void _openAddExpenseOverlay(){
      showModalBottomSheet(
        context: context, 
        builder: (ctx) => NewExpense());
    }
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Cheese Burger',
      amount: 10.99,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: 'Fries',
      amount: 6.69,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: 'Movie Ticket',
      amount: 12.99,
      date: DateTime.now(),
      category: Category.leisure,
    )
  ];
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      appBar: AppBar(
        actions: [
          IconButton(icon: Icon(Icons.add), onPressed: _openAddExpenseOverlay)
        ],
        title: const Text('Expense Tracker'),
      ),

      body: Column(
        children: [
          const Text("Chart"),
          Expanded(child: ExpensesList(expenses: _registeredExpenses))
        ],
      ),
    );
  }
}

