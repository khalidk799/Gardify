import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Reddit extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Reddit> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  get webViewController => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Reddit"),
        ),
        body: WebView(
          initialUrl: 'https://www.reddit.com/r/houseplants/',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
          },
        ));
  }
}
