import 'package:flutter/material.dart';

class PersonalCard3 extends StatelessWidget {
  const PersonalCard3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 4,
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('lib/image/loading-ice.gif'),
            image: NetworkImage(
                "https://img.bee-link.com/media/upload/v/h1/vh1gfiy6khimyfe1684935834.jpg"),
          ),
          
        ],
      ),
    );
  }
}
