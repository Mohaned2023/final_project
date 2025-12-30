

import 'package:final_project/custom_colors.dart';
import 'package:flutter/material.dart';

class GenerateOtherAuthOpctions extends StatelessWidget {
    const GenerateOtherAuthOpctions({super.key});
    
    @override
    Widget build(BuildContext context) {
        return Column(
            spacing: 20,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Expanded(
                            child: Divider(
                                color: AppColors.mainButton,
                                thickness: 1,
                            )
                        ),
                        Padding(
                            padding: const EdgeInsets.only(right: 16, left: 16),
                            child: Text("OR")
                        ),
                        Expanded(
                            child: Divider(
                                color: AppColors.mainButton,
                                thickness: 1,
                            )
                        ),
                    ],
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 20,
                    children: [
                        Image.asset(
                            "assets/images/google.png",
                            width: 40,
                            height: 40,
                        ),
                        Image.asset(
                            "assets/images/x.png",
                            width: 40,
                            height: 40,
                        ),
                        Image.asset(
                            "assets/images/microsoft.png",
                            width: 40,
                            height: 40,
                        ),
                        Image.asset(
                            "assets/images/apple.png",
                            width: 40,
                            height: 40,
                        ),
                    ],
                )
            ],
        );
    }
}
