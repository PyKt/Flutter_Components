import 'package:flutter/material.dart';

class PersonalCard1 extends StatelessWidget {
  const PersonalCard1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      shadowColor: Colors.deepPurple.withOpacity(0.5),
      elevation: 4,
      child:const Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('lib/image/jar-loading.gif'),
            image: NetworkImage(
                "https://www.ilounge.com/wp-content/uploads/2020/12/m1-mac-mini-hero.jpg"),
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 400),
          ),
        ],
      ),
    );
  }
}
