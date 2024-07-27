import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeProvider extends ChangeNotifier
{
  Future<void> urlLunching()
  async {
    Uri url=Uri.parse('https://github.com/Prafulpatnecha');
    await launchUrl(url,mode: LaunchMode.inAppWebView);
    // print('errorrrr');
    // notifyListeners();
  }
  Future<void> urlRedAndWhite()
  async {
    Uri uri=Uri.parse('https://student.rnwmultimedia.com/1870/student-detail');
    await launchUrl(uri,mode: LaunchMode.inAppWebView);
  }
}