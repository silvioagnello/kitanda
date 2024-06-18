import 'package:flutter/material.dart';

import '../themes/theme.dart';

class QuantityWidget extends StatelessWidget {
  final int value;
  final String suffix;
  final Function(int quantity) result;
  final bool isRemovable;

  const QuantityWidget(
      {super.key,
      required this.value,
      required this.suffix,
      required this.result,
      this.isRemovable = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 135,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white70),
        boxShadow: [BoxShadow(color: Colors.grey[50]!)],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _QuantityButton(
            iconColor: isRemovable || value == 1 ? Colors.white : Colors.black,
            ontap: () {
              if (value == 1 && !isRemovable) return;
              int resultCount = value - 1;
              result(resultCount);
            },
            actionIcon:
                isRemovable || value == 1 ? Icons.delete_forever : Icons.remove,
            color: isRemovable || value == 1 ? Colors.red : Colors.grey[300]!,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                '$value $suffix',
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )),
          _QuantityButton(
            ontap: () {
              int resultCount = value + 1;
              result(resultCount);
            },
            actionIcon: Icons.add,
            color: MaterialTheme.lightScheme().primaryContainer,
          ),
        ],
      ),
    );
  }
}

class _QuantityButton extends StatelessWidget {
  final Color color;
  final IconData actionIcon; //const ,
  final VoidCallback ontap;
  final Color iconColor;

  const _QuantityButton({
    super.key,
    required this.actionIcon,
    required this.color,
    required this.ontap,
    this.iconColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        borderRadius: BorderRadius.circular(50),
        onTap: ontap,
        child: Ink(
          height: 30,
          width: 30,
          decoration: BoxDecoration(shape: BoxShape.circle, color: color),
          child: Icon(
            actionIcon,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
