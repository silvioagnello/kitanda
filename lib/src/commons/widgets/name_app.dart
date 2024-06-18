import 'package:flutter/material.dart';

import '../themes/theme.dart';

class NameApp extends StatelessWidget {
  final double sizeIcon;

  const NameApp({super.key, this.sizeIcon = 40.00});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text.rich(
        TextSpan(
          style: TextStyle(fontSize: sizeIcon),
          children: [
            const TextSpan(
              text: 'Green',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: 'grocer',
              style: TextStyle(
                  color: MaterialTheme.lightMediumContrastScheme().error),
            )
          ],
        ),
      ),
    );
  }
}
