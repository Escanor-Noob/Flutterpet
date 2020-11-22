import 'package:flutter/material.dart';

import 'articlewebView.dart';

class NewsTile extends StatelessWidget {
  final String title, imageUrl, desc, url;

  NewsTile({this.title, this.imageUrl, this.desc, this.url});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("checking for url");
        print(url);
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ArticleWebView(
                      articleUrl: url,
                    )));
      },
      child: Container(
          margin: const EdgeInsets.all(12.0),
          //padding: const EdgeInsets.symmetric(horizontal: 10.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0), color: Colors.white),
          child: Column(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Image.network(imageUrl, fit: BoxFit.cover)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                child: Text(
                  desc,
                  style: TextStyle(fontSize: 12),
                ),
              )
            ],
          )),
    );
  }
}
