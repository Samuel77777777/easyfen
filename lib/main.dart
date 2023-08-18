import 'package:easyfenn/menu.dart';
import 'package:easyfenn/navigation_controls.dart';
import 'package:easyfenn/web_view_stack.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: WebViewApp(),
    ),
  );
}

class WebViewApp extends StatefulWidget {
  const WebViewApp({super.key});

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse('https://Easyfen.com'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

          // title: const Text('Flutter WebView'),
          // actions: [
          //   NavigationControls(controller: controller),
          //   Menu(controller: controller)
          // ],
          ),
      body: WebViewStack(
        controller: controller,
      ),
    );
  }
}
