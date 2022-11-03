import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:site_ludsc/components/simple_divider.dart';
import 'package:site_ludsc/constants.dart';
import 'package:site_ludsc/providers/theme_provider.dart';
import 'package:site_ludsc/screens/home/components/events.dart';
import 'package:site_ludsc/screens/home/components/footer.dart';
import 'package:site_ludsc/screens/home/components/header.dart';
import 'package:site_ludsc/screens/home/components/team.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeProvider themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              const Spacer(),
              IconButton(
                padding: const EdgeInsets.all(20.0),
                onPressed: () => themeProvider.toggleTheme(),
                icon: Icon(themeProvider.isLightTheme ? Icons.lightbulb : Icons.lightbulb_outline),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Header(),
              const SizedBox(height: 40.0),
              buildDescription(context),
              buildQuote(
                context,
                quote: 'Thunderwolves do not hesitate to howl.',
                backgroundColor: kColorLionHeart,
              ),
              const Events(),
              buildQuote(
                context,
                quote: 'Magic happens when people come together.',
                backgroundColor: kColorMikadoYellow,
              ),
              const Team(),
              buildQuote(
                context,
                quote: 'Build with us #ludsc',
                backgroundColor: kColorMermaidBlues,
              ),
              buildRegistration(context),
              const Footer(),
            ],
          ),
        ],
      ),
    );
  }

  Padding buildDescription(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Hi there 👋\n\n',
              style: Theme.of(context).textTheme.headline5,
            ),
            TextSpan(
              text:
                  'Welcome to Lakehead University\nDSC Chapter! We are a community of\nstudents who are passionate about\nlearning and sharing knowledge\nabout technology.\n\n',
              style: Theme.of(context).textTheme.headline6,
            ),
            TextSpan(
              text: 'What we do?\n\n',
              style: Theme.of(context).textTheme.headline5,
            ),
            TextSpan(
              text:
                  'We are a part of Google Developers\nStudent Club, a program for university\nstudents around the world to learn\nabout Google technologies\nand much more.',
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
    );
  }

  Center buildRegistration(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Register today',
            style: Theme.of(context).textTheme.headline2?.copyWith(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SimpleDivider(),
          TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
              backgroundColor: kColorLionHeart,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            child: Text(
              'Join us',
              style: Theme.of(context).textTheme.headline2?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
              textAlign: TextAlign.center,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Container buildQuote(
    BuildContext context, {
    required String quote,
    required Color backgroundColor,
  }) {
    return Container(
      color: backgroundColor,
      margin: const EdgeInsets.symmetric(vertical: 40.0),
      padding: const EdgeInsets.symmetric(vertical: 80.0, horizontal: 40.0),
      child: Text(
        quote,
        style: Theme.of(context).textTheme.headline2?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
