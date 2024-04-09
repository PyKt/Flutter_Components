import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 50;
  bool _sliderEnable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Slider Screen'),
          actions: [
            Checkbox(
                activeColor: MyTheme.light,
                value: _sliderEnable,
                onChanged: (value) {
                  _sliderEnable = value!;
                  setState(() {});
                }),
          ],
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

            // SwitchListTile.adaptive(
            //   activeColor: MyTheme.light,
            //   title: const Text('Habilitar Slider'),
            //   value: _sliderEnable,
            //   onChanged: (value) => setState(() {
            //     _sliderEnable = value;
            //   }),
            // ),
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      'https://setup-gaming.es/wp-content/uploads/2020/10/setup-gaming-moderno-1024x576.jpg'),
                  width: _sliderValue,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                  'https://markellisreviews.com/wp-content/uploads/2023/02/DSC04858-optimized.jpg',
                ),
                width: _sliderValue,
                fit: BoxFit.contain,
              ),
            )),
            const SizedBox(
              height: 10,
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                  'https://www.profesionalreview.com/wp-content/uploads/2023/01/M2-Mac-mini-internals.jpg',
                ),
                width: _sliderValue,
                fit: BoxFit.contain,
              ),
            )),

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
