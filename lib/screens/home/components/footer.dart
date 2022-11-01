import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:site_ludsc/constants.dart';
import 'package:site_ludsc/utils.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
              text: 'Privacy Policy',
              style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.blueGrey),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launchInBrowser(context, Uri.parse(kURLPrivacyPolicy));
                },
            ),
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // email
              IconButton(
                onPressed: () => launchInBrowser(context, Uri.parse(kEmail)),
                icon: const FaIcon(FontAwesomeIcons.envelope),
              ),
              // discord
              IconButton(
                onPressed: () => launchInBrowser(context, Uri.parse(kDiscord)),
                icon: const FaIcon(FontAwesomeIcons.discord),
              ),
              // github
              IconButton(
                onPressed: () => launchInBrowser(context, Uri.parse(kGithub)),
                icon: const FaIcon(FontAwesomeIcons.github),
              ),
              // facebook
              IconButton(
                onPressed: () => launchInBrowser(context, Uri.parse(kfacebook)),
                icon: const FaIcon(FontAwesomeIcons.facebook),
              ),
              // instagram
              IconButton(
                onPressed: () => launchInBrowser(context, Uri.parse(kInstagram)),
                icon: const FaIcon(FontAwesomeIcons.instagram),
              ),
              // linkedin
              IconButton(
                onPressed: () => launchInBrowser(context, Uri.parse(kLinkedIn)),
                icon: const FaIcon(FontAwesomeIcons.linkedin),
              ),
              // twitter
              IconButton(
                onPressed: () => launchInBrowser(context, Uri.parse(kTwitter)),
                icon: const FaIcon(FontAwesomeIcons.twitter),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Made with ',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              const FaIcon(
                FontAwesomeIcons.solidHeart,
                color: Color.fromARGB(255, 246, 39, 24),
              ),
              Text(
                ' and ',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              const FaIcon(
                FontAwesomeIcons.mugHot,
                color: Color.fromARGB(255, 204, 204, 204),
              ),
              Text(
                ' at Lakehead University',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
          // RichText(
          //   textAlign: TextAlign.center,
          //   text: TextSpan(
          //     children: [
          //       TextSpan(
          //         text: 'Made with ♥ by ',
          //         style: Theme.of(context).textTheme.bodyText1,
          //       ),
          //       TextSpan(
          //         text: 'Kartikey Bhardwaj',
          //         style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.blueGrey),
          //         recognizer: TapGestureRecognizer()
          //           ..onTap = () {
          //             launchInBrowser(context, Uri.parse(kURLDeveloper));
          //           },
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
