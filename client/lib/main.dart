import 'package:flutter/material.dart';

void main() {
  runApp(const FinalProject());
}

class FinalProject extends StatelessWidget {
    const FinalProject({super.key});

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
            ),
            home: Scaffold(
                body: Center(
                    child: Text(
                        "Hello My Frind",
                        style: TextStyle(
                            fontWeight: FontWeight.w900
                        ),
                    ),
                ),
            ),
        );
    }
}


