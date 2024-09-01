import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task/view/signup_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE6F6F6),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 150,
              width: 175,
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
            child: Image.asset('asset/image_top.png'),
          ),
          const Positioned(
            left: 80,
            top: 120,
            child: Text(
              'Logo',
              style: TextStyle(
                fontSize: 64,
                fontWeight: FontWeight.w800,
                color: Color(0xff3C2367),
              ),
            ),
          ),
          Positioned(
            left: 80,
            top: 250,
            child: SizedBox(
              width: 300,
              child: TextField(
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
            ),
          ),
          Positioned(
            left: 80,
            top: 310,
            child: SizedBox(
              width: 300,
              child: TextField(
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
            ),
          ),
          Positioned(
            left: 80,
            top: 370,
            child: SizedBox(
              width: 300,
              child: TextField(
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
            ),
          ),
          const Positioned(
            left: 105,
            top: 425,
            child: Text(
              'Should be none less than 8 characters',
              style: TextStyle(
                color: Color(0xff8C8A8C),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const Positioned(
            left: 170,
            top: 445,
            child: Text(
              'Forget password?',
              style: TextStyle(
                color: Colors.red,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Positioned(
            left: 150,
            top: 500,
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
            top: 540,
            left: 152,
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
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 125,
              width: 150,
              decoration: const BoxDecoration(
                color: Color(0xffF3E4F9),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(200),
                ),
              ),
            ),
          ),
          Positioned(
            left: -1,
            bottom: -1,
            child: Image.asset('asset/image_bottom.png'),
          ),
        ],
      ),
    );
  }
}
