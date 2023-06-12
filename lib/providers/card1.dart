import 'package:flutter/material.dart';

class PersonalCard1 extends StatelessWidget {
  const PersonalCard1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 0,
      child: Column(
        children: [
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
