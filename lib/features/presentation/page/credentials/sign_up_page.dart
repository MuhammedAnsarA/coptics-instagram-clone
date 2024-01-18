import 'package:coptics/core/constants/consts.dart';
import 'package:coptics/features/presentation/widgets/button_container_widget.dart';
import 'package:coptics/features/presentation/widgets/form_container_widget.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _bioController = TextEditingController();

  bool _isSigningUp = false;

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _bioController.dispose();
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
              height: MediaQuery.sizeOf(context).height * 0.09,
            ),
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: greyColor,
                    ),
                    // child: ClipRRect(
                    //   borderRadius: BorderRadius.circular(50),
                    //   child: profileWidget(image: ),
                    // ),
                  ),
                  Positioned(
                    right: -5,
                    bottom: -10,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add_a_photo,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            sizeVer(17),
            FormContainerWidget(
              hintText: "Username",
              controller: _usernameController,
              textInputAction: TextInputAction.next,
            ),
            sizeVer(12),
            FormContainerWidget(
              hintText: "Email",
              textInputAction: TextInputAction.next,
              controller: _emailController,
            ),
            sizeVer(12),
            FormContainerWidget(
              hintText: "Password",
              textInputAction: TextInputAction.next,
              isPasswordField: true,
              controller: _passwordController,
            ),
            sizeVer(12),
            FormContainerWidget(
              hintText: "Bio",
              controller: _bioController,
            ),
            sizeVer(17),
            ButtonContainerWidget(
              color: backGroundColor,
              text: "Sign Up",
              onTapListener: () {},
            ),
            sizeVer(20),
            _isSigningUp == true
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
              height: MediaQuery.sizeOf(context).height * 0.162,
            ),
            const Divider(
              color: greyColor,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account? ",
                  style: TextStyle(
                    color: backGroundColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, PageConst.signInPage, (route) => false);
                  },
                  child: const Text(
                    "Sign In",
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
    ));
  }
}
