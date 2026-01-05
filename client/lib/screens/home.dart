import 'package:final_project/custom_colors.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
    const Home({super.key});

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            floatingActionButton: IconButton(
                onPressed: () {
                    Navigator.pushNamed(context, "/password");
                },
                icon: Icon(
                    Icons.add_circle_outline,
                    size: 40,
                    color: AppColors.mainButton
                )
            ),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        SizedBox(
                            height: 50,
                        ),
                        Padding(
                            padding: EdgeInsets.only( right: 20, bottom: 40, left: 20),
                            child: TextField(
                                decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColors.mainButton
                                        ),
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    labelText: "Search",
                                    labelStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                    ),
                                    floatingLabelStyle: TextStyle(
                                        color: AppColors.mainButton
                                    ),
                                    prefixIcon: Icon(Icons.search)
                                ),
                            )
                        ),
                        Expanded(
                            child: Container(
                                decoration: BoxDecoration(
                                    color: AppColors.background,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(30),
                                        topLeft: Radius.circular(30),
                                    )
                                ),
                                padding: EdgeInsets.all(30),
                                width: double.infinity,
                                child: ListView(
                                    children: [
                                        SizedBox(
                                            width: double.infinity,
                                            child: Text(
                                                "Your Passwords",
                                                style: TextStyle(
                                                    color: AppColors.mainText,
                                                    fontWeight: FontWeight.w900
                                                ),
                                            )
                                        ),
                                        SizedBox(height: 20),
                                        ListView(
                                            shrinkWrap: true,
                                            children: [
                                                for(int i=0; i<100; i++) ...[
                                                    GeneratePasswordItem(
                                                        name: "THE NAME",
                                                        link: "THE LINK",
                                                    ),
                                                    SizedBox(height: 10,)
                                                ]
                                            ],
                                        )
                                    ],
                                ),
                            )
                        )
                    ],
                ),
            ),
        );
    }
}

class GeneratePasswordItem extends StatelessWidget {
    final String name;
    final String link;
    const GeneratePasswordItem({
        required this.name,
        required this.link,
        super.key,
    });

    @override
    Widget build(BuildContext context) {
        return SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    backgroundColor: AppColors.background,
                    side: BorderSide(
                        color: Colors.black,
                        width: 1
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    )
                ),
                child: Text(
                    "$name - $link",
                    style: TextStyle(
                        color: Colors.black
                    ),
                ),
            ),
        );
    }
}
