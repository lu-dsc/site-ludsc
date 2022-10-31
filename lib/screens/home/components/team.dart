import 'package:flutter/material.dart';
import 'package:site_ludsc/components/simple_divider.dart';

class Team extends StatelessWidget {
  const Team({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Meet our team',
            style: Theme.of(context).textTheme.headline2?.copyWith(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SimpleDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Center(
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                crossAxisCount: (MediaQuery.of(context).size.width / 400).round(),
                children: [
                  buildTeamItem('assets/images/team/1.jpeg'),
                  buildTeamItem('assets/images/team/2.jpeg'),
                  buildTeamItem('assets/images/team/3.jpeg'),
                  buildTeamItem('assets/images/team/4.jpeg'),
                  buildTeamItem('assets/images/team/5.jpeg'),
                  buildTeamItem('assets/images/team/6.jpeg'),
                  buildTeamItem('assets/images/team/7.jpeg'),
                  buildTeamItem('assets/images/team/8.jpeg'),
                  buildTeamItem('assets/images/team/9.jpeg'),
                  buildTeamItem('assets/images/team/10.jpeg'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  ClipRRect buildTeamItem(String imagePath) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(35.0),
      child: Image.asset(imagePath, width: 400.0),
    );
  }
}
