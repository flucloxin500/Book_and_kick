import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatefulWidget {
  const WebViewScreen({super.key});

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {

  WebViewController controller = WebViewController()
  ..loadRequest(Uri.parse('https://www.google.com'),
  );


  @override
  Widget build(BuildContext context) {
    return WebViewWidget(controller: controller);
  }
}
