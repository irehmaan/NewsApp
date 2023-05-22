import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:newsapp/models/article.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DetailedNews extends StatefulWidget {
  Article article;
  DetailedNews(this.article);
  @override
  State<DetailedNews> createState() => _DetailedNewsState();
}

class _DetailedNewsState extends State<DetailedNews> {
  late final WebViewController controller;
  @override
  void initState() {
    controller = WebViewController()
      ..loadRequest(Uri.parse(widget.article.url));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(widget.article.title.substring(
            0,
            widget.article.title.length > 60 ? 35 : widget.article.title.length,
          )),
        ),
        body: WebViewWidget(controller: controller),
      ),
    );
  }
}
