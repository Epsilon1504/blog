// ignore_for_file: deprecated_member_use

import 'package:blog/pages/_bogDetailsPage.dart';
import 'package:blog/pages/newsCardList.dart';
import 'package:flutter/material.dart';

class MainCard {
  Widget getMainCard({cardOpaqueText, thumbnail}) {
    return Container(
      width: double.infinity,
      height: 350,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(thumbnail), fit: BoxFit.cover),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black.withOpacity(1), Colors.black.withOpacity(.0)],
            begin: Alignment.bottomRight,
          ),
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
          //Card Opaque text
          child: Text(
            cardOpaqueText,
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
    );
  }
}

class BlogMainPage extends StatefulWidget {
  const BlogMainPage({super.key});

  @override
  State<BlogMainPage> createState() => _BlogMainPageState();
}

class _BlogMainPageState extends State<BlogMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              for (var i = 0; i < 1; i++)
                InkWell(
                  onTap: () {
                    debugPrint("tapped");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BlogDetailsPage(),
                      ),
                    );
                  },
                  child: MainCard().getMainCard(
                    thumbnail: "lib/elon.jpg",
                    cardOpaqueText:
                        "Hello ELON MUSK Announced the creation of new humanoid robots which are capable of performing humans day to day jobs",
                  ),
                ),
              for (var i = 0; i < 6; i++)
                Bloglist().getCard(
                  image: AssetImage("lib/elon.jpg"),
                  title:
                      "Iran has rejected an ultimatum by US President Donald Trump to lay down its weapons as violence continues to escalate across the Middle East. Trump told Iran's leaders to give up the fight, which ...",
                  author: "Linda Ikeji",
                  date: " at 22/09/22 -(2 Comments) ",

                  description:
                      "The Independent Corrupt Practices and Other Related Offences Commission (ICPC) said it recovered suspected wiretapping equipment allegedly capable of intercepting private conversations and accessing s ...",
                ),
            ],
          ),
        ),
      ),
    );
  }
}
