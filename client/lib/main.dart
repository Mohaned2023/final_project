import 'package:final_project/screens/login.dart';
// import 'package:final_project/screens/startup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FinalProject());
}

class FinalProject extends StatelessWidget {
    const FinalProject({super.key});

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Flutter Final Project',
            home: Login()
        );
    }
}


