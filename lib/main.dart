import 'package:blog/pages/signUp_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BlogApp());
}

class BlogApp extends StatelessWidget {
  const BlogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: SignupPage());
  }
}
