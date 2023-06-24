import 'package:flutter/gestures.dart';
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
        verticalDirection: VerticalDirection.up,
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
            eventTime: 'Thu, 6 Oct, 2022, 5:00 PM (EDT)',
          ),
          eventItem(
            context,
            url:
                'https://gdsc.community.dev/events/details/developer-student-clubs-lakehead-university-presents-study-snack/',
            eventTitle: 'Study & Snack',
            eventLocation: 'RB 3024 | Ryan Building',
            eventTime: 'Fri, Dec 16, 2022, 11:00 AM (EST)',
          ),
          eventItem(
            context,
            url:
                'https://gdsc.community.dev/events/details/developer-student-clubs-lakehead-university-presents-introduction-to-git-github/',
            eventTitle: 'Introduction to Git & GitHub',
            eventLocation: 'AT 1010 | ATAC Building',
            eventTime: 'Fri, Feb 10, 2023, 4:00 PM (EST)',
          ),
          eventItem(
            context,
            url:
                'https://gdsc.community.dev/events/details/developer-student-clubs-lakehead-university-presents-mastering-leetcode-a-journey-to-coding-excellence-2023-06-24/',
            eventTitle: 'Introduction to LeetCode',
            eventLocation: 'Remote',
            eventTime: 'Sat, Jun 24, 2023, 10:00 AM (EDT)',
            eventPlayback:
                'https://lakeheadu.zoom.us/rec/share/Gzsffg5DHRX-VWyxHggl5EHTSEmG1FUnl0Fcb961UxX5JsXywYG4QhILXY_ZAkB6.CFscjDT-AW0USiEY',
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
    String? eventPlayback,
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
                text: '$eventTitle',
                style: Theme.of(context).textTheme.headline5?.copyWith(fontWeight: FontWeight.bold),
              ),
              if (eventPlayback != null)
                TextSpan(
                  text: ' · View',
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                        color: Colors.blue,
                      ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => launchInBrowser(
                          context,
                          Uri.parse(eventPlayback),
                        ),
                ),
              const TextSpan(text: '\n'),
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
