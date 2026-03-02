import 'package:blog/pages/blog_homepage.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final emailController = TextEditingController();
  final passWordController = TextEditingController();
  bool _obscuretext = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 100, right: 250),
                child: RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                    text: "Welcome ",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text: "Back",
                        style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                textDirection: TextDirection.ltr,
                children: [
                  Text(
                    "   Lets continue your journey",
                    style: TextStyle(color: Colors.grey, fontSize: 25),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),

                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(221, 24, 24, 24),
                  ),
                  child: TextField(
                    style: TextStyle(color: Colors.white),

                    controller: emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        borderSide: BorderSide(color: Colors.white, width: 1.0),
                      ),

                      label: Text(
                        "Username",
                        style: TextStyle(color: Colors.grey, fontSize: 25),
                      ),
                      prefixIcon: Icon(Icons.email_outlined),
                      prefixIconColor: Colors.white,
                      hintText: "Enter Email",
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 0),

                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(221, 20, 20, 20),
                  ),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    obscureText: _obscuretext,
                    controller: passWordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        borderSide: BorderSide(color: Colors.white, width: 1.0),
                      ),
                      label: Text(
                        "Password",
                        style: TextStyle(color: Colors.grey, fontSize: 25),
                      ),
                      prefixIcon: Icon(Icons.key),
                      prefixIconColor: Colors.white,
                      hintText: "Enter Password",
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _obscuretext = !_obscuretext;
                          });
                        },
                        icon: Icon(
                          _obscuretext
                              ? Icons.remove_red_eye_sharp
                              : Icons.no_encryption_gmailerrorred,
                        ),
                        color: Colors.grey,
                      ),
                      suffixIconColor: Colors.white,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      "forgotten Password?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(500, 50),
                  backgroundColor: Colors.yellow,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: SizedBox(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BlogHomePage()),
                      );
                    },
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 60),
              Row(
                children: [
                  SizedBox(width: 100),
                  Expanded(child: Divider()),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "Or login with",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(child: Divider()),
                  SizedBox(width: 100),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: Image.asset("lib/utils/google.png"),
                  ),
                  SizedBox(width: 10),

                  SizedBox(
                    height: 60,
                    width: 60,
                    child: Image.asset(
                      "lib/utils/apple.png",
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 400),

              RichText(
                text: TextSpan(
                  text: "New here?",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                  children: [
                    TextSpan(
                      text: " Create an Account",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
