import 'package:flutter/material.dart';
import 'package:task/view/home_page.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  _VerificationPageState createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xffE6F6F6),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
              child: Image.asset(
                'asset/image_ver.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            'Verification Code',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xff8C8A8C),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Please enter verification code sent to\nEmail address .....@Gmail.com',
            textAlign: TextAlign.center, // تعديل لعرض النص في المنتصف
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 5),
          Text(
            'Valid to 10 minutes',
            textAlign: TextAlign.center, // تعديل لعرض النص في المنتصف
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {},
            child: const Text(
              'Re send code',
              style: TextStyle(
                fontSize: 16,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildCodeBox(),
              _buildCodeBox(),
              _buildCodeBox(),
              _buildCodeBox(),
              _buildCodeBox(),
              _buildCodeBox(),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            'Verification code consists of\nnumbers and letters',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple[100],
              padding: const EdgeInsets.symmetric(
                horizontal: 50,
                vertical: 15,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              'Submit',
              style: TextStyle(
                color: Colors.purple,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCodeBox() {
    return Container(
      width: 40,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: Center(
        child: Text(
          '*',
          style: TextStyle(
            fontSize: 24,
            color: Colors.grey[700],
          ),
        ),
      ),
    );
  }
}
