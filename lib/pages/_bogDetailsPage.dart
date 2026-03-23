// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class BlogDetailsPage extends StatefulWidget {
  const BlogDetailsPage({super.key});

  @override
  State<BlogDetailsPage> createState() => _BlogDetailsPageState();
}

class _BlogDetailsPageState extends State<BlogDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ELON MUSK Announced the creation of new humanoid robots",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("lib/elon.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(.6),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "ELON MUSK,Announced the creation of new humanoid robots",
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 5),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.calendar_month, color: Colors.white),
                              Text(
                                "11/08/2026",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                          Icon(Icons.person, color: Colors.white),
                          Text(
                            "Linda Ikeji",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.share),
                        Text(
                          "Share",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.comment),
                        Text(
                          "(2)-comments",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Divider(color: Colors.grey.withOpacity(0.6), thickness: 1),
              Container(
                padding: EdgeInsets.all(15),
                child: Text(
                  "They are wasting their time. Khamenei's son is a lightweight. I have to be involved in the appointment, like with Delcy [Rodriguez] in Venezuela,\n\n Trump told Axios,The US president was referring to Delcy Rodríguez, who assumed power in Venezuela after US forces captured former president Nicolás Maduro earlier this year,Mojtaba has survived US-Israeli airstrikes that wiped out his father and dozens of the Islamic regime's top brass,\n\nTrump’s comments came a day after the White House suggested that regime change in Iran was not the primary objective of the administration’s ongoing military campaign in the region,Iran’s Supreme Leader is the country’s highest political and religious authority, wielding significant power over the armed forces, judiciary and major state policies",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    height: 1.2,
                  ),
                ),
              ),
              //recent comment
              Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recent Comments",
                          style: TextStyle(
                            fontSize: 16,
                            height: 1.2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.add_comment),
                            SizedBox(width: 5),
                            Text(
                              "Add a comment",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: AssetImage("lib/elon.jpg"),
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Linda Ikeji",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "2026-02-03",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      height: 1.2,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            "President Trump rejects Khamenei's son, says he must be involved in choosing Iran’s next supreme leaderPresident Trump rejects Khamenei's son, says he must be involved in choosing Iran’s next supreme leaderPresident Trump rejects Khamenei's son, \n\nsays he must be involved in choosing Iran’s next supreme leader President Trump rejects Khamenei's son, says he must be involved in choosing Iran’s next supreme leaderPresident Trump rejects Khamenei's son, says he must be involved in choosing Iran’s next supreme leaderPresident Trump rejects Khamenei's son, \n\nsays he must be involved in choosing Iran’s next supreme leader ",

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              height: 1.2,
                            ),
                          ),
                        ],
                      ),
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
