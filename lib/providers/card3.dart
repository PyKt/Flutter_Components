import 'package:flutter/material.dart';

class PersonalCard3 extends StatelessWidget {
  const PersonalCard3({
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
      child: const Column(
        children:<Widget> [
          FadeInImage(
            placeholder: AssetImage('lib/image/jar-loading.gif'),
            image: NetworkImage(
                "https://miro.medium.com/v2/resize:fit:1400/1*337CCWipDVtubJnHUrpFHw.jpeg"),
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
