import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Bloglist {
  Widget getCard({image, title, author, date, description}) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
      child: Card(
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
                child: Padding(
                  padding: const EdgeInsets.all(7),
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
                      Container(
                        alignment: Alignment.bottomLeft,
                        child: RichText(
                          text: TextSpan(
                            text: "by ",
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
                        ),
                      ), //description
                      Text(
                        description,
                        style: TextStyle(color: Colors.black, fontSize: 14),
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
