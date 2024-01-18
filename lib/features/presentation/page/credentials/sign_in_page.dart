import 'package:coptics/core/constants/consts.dart';
import 'package:coptics/features/presentation/widgets/button_container_widget.dart';
import 'package:coptics/features/presentation/widgets/form_container_widget.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool _isSigningIn = false;
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.22,
              ),
              const Text(
                "MAGNET STORY",
                style: TextStyle(
                  color: secondaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  fontFamily: "AGBALUMO",
                ),
              ),
              const Text(
                '"Discover worlds within read and write your story"',
                style: TextStyle(
                  color: secondaryColor,
                  fontFamily: "AGBALUMO",
                  fontSize: 13,
                ),
              ),
              sizeVer(50),
              FormContainerWidget(
                hintText: "Email",
                textInputAction: TextInputAction.next,
                controller: _emailController,
              ),
              sizeVer(12),
              FormContainerWidget(
                hintText: "Password",
                isPasswordField: true,
                controller: _passwordController,
              ),
              sizeVer(17),
              ButtonContainerWidget(
                color: backGroundColor,
                text: "Sign In",
                onTapListener: () {},
              ),
              sizeVer(20),
              _isSigningIn == true
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Please wait",
                          style: TextStyle(
                            color: secondaryColor,
                            fontWeight: FontWeight.bold,
                            fontFamily: "LATO",
                            fontSize: 16,
                          ),
                        ),
                        sizeHor(10),
                        const CircularProgressIndicator(),
                      ],
                    )
                  : const SizedBox(
                      width: 0,
                      height: 0,
                    ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.236,
              ),
              const Divider(
                color: greyColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account? ",
                    style: TextStyle(
                      color: backGroundColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, PageConst.signUpPage, (route) => false);
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        color: backGroundColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.5,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
