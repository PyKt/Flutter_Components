import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 50;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Slides and Checks'),
        ),
        body: Column(
          children: <Widget>[
            Slider(
                min: 50,
                max: 400,
                activeColor: MyTheme.dark,
                value: _sliderValue,
                onChanged: _sliderEnable
                    ? (value) {
                        _sliderValue = value;
                        setState(() {});
                      }
                    : null),
            // Checkbox(
            //     value: _sliderEnable,
            //     onChanged: (value) {
            //       _sliderEnable = value!;
            //        setState(() {});
            //     }),
            // CheckboxListTile(
            //   title: const Text('Habilitar Slider'),
            //   value: _sliderEnable,
            //   onChanged: (value) => setState(() {
            //     _sliderEnable = value ?? true;
            //   }),
            // ),

            SwitchListTile.adaptive(
              title: const Text('Habilitar Slider'),
              value: _sliderEnable,
              onChanged: (value) => setState(() {
                _sliderEnable = value;
              }),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      'https://thumbor.autonomous.ai/WPMm1OpqPssl7Aba6IHvVYJLI3I=/1600x900/smart/filters:format(webp)/https://storage.googleapis.com/s3-autonomous-upgrade-3/static/upload/images/new_post/programmer-room-setup-complete-guide-2112-1623257487398.jpg'),
                  width: _sliderValue,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const AboutListTile(
              icon: Icon(Icons.apple),
            )
          ],
        ));
  }
}
