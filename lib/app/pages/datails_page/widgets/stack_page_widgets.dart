import 'package:flutter/material.dart';

import '../../home_page/widgets/widgets.dart';
import 'widgets.dart';

class StackPageWidget extends StatelessWidget {
  final Map infoHero;

  const StackPageWidget({Key key, this.infoHero}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          BackgroundWidget(
            image: infoHero['backgrondImage'],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Column(
              children: [
                InformationPersonWidget(
                  name: infoHero['name'],
                  nameHero: infoHero['nameHero'],
                  height: infoHero['height'],
                  weight: infoHero['weight'],
                  race: infoHero['race'],
                  color: infoHero['colorBase'],
                ),
                DescriptionWidget(desc: infoHero['description']),
                ListViewInfo(infoHero: infoHero),
                SizedBox(height: 30),
                Visibility(
                  visible: infoHero['nameHero'] == 'BATMAN',
                  child: VhiclesInfo(),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
          AvatarPerson(
            hero: infoHero['hero'],
          ),
        ],
      ),
    );
  }
}
