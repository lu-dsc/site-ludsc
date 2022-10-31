import 'package:flutter/material.dart';
import 'package:site_ludsc/components/simple_divider.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/dsc-logo.png', width: 200.0),
          const SizedBox(height: 40.0),
          Text(
            'Developers Student Club',
            style: Theme.of(context).textTheme.headline2?.copyWith(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SimpleDivider(),
          Text(
            'Lakehead University',
            style: Theme.of(context).textTheme.headline2?.copyWith(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40.0),
          Image.asset('assets/images/lu-logo.png', width: 200.0),
        ],
      ),
    );
  }
}
