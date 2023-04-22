import 'package:flutter/material.dart';

import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Fluuter Course',
        amount: 20.25,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: 'Some Bitches',
        amount: 55.65,
        date: DateTime.now(),
        category: Category.leisure),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const Text('The Chart'),
        Expanded(child: ExpenseList(expenses: _registeredExpenses)),
      ]),
    );
  }
}