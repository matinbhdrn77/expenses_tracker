import 'package:flutter/material.dart';

class NewExpense extends StatelessWidget {
  const NewExpense({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(children: const [
        TextField(
          maxLength: 50,
          decoration: InputDecoration(
            label: Text('Title'),
          ),
        )
      ]),
    );
  }
}
