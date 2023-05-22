import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:newsapp/models/article.dart';
import 'package:newsapp/widgets/detailed_news.dart';

class News extends StatelessWidget {
  Article article;
  News(this.article);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (builder) => DetailedNews(article)));
        },
        child: Container(
          color: Colors.black,
          child: ListTile(
            leading: Image.network(
              article.urlToImage,
              fit: BoxFit.cover,
            ),
            title: Text(
              article.title.substring(
                  0, article.title.length > 100 ? 80 : article.title.length),
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
