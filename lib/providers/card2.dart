import 'package:flutter/material.dart';

class PersonalCard2 extends StatelessWidget {
  const PersonalCard2({
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
          SizedBox(
            child: FadeInImage(
              placeholder: AssetImage('lib/image/jar-loading.gif'),
              image: NetworkImage(
                  'https://www.servethehome.com/wp-content/uploads/2021/10/HP-EliteDesk-800-G6-Mini-65W-Cover-Web.jpg'),
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
