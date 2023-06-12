import 'package:flutter/material.dart';

class PersonalCard2 extends StatelessWidget {
  const PersonalCard2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 1,
      child: Column(
        children: [
          FadeInImage(
              placeholder: AssetImage('lib/image/loading-ice.gif'),
              image: NetworkImage(
                  "https://www.greenit.ie/wp-content/uploads/2021/06/87033601_9674937468-1024x683.jpg"))
        ],
      ),
    );
  }
}
