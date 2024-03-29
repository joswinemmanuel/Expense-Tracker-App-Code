import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);

void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          foregroundColor: kDarkColorScheme.onPrimaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kDarkColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDarkColorScheme.primaryContainer,
            foregroundColor: kDarkColorScheme.onPrimaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                fontWeight: FontWeight.bold,
                color: kDarkColorScheme.onPrimaryContainer,
                fontSize: 19,
              ),
              bodyMedium: TextStyle(
                fontWeight: FontWeight.bold,
                color: kDarkColorScheme.onPrimaryContainer,
                fontSize: 15,
              ),
              bodySmall: TextStyle(
                fontWeight: FontWeight.w600,
                color: kDarkColorScheme.onPrimaryContainer,
                fontSize: 13,
              ),
            ),
        iconTheme: IconThemeData(
          color: kDarkColorScheme.onPrimaryContainer,
        ),
      ),

      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                fontWeight: FontWeight.bold,
                color: kColorScheme.primary,
                fontSize: 19,
              ),
              bodyMedium: TextStyle(
                fontWeight: FontWeight.bold,
                color: kColorScheme.primary,
                fontSize: 15,
              ),
              bodySmall: TextStyle(
                fontWeight: FontWeight.w600,
                color: kColorScheme.primary,
                fontSize: 13,
              ),
            ),
        iconTheme: IconThemeData(
          color: kColorScheme.primary,
        ),
      ),
      // themeMode: ThemeMode.system, // done by defalut
      home: const Expenses(),
    ),
  );
}
