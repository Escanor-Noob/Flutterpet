import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleWebView extends StatefulWidget {
  ArticleWebView({Key key, this.articleUrl}) : super(key: key);
  final String articleUrl;

  @override
  ArticleWebViewState createState() => ArticleWebViewState();
}

class ArticleWebViewState extends State<ArticleWebView> {
  @override
  void initState() {
    super.initState();
    print(widget.articleUrl);
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 35),
      child: WebView(
        initialUrl: (widget.articleUrl == null)
            ? "https://www.google.com/"
            : widget.articleUrl,
      ),
    );
  }
}
