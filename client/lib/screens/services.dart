import 'package:final_project/custom_colors.dart';
import 'package:final_project/generators/section_title.dart';
import 'package:flutter/material.dart';

class Services extends StatelessWidget {
    const Services({super.key});

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Center(
                child: Column(
                    children: [
                        SizedBox(
                            height: 30,
                        ),
                        GenerateSectionTitle(
                            imagePath: "assets/images/logo.png",
                            mainTitle: "Find Your Service",
                            subTitle:  "The easiest password manager."
                        ),
                        Expanded(
                            child: GridView.count(
                                padding: EdgeInsets.only( left: 20, right: 20 ),
                                shrinkWrap: true,
                                crossAxisCount: 3,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                                children: [
                                    for(int i=0; i<100; i++)
                                        GenereateServiceCard(
                                            icon: Icons.password,
                                            title: "Password Generator"
                                        )
                                ],
                            )
                        )
                    ],
                ),
            ),
        );
    }
}

class GenereateServiceCard extends StatelessWidget {
    final IconData icon;
    final String title;

    const GenereateServiceCard({
        required this.icon,
        required this.title,
        super.key
    });

    @override
    Widget build(BuildContext context) {
        return SizedBox(
            width: 130,
            height: 130,
            child: ElevatedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    side: BorderSide(
                        color: Colors.black,
                        width: 1
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    )
                ),
                child: Center(
                    child: Column(
                        spacing: 10,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            Icon(
                                icon,
                                size: 40,
                                color: AppColors.mainText,
                            ),
                            Text(
                                title,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 10
                                ),
                            )
                        ],
                    )
                )
            ),
        );
    }
}
