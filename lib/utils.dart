import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:site_ludsc/database/sp_adapter.dart';
import 'package:site_ludsc/providers/theme_provider.dart';
import 'package:url_launcher/url_launcher.dart';

final spAdapter = SPAdapter();

void showSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).removeCurrentSnackBar();
  final snackBar = SnackBar(
    content: Text(
      text,
      style: Theme.of(context).textTheme.bodyText1?.copyWith(
          color: Provider.of<ThemeProvider>(context, listen: false).isLightTheme ? Colors.white : Colors.black),
    ),
    duration: const Duration(milliseconds: 1000),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

Future<void> launchInBrowser(BuildContext context, Uri url) async {
  if (!await launchUrl(
    url,
    mode: LaunchMode.externalApplication,
  )) {
    showSnackBar(context, 'Hmm. Something bad happened.');
  }
}
