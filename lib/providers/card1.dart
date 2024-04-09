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
                "https://m.media-amazon.com/images/S/aplus-media/vc/ef38065e-80ed-4fd8-80ed-6b2baf7da75b.__CR0,0,1464,600_PT0_SX1464_V1___.jpg"),
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
