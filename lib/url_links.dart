import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _pathomed = Uri.parse("https://github.com/aderemi-alo/PathoMed");
final Uri _twitter = Uri.parse("https://twitter.com/alo_aderemi");
final Uri _instagram = Uri.parse("https://www.instagram.com/vibeswithremi/");

Future<void> _launchUrl(String url) async {
  if (!await launchUrl(Uri.parse(url))) {
    throw 'Could not launch $url';
  }
}
