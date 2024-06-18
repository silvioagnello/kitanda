import 'package:flutter/material.dart';
import 'package:kitanda/src/base/view/product_screen.dart';
import 'package:kitanda/src/commons/models/item_model.dart';
import 'package:kitanda/src/services/utils_services.dart';

import '../../../commons/themes/theme.dart';

class ItemTile extends StatelessWidget {
  final ItemModel item;
  ItemTile({super.key, required this.item});

  final utilsServices = UtilsServices();
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      elevation: 3,
      shadowColor: Colors.grey.shade500,
      child: Stack(
        children: [
          // BOTÃO ICONE PARA ADICIONAR AO CARRINHO
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    topRight: Radius.circular(25)),
                color: MaterialTheme.lightScheme().primaryContainer,
              ),
              height: 40,
              width: 39,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.shopping_cart_outlined,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 36, 10, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //ICON-CART
                //IMAGE
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ProductScreen(item: item),
                        ),
                      );
                    },
                    child:
                        Hero(tag: item.imgUrl, child: Image.asset(item.imgUrl)),
                  ),
                ),
                //TITLE
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    item.itemName,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                //PRICE
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 8.0),
                  child: Row(
                    children: [
                      Text(
                        utilsServices.priceToCurrency(item.price),
                        style: TextStyle(
                            color: MaterialTheme.lightScheme().primaryContainer,
                            fontSize: 19,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' /${item.unit}',
                        style: TextStyle(
                            color: MaterialTheme.lightScheme().primaryContainer,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
                //UNIT
              ],
            ),
          ),
        ],
      ),
    );
  }
}
