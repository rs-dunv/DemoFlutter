import 'package:DemoFlutter/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class WebviewLibTwo extends StatelessWidget {
  InAppWebViewController webView;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Two'),
      ),
      body: Container(
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
        child: InAppWebView(
          initialUrl: URL,
          initialHeaders: {},
          initialOptions: InAppWebViewGroupOptions(
              crossPlatform: InAppWebViewOptions(
            debuggingEnabled: true,
          )),
          onWebViewCreated: (InAppWebViewController controller) async {
            webView = controller;
            print("webview: ${webView}");
            var result = await webView.getHtml();
            var progress = await webView.getProgress();
            var isLoading = await webView.isLoading();
            print("result: $progress");
            print("result: $result");
            print("isLoading: $isLoading");
          },
          onLoadStart: (InAppWebViewController controller, String url) {
            print("webview 1 $url");
          },
          onLoadStop: (InAppWebViewController controller, String url) async {
            var result = await webView.getHtml();
            print("result $result");
          },
          onProgressChanged:
              (InAppWebViewController controller, int progress) {},
        ),
      ),
    );
  }
}
