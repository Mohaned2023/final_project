import 'package:final_project/custom_colors.dart';
import 'package:final_project/generators/section_title.dart';
import 'package:flutter/material.dart';

class Password extends StatelessWidget {
    const Password({super.key});

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        SizedBox(
                            height: 50,
                        ),
                        GenerateSectionTitle(
                            imagePath: "assets/images/logo.png",
                            mainTitle: "Password Settings",
                            subTitle: "Your accounts in a safe place."
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
                                child: Column(
                                    spacing: 20,
                                    children: [
                                        SizedBox(
                                            width: double.infinity,
                                            child: Row(
                                                spacing: 15,
                                                children: [
                                                    Text(
                                                        "Password Name",
                                                        style: TextStyle(
                                                            color: AppColors.mainText,
                                                            fontWeight: FontWeight.w900
                                                        ),
                                                    ),
                                                    Text("2025/05/12 12:54PM"),
                                                ],
                                            ),
                                        ),
                                        Expanded(
                                            child: PasswordForm(),
                                        )
                                    ],
                                ),
                            )
                        )
                    ],
                ),
            )
        );
    }
}

class PasswordForm extends StatefulWidget {
    const PasswordForm({super.key});

    @override
    State<PasswordForm> createState() => _PasswordForm();
}

class _PasswordForm extends State<PasswordForm> {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    @override
    Widget build(BuildContext context) {
        return Form(
            key: formKey,
            child: ListView(
                children: [
                    TextFormField(
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
                            labelText: "Link",
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                            ),
                            floatingLabelStyle: TextStyle(
                                color: AppColors.mainButton
                            ),
                            prefixIcon: Icon(Icons.link)
                        ),
                        validator: (value) {
                            if (value == null || !RegExp(r'^(https?:\/\/)?([a-zA-Z0-9-]+\.)+[a-zA-Z0-9-]+\.[a-zA-Z]{2,}$').hasMatch(value)) {
                                return "You must enter a valid link";
                            }
                            return null;
                        },
                    ),
                    SizedBox(
                        height: 30,
                    ),
                    TextFormField(
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
                            labelText: "Name",
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                            ),
                            floatingLabelStyle: TextStyle(
                                color: AppColors.mainButton
                            )
                        ),
                        validator: (value) {
                            if (value == null || value.isEmpty || value.length > 100) {
                                return "Name must be between 1 to 100 character logn.";
                            }
                            return null;
                        },
                    ),
                    SizedBox(
                        height: 30,
                    ),
                    TextFormField(
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
                            labelText: "Password",
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                            ),
                            floatingLabelStyle: TextStyle(
                                color: AppColors.mainButton
                            )
                        ),
                        validator: (value) {
                            if (value == null || value.isEmpty || value.length > 100) {
                                return "Name must be between 1 to 100 character logn.";
                            }
                            return null;
                        },
                    ),
                    SizedBox(
                        height: 30,
                    ),
                    Row(
                        spacing: 10,
                        children: [
                            Expanded(
                                child: ElevatedButton(
                                    // TODO: Update for create and update.
                                    onPressed: () {
                                        formKey.currentState!.validate();
                                    },
                                    style: OutlinedButton.styleFrom(
                                        backgroundColor: AppColors.mainButton,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(15)
                                        )
                                    ),
                                    child: Text(
                                        "Save",
                                        style: TextStyle(
                                            color: AppColors.secondaryText,
                                            fontSize: 20
                                        ),
                                    )
                                )
                            ),
                            IconButton(
                                onPressed: () {}, // TODO: Update for genereate.
                                icon: Icon(Icons.replay)
                            ),
                            IconButton(
                                onPressed: () {}, // TODO: Update for copy.
                                icon: Icon(Icons.copy)
                            ),
                            IconButton(
                                onPressed: () {}, // TODO: Update for delete.
                                icon: Icon(
                                    Icons.delete,
                                    color: AppColors.error,
                                )
                            )
                        ],
                    )
                ],
            )
        );
    }
}
