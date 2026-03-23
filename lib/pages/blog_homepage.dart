// ignore_for_file: deprecated_member_use

import 'package:blog/pages/SignIn_Page.dart';
import 'package:blog/pages/_cartPage.dart';
import 'package:blog/pages/_ecommercePage.dart';
import 'package:blog/pages/newsCard.dart';
import 'package:flutter/material.dart';

class BlogHomePage extends StatefulWidget {
  const BlogHomePage({super.key});

  @override
  State<BlogHomePage> createState() => _BlogHomePageState();
}

class _BlogHomePageState extends State<BlogHomePage> {
  // final List<String> _titles = ["Home", "Ecommerce", "Cart"];
  //call scaffold key to store the  state
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  //create an iniialisation for pageindex
  int _pageindex = 0;
  String pageTitle = "NEWSAPP";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: _pageindex == 0
            ? const Color.fromARGB(221, 56, 7, 7)
            : Colors.grey,
        title: Text(
          pageTitle,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            letterSpacing: 1,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint("Share");
            },
            icon: Icon(Icons.share),
          ),
          IconButton(
            onPressed: () {
              debugPrint("search");
            },
            icon: Icon(Icons.search),
          ),
          SizedBox(width: 10),
        ],
      ),
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: _pageindex,
        children: [BlogMainPage(), EcommercePage(), CartPage()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        unselectedLabelStyle: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w700,
        ),
        selectedItemColor: const Color.fromARGB(255, 48, 14, 1),
        currentIndex: _pageindex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: "E_Commerce",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
        ],
        onTap: (int currentIndex) {
          debugPrint("index: index");
          //rebuild the ui
          if (currentIndex == 4) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SigninPage()),
            );
          } else {
            setState(() {
              _pageindex = currentIndex;

              if (currentIndex == 0) {
                pageTitle = "NewsApp";
              } else if (currentIndex == 1) {
                pageTitle = "Ecommerce";
              } else {
                pageTitle = "Cart";
              }
            });
          }
        },
      ),
    );
  }
}

//class
