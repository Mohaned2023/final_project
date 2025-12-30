import 'package:final_project/custom_colors.dart';
import 'package:final_project/generators/section_title.dart';
import 'package:flutter/material.dart';

class StartUp extends StatelessWidget {
    const StartUp({super.key});

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: AppColors.background,
            body: Center(
                child: GenerateSectionTitle(
                    imagePath: "assets/images/logo.png",
                    mainTitle: "XPManager",
                    subTitle: "Your trusted password manager."
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
