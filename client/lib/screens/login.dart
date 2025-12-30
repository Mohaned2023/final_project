import 'package:final_project/custom_colors.dart';
import 'package:final_project/generators/other_auth.dart';
import 'package:final_project/generators/section_title.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
    const Login({super.key});

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: AppColors.background,
            body: Container(
                padding: EdgeInsets.all(30),
                child: Center(
                    child: ListView(
                        shrinkWrap: true,
                        children: [
                            GenerateSectionTitle(
                                imagePath: "assets/images/logo.png",
                                mainTitle: "Welcome Back",
                                subTitle: "Your digital life is safe with us.",
                            ),
                            LoginForm(),
                            GenerateOtherAuthOpctions()
                        ],
                    ),
                )
            )
        );
    }
}


class LoginForm extends StatefulWidget {
    const LoginForm({super.key});

    @override
    State<LoginForm> createState() => _LoginForm();
}

class _LoginForm extends State<LoginForm> {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    bool isVisibil = false;
    String? _emailErrorMagssage;
    String? _passwordErrorMagssage;


    String? _validateEmail(String? value) {
        if (value == null || value.isEmpty) {
            return "Please enter an email";
        } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
            return "Please enter a valid email";
        }
        return null;
    }

    String? _validatePassword(String? value) {
        if (value == null || value.isEmpty) {
            return "Please enter an password";
        } else if (!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$').hasMatch(value)) {
            return "Please password with uppercase, lowercase and number.";
        }
        return null;
    }

    @override
    Widget build(BuildContext context) {
        return Form(
            key: formKey,
            child: Column(
                spacing: 20,
                children: [
                    TextFormField(
                        keyboardType: TextInputType.emailAddress,
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
                            hintText: "example@gmail.com",
                            labelText: "Email",
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                            floatingLabelStyle: TextStyle(
                                color: _emailErrorMagssage == null
                                    ? AppColors.mainButton
                                    : AppColors.error
                            ),
                            errorText: _emailErrorMagssage,
                        ),
                        validator: _validateEmail,
                        onChanged: (value) {
                            setState(() {
                                _emailErrorMagssage = _validateEmail(value);
                            });
                        },
                    ),
                    TextFormField(
                        obscureText: !isVisibil,
                        keyboardType: TextInputType.emailAddress,
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
                                fontWeight: FontWeight.bold
                            ),
                            floatingLabelStyle: TextStyle(
                                color: _passwordErrorMagssage == null
                                    ? AppColors.mainButton
                                    : AppColors.error
                            ),
                            suffixIcon: IconButton(
                                onPressed: () {
                                    setState(() {
                                        isVisibil = !isVisibil;
                                    });
                                },
                                icon: Icon(
                                    isVisibil
                                        ? Icons.visibility
                                        : Icons.visibility_off
                                )
                            ),
                            errorText: _passwordErrorMagssage
                        ),
                        validator: _validatePassword,
                        onChanged: (value) {
                            setState(() {
                                _passwordErrorMagssage = _validatePassword(value);
                            });
                        },
                    ),
                    SizedBox(
                        width: double.infinity,
                        height: 45,
                        child: ElevatedButton(
                            // TODO: Change it to login.
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
                                "Login",
                                style: TextStyle(
                                    color: AppColors.secondaryText,
                                    fontSize: 20
                                ),
                            ),
                        )
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            Text("Don't have an account?"),
                            TextButton(
                                // TODO: Change it to register.
                                onPressed: () {},
                                child: Text("Register",
                                    style: TextStyle(
                                        color: AppColors.mainButton
                                    ),
                                )
                            )
                        ],
                    )
                ],
            )
        );
    }
}
