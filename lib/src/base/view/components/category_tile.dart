import 'package:flutter/material.dart';

import '../../../commons/themes/theme.dart';

class CategoryTile extends StatelessWidget {
  final bool isSelected;

  final VoidCallback onPressed;

  const CategoryTile({
    super.key,
    required this.category,
    required this.isSelected,
    required this.onPressed,
  });

  final String category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 7),
          decoration: BoxDecoration(
            color: isSelected
                ? appTheme().primaryColor //MaterialTheme.lightScheme().primary
                : Colors.transparent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            category,
            style: TextStyle(
              fontSize: isSelected ? 16 : 14,
              color: isSelected
                  ? Colors.white
                  : appTheme()
                      .hintColor, //MaterialTheme.lightMediumContrastScheme().error,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
