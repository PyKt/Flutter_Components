import 'package:flutter/material.dart';

class PersonalCard2 extends StatelessWidget {
  const PersonalCard2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      shadowColor: Colors.deepPurple.withOpacity(0.5),      elevation: 4,
      child: const Column(
        children: [
          SizedBox(
            child: FadeInImage(
              placeholder: AssetImage('lib/image/jar-loading.gif'),
              image: NetworkImage(
                  'https://www.greenit.ie/wp-content/uploads/2021/06/87033601_9674937468-1024x683.jpg'),
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
