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
      child: Column(
        children: [
          const FadeInImage(
            placeholder: AssetImage('lib/image/jar-loading.gif'),
            image: NetworkImage(
                "https://www.techspot.com/articles-info/2119/images/2020-11-03-image-4.jpg"),
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 1,
              top: 0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "HomeScreen");
                  },
                  child: const Text('Home'),
                ),
                TextButton(
                  onPressed: () {
                    Null;
                  },
                  child: const Text('Cancel'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
