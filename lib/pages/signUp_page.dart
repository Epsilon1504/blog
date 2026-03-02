import 'package:blog/pages/SignIn_Page.dart';
import 'package:blog/pages/blog_homepage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final emailController = TextEditingController();
  final passWordController = TextEditingController();
  final userNameController = TextEditingController();
  bool _obscuretext = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 100, right: 250),
                child: RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                    text: "Create",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text: "  Account",
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
                    "   Lets Start your journey",
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

                    controller: userNameController,
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
                      prefixIcon: Icon(Icons.contact_emergency),
                      prefixIconColor: Colors.white,
                      hintText: "Enter Username",
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

                    controller: emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        borderSide: BorderSide(color: Colors.white, width: 1.0),
                      ),

                      label: Text(
                        "Email",
                        style: TextStyle(color: Colors.grey, fontSize: 25),
                      ),
                      prefixIcon: Icon(Icons.email),
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
                              ? Icons.remove_red_eye
                              : Icons.no_encryption_gmailerrorred_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              OverflowBar(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      debugPrint("Continue btton pressed");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow,
                      elevation: 20,
                      iconSize: 50,
                    ),
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 70),
                  Expanded(child: Divider()),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "or Sign up with",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                      ),
                    ),
                  ),
                  Expanded(child: Divider()),
                  SizedBox(width: 70),
                ],
              ),
              SizedBox(height: 50),

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
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BlogHomePage(),
                          ),
                        );
                      },
                      child: Image.asset(
                        "lib/utils/apple.png",
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 200),
              Padding(
                padding: const EdgeInsets.only(top: 120),
                child: RichText(
                  text: TextSpan(
                    text: "Already have an account?",
                    style: TextStyle(color: Colors.grey),
                    children: [
                      TextSpan(
                        text: "  Sign in",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SigninPage(),
                              ),
                            );
                          },
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
