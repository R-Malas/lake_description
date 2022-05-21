import 'package:flutter/material.dart';
import 'package:lake_description/widgets/action_button.dart';
import 'package:lake_description/widgets/title_section.dart';

class LakeDescScreen extends StatelessWidget {
  const LakeDescScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final actionButtons = [
      ActionButton(
          icon: Icons.call,
          caption: 'CALL',
          color: Theme.of(context).primaryColor,
          onPress: () => {print('call action')}),
      ActionButton(
          icon: Icons.near_me,
          caption: 'ROUTE',
          color: Theme.of(context).primaryColor,
          onPress: () => {print('route action')}),
      ActionButton(
          icon: Icons.share,
          caption: 'SHARE',
          color: Theme.of(context).primaryColor,
          onPress: () => {print('share action')}),
    ];

    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Image.asset(
              'assets/img/lake.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            // title
            const TitleSection(),
            // action buttons
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: actionButtons),
            ),
            // description
            const Padding(
              padding: EdgeInsets.all(32),
              child: Text(
                'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
                'Alps. Situated 1,578 meters above sea level, it is one of the '
                'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
                'half-hour walk through pastures and pine forest, leads you to the '
                'lake, which warms to 20 degrees Celsius in the summer. Activities '
                'enjoyed here include rowing, and riding the summer toboggan run.',
                softWrap: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}
