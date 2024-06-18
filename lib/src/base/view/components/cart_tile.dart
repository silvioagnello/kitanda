import 'package:flutter/material.dart';
import 'package:kitanda/src/commons/models/cart_item_model.dart';
import 'package:kitanda/src/commons/themes/theme.dart';
import 'package:kitanda/src/services/utils_services.dart';

import '../../../commons/widgets/quantity_widget.dart';

class CartTile extends StatefulWidget {
  final CartItemModel cartItem;
  final Function(int) updateQuantity;
  const CartTile(
      {super.key, required this.cartItem, required this.updateQuantity});

  @override
  State<CartTile> createState() => _CartTileState();
}

class _CartTileState extends State<CartTile> {
  final utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(15, 15, 15, 0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: ListTile(
        dense: false,
        leading:
            Image.asset(widget.cartItem.item.imgUrl, height: 70, width: 70),
        title: Text(widget.cartItem.item.itemName,
            style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(
          utilsServices.priceToCurrency(widget.cartItem.totalPrice()),
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: MaterialTheme.lightScheme().primaryContainer),
        ),
        trailing: QuantityWidget(
            isRemovable: widget.cartItem.quantity == 1 ? true : false,
            value: widget.cartItem.quantity,
            suffix: widget.cartItem.item.unit,
            result: widget.updateQuantity),
      ),
    );
  }
}
