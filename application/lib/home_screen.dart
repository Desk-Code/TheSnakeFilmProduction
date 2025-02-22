import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    // Enable hybrid composition for Android
    _controller =
        WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..setBackgroundColor(const Color(0x00000000))
          ..setNavigationDelegate(
            NavigationDelegate(
              onPageStarted: (String url) {
                log('Page started loading: $url');
              },
              onPageFinished: (String url) {
                log('Page finished loading: $url');
              },
              onWebResourceError: (WebResourceError error) {
                log('Error loading page: $error');
              },
            ),
          )
          ..loadRequest(Uri.parse('https://deskcode.netlify.app'));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: WebViewWidget(controller: _controller)),
    );
  }
}
