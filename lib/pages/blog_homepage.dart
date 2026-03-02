// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class BlogHomePage extends StatefulWidget {
  const BlogHomePage({super.key});

  @override
  State<BlogHomePage> createState() => _BlogHomePageState();
}

class _BlogHomePageState extends State<BlogHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          "Kaizen_Blog",
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("lib/elon.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(1),
                        Colors.black.withOpacity(.0),
                      ],
                      begin: Alignment.bottomRight,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Hello ELON MUSK Announced the creation of new humanoid robots which are capable of performing humans day to day jobs",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),

              Card(
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("lib/elon.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "Iran has rejected an ultimatum by US President Donald Trump to lay down its weapons as violence continues to escalate across the Middle East. Trump told Iran's leaders to give up the fight, which ...",
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("Linda ikeji blog"),
                          Text(
                            "The Independent Corrupt Practices and Other Related Offences Commission (ICPC) said it recovered suspected wiretapping equipment allegedly capable of intercepting private conversations and accessing s ...",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          