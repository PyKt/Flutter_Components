import 'package:flutter/material.dart';

class PersonalCard5 extends StatelessWidget {
  const PersonalCard5({
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
          const SizedBox(
            child: FadeInImage(
              placeholder: AssetImage('lib/image/jar-loading.gif'),
              image: NetworkImage(
                  'https://duet-cdn.vox-cdn.com/thumbor/0x0:2040x1300/640x427/filters:focal(1020x650:1021x651):format(webp)/cdn.vox-cdn.com/uploads/chorus_asset/file/23450375/BudsLifestyle.jpg'),
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
