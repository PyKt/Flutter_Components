import 'package:flutter/material.dart';

class PersonalCard4 extends StatelessWidget {
  const PersonalCard4({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      shadowColor: Colors.deepPurple.withOpacity(0.5),
      elevation: 4,
      child: const Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('lib/image/jar-loading.gif'),
            image: NetworkImage(
                "https://hips.hearstapps.com/hmg-prod/images/pixel-7-review-6581cea92b208.jpg?crop=0.563xw:1.00xh;0.228xw,0&resize=1200:*"),
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),

        ],
      ),
    );
  }
}
