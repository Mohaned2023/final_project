
import 'dart:async';
import 'package:final_project/screens/startup.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
    const SplashScreen({super.key});

    @override
    State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

    @override
    void initState() {
        super.initState();

        Timer(const Duration(seconds: 3), () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => StartUp()),
        );
        });
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
        body: Center(
            child: Lottie.asset(
            'assets/Loading.json',
            width: 200,
            height: 200,
            repeat: true,
            ),
        ),
        );
    }
}
