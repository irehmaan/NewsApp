import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:newsapp/models/article.dart';
import 'package:newsapp/services/newsServices.dart';
import 'package:newsapp/widgets/News.dart';

class NewsApp extends StatefulWidget {
  const NewsApp({super.key});

  @override
  State<NewsApp> createState() => _NewsAppState();
}

class _NewsAppState extends State<NewsApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.notifications),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "Home",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ))
        ],
      ),
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color.fromARGB(194, 105, 82, 221),
                  Color.fromARGB(255, 168, 158, 172),
                  Color.fromARGB(255, 66, 65, 124),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                stops: [0.2, 0.4, 0.6])),
        child: FutureBuilder<List<Article>>(
          future: NewsServices().getArticle(),
          builder: (context, AsyncSnapshot<List<Article>> snapshot) {
            if (snapshot.hasError) {
              return const Center(
                child: Text("Something Went Wrong.."),
              );
            } else if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView.builder(
              itemCount: snapshot.data!.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                Article article = snapshot.data![index];
                return News(article);
              },
            );
          },
        ),
      )),
    ));
  }
}
