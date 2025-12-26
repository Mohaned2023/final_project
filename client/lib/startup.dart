import 'package:final_project/custom_colors.dart';
import 'package:flutter/material.dart';

class StartUp extends StatelessWidget {
    const StartUp({super.key});

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: AppColors.background,
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        ClipRRect(
                            borderRadius: BorderRadiusDirectional.circular(10),
                            child: Image.asset(
                                "assets/images/logo.png",
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                            ),
                        ),
                        SizedBox(
                            height: 15,
                        ),
                        Text(
                            "XPManager",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w900,
                                color: AppColors.mainText
                            ),
                        ),
                        Text(
                            "Your trusted password manager.",
                            style: TextStyle(
                                fontSize: 16
                            ),
                        ),
                    ],
                ),
            ),
            bottomNavigationBar: BottomAppBar(
            color: AppColors.background,
                height: 100,
                child: Center(
                    child: SizedBox(
                        width: 400,
                        height: 45,
                        child: ElevatedButton(
                            // TODO: Change it to login.
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                                backgroundColor: AppColors.mainButton,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                )
                            ),
                            child: Text(
                                "start",
                                style: TextStyle(
                                    color: AppColors.secondaryText,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                            ),
                        )
                    )
                ),
            ),
        );
    }
}
