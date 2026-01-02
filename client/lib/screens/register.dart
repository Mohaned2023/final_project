import 'package:final_project/custom_colors.dart';
import 'package:final_project/generators/other_auth.dart';
import 'package:final_project/generators/section_title.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
    const Register({super.key});

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
                                mainTitle: "Welcome!",
                                subTitle: "Let's secure your digital world together.",
                            ),
                            RegisterForm(),
                            GenerateOtherAuthOpctions()
                        ],
                    ),
                )
            )
        );
    }
}


class RegisterForm extends StatefulWidget {
    const RegisterForm({super.key});

    @override
    State<RegisterForm> createState() => _RegisterForm();
}

class _RegisterForm extends State<RegisterForm> {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    bool isVisibil = false;
    String? _emailErrorMagssage;
    String? _passwordErrorMagssage;
    String? _passwordConfErrorMagssage;
    String? _passwoord;


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

    String? _validatePasswordConf(String? value) {
        if (value == null || value != _passwoord) {
            return "Confirmation most match the password.";
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
                                _passwoord = value;
                                _passwordErrorMagssage = _validatePassword(value);
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
                            labelText: "Password Confirmation",
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                            floatingLabelStyle: TextStyle(
                                color: _passwordConfErrorMagssage == null
                                    ? AppColors.mainButton
                                    : AppColors.error
                            ),
                            errorText: _passwordConfErrorMagssage
                        ),
                        validator: _validatePasswordConf,
                        onChanged: (value) {
                            setState(() {
                                _passwordConfErrorMagssage = _validatePasswordConf(value);
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
                                "Register",
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
                            Text("You have an account?"),
                            TextButton(
                                // TODO: Change it to register.
                                onPressed: () {
                                    Navigator.pushReplacementNamed(context, "/login");
                                },
                                child: Text("Login",
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
