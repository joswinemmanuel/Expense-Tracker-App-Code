import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expenses_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
    required this.onRemoveExpense,
  });

  final List<Expense> expenses;

  final Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    final isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;

    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => Dismissible(
        key: ValueKey(expenses[index]),
        background: Container(
          // color: Theme.of(context).colorScheme.error.withOpacity(0.5),
          color: isDarkMode
              ? Theme.of(context).colorScheme.onPrimaryContainer.withOpacity(0.7)
              : Theme.of(context).colorScheme.primary.withOpacity(0.7),
          // margin: EdgeInsets.symmetric(
          //   horizontal: Theme.of(context).cardTheme.margin!.horizontal,
          // ),
          margin: const EdgeInsets.symmetric(horizontal: 17, vertical: 8),
        ),
        onDismissed: (direction) {
          onRemoveExpense(expenses[index]);
        },
        child: ExpenseItem(
          expenses[index],
        ),
      ),
    );
  }
}
