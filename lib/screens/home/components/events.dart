import 'package:flutter/material.dart';
import 'package:site_ludsc/components/simple_divider.dart';
import 'package:site_ludsc/utils.dart';

class Events extends StatelessWidget {
  const Events({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Join our events',
            style: Theme.of(context).textTheme.headline2?.copyWith(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SimpleDivider(),
          eventItem(
            context,
            url:
                'https://gdsc.community.dev/events/details/developer-student-clubs-lakehead-university-presents-info-session-101/',
            eventTitle: 'Info Session 101',
            eventLocation: 'AT 1007 | ATAC Building',
            eventTime: 'Thu 6 Oct 2022, 5:00 PM (EDT)',
          ),
        ],
      ),
    );
  }

  InkWell eventItem(
    BuildContext context, {
    required String url,
    required String eventTitle,
    required String eventLocation,
    required String eventTime,
  }) {
    return InkWell(
      onTap: () => launchInBrowser(
        context,
        Uri.parse(url),
      ),
      borderRadius: BorderRadius.circular(35.0),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: '$eventTitle\n',
                style: Theme.of(context).textTheme.headline5?.copyWith(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: '$eventLocation\n',
                style: Theme.of(context).textTheme.headline6,
              ),
              TextSpan(
                text: 'Lakehead University - 955 Oliver Road Thunder Bay, P7B 5E1\n',
                style: Theme.of(context).textTheme.headline6,
              ),
              TextSpan(
                text: eventTime,
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
