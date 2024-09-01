import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task/responsive/responsive.dart';
import 'package:task/view/home_page.dart';
import 'package:task/view/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String emailError = '';
  String phoneError = '';
  String passwordError = '';

  void validateAndLogin() {
    setState(() {
      emailError = '';
      phoneError = '';
      passwordError = '';

      if (emailController.text.isEmpty) {
        emailError = 'This field is required';
      }
      if (phoneController.text.isEmpty) {
        phoneError = 'This field is required';
      }
      if (passwordController.text.isEmpty) {
        passwordError = 'This field is required';
      }

      if (emailError.isEmpty && phoneError.isEmpty && passwordError.isEmpty) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive(context);

    return Scaffold(
      backgroundColor: const Color(0xffE6F6F6),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: responsive.getHeightPercentage(20),
              width: responsive.getWidthPercentage(30),
              decoration: const BoxDecoration(
                color: Color(0xffF3E4F9),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(200),
                ),
              ),
            ),
          ),
          Positioned(
            top: -50,
            right: -1,
            child: Image.asset('asset/image_top.png',
                height: responsive.getHeightPercentage(30),
                width: responsive.getWidthPercentage(50)),
          ),
          Positioned(
            left: responsive.getWidthPercentage(20),
            top: responsive.getHeightPercentage(20),
            child: const Text(
              'Logo',
              style: TextStyle(
                fontSize: 64,
                fontWeight: FontWeight.w800,
                color: Color(0xff3C2367),
              ),
            ),
          ),
          Positioned(
            left: responsive.getWidthPercentage(20),
            top: responsive.getHeightPercentage(35),
            child: SizedBox(
              width: responsive.getWidthPercentage(70),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  if (emailError.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        emailError,
                        style: const TextStyle(color: Colors.red, fontSize: 12),
                      ),
                    ),
                ],
              ),
            ),
          ),
          Positioned(
            left: responsive.getWidthPercentage(20),
            top: responsive.getHeightPercentage(45),
            child: SizedBox(
              width: responsive.getWidthPercentage(70),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    controller: phoneController,
                    decoration: InputDecoration(
                      hintText: 'Phone Number',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  if (phoneError.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        phoneError,
                        style: const TextStyle(color: Colors.red, fontSize: 12),
                      ),
                    ),
                ],
              ),
            ),
          ),
          Positioned(
            left: responsive.getWidthPercentage(20),
            top: responsive.getHeightPercentage(55),
            child: SizedBox(
              width: responsive.getWidthPercentage(70),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  if (passwordError.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        passwordError,
                        style: const TextStyle(color: Colors.red, fontSize: 12),
                      ),
                    ),
                ],
              ),
            ),
          ),
          Positioned(
            left: responsive.getWidthPercentage(27),
            top: responsive.getHeightPercentage(64),
            child: const Text(
              'Should be none less than 8 characters',
              style: TextStyle(
                color: Color(0xff8C8A8C),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Positioned(
            left: responsive.getWidthPercentage(40),
            top: responsive.getHeightPercentage(67),
            child: const Text(
              'Forget password?',
              style: TextStyle(
                color: Colors.red,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Positioned(
            left: responsive.getWidthPercentage(35),
            top: responsive.getHeightPercentage(75),
            child: Column(
              children: [
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: Color(0xff3C2367),
                        ),
                        children: [
                          const TextSpan(
                            text: "Don't have an account? ",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              color: Color(0xff8C8A8C),
                            ),
                          ),
                          TextSpan(
                            text: "Sign Up",
                            style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Color(0xff3C2367),
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SignupPage(),
                                  ),
                                );
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Divider(
                  height: 20,
                  color: Color(0xff3C2367),
                ),
              ],
            ),
          ),
          Positioned(
            top: responsive.getHeightPercentage(80),
            left: responsive.getWidthPercentage(34),
            child: GestureDetector(
              onTap: validateAndLogin,
              child: Container(
                height: 60,
                width: 195,
                decoration: BoxDecoration(
                  color: const Color(0xff3C2367),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: InkWell(
              child: Container(
                height: responsive.getHeightPercentage(15),
                width: responsive.getWidthPercentage(30),
                decoration: const BoxDecoration(
                  color: Color(0xffF3E4F9),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(200),
                  ),
                ),
              ),
              onLongPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
            ),
          ),
          Positioned(
            left: -1,
            bottom: -1,
            child: Image.asset('asset/image_bottom.png',
                height: responsive.getHeightPercentage(15),
                width: responsive.getWidthPercentage(30)),
          ),
        ],
      ),
    );
  }
}
