// ignore_for_file: deprecated_member_use

import 'package:flutter/gestures.dart';
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
              MainCard().getMainCard(
                cardOpaqueText:
                    "Hello ELON MUSK Announced the creation of new humanoid robots which are capable of performing humans day to day jobs",
              ),
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

//class
class Bloglist {
  //mETHOD
  Widget getCard(
  //PARAMETERS
  {image, title, author, date, description}) {
    return Card(
      margin: EdgeInsets.all(5),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
        child: Row(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                //image or thumbnail
                image: DecorationImage(image: image, fit: BoxFit.cover),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  //title
                  Text(
                    title,
                    maxLines: 2,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                      height: 1.2,
                    ),
                  ),
                  SizedBox(height: 5),
                  RichText(
                    text: TextSpan(
                      text: "by",
                      style: TextStyle(
                        color: Colors.blue,
                        height: 1.2,
                        fontWeight: FontWeight.normal,
                      ),
                      children: [
                        //Author
                        TextSpan(
                          text: author,
                          style: TextStyle(
                            color: Colors.black,
                            height: 1.2,
                            fontWeight: FontWeight.normal,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              debugPrint("Linda Ikeji tapped");
                            },
                        ),
                        //date
                        TextSpan(
                          text: date,
                          style: TextStyle(
                            color: Colors.grey,
                            height: 1.2,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ), //description
                  Text(description),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MainCard {
  Widget getMainCard({cardOpaqueText}) {
    return Container(
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
