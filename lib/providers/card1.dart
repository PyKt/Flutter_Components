import 'package:flutter/material.dart';

class PersonalCard1 extends StatelessWidget {
  const PersonalCard1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      color: Colors.lightBlue,
      elevation: 1,
      child: Column(
        children: [
          ListTile(
            title: Text('Mac mini Setup'),
            //subtitle: Text('Mac mini setup uploaded in Reddit '),
          ),
          FadeInImage(
            placeholder: AssetImage('lib/image/loading-ice.gif'),
            image: NetworkImage(
                "https://www.ilounge.com/wp-content/uploads/2020/12/m1-mac-mini-hero.jpg"),
          )
        ],
      ),
    );
  }
}
