import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:kitanda/src/commons/widgets/name_app.dart';

class TitleWidget extends StatelessWidget {
  final String titleString;
  const TitleWidget({super.key, this.titleString = ''});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: titleString == ''
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const NameApp(), //titleApp(),
                // SUBTITULO - CATEGRIAS
                SizedBox(
                  height: 30,
                  child: DefaultTextStyle(
                    style: const TextStyle(fontSize: 25),
                    child: AnimatedTextKit(
                      pause: Duration.zero,
                      repeatForever: true,
                      animatedTexts: [
                        FadeAnimatedText('Frutas'),
                        FadeAnimatedText('Cereais'),
                        FadeAnimatedText('Legumes'),
                        FadeAnimatedText('Verduras'),
                        FadeAnimatedText('Carnes'),
                        FadeAnimatedText('Laticíneos'),
                      ],
                    ),
                  ),
                ),
              ],
            )
          : Center(
              child: Text(
                titleString,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            ),
    );
  }
}
