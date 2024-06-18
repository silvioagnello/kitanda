import 'package:flutter/material.dart';
import 'package:kitanda/src/commons/models/item_model.dart';
import 'package:kitanda/src/commons/themes/theme.dart';
import 'package:kitanda/src/commons/widgets/quantity_widget.dart';
import 'package:kitanda/src/services/utils_services.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key, required this.item});

  final ItemModel item;

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final utilsServices = UtilsServices();
  int cartItemQuantity = 1;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MaterialTheme.lightScheme().surfaceDim,
      appBar: AppBar(backgroundColor: MaterialTheme.lightScheme().surfaceDim),
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          child: Column(
            children: [
              Expanded(
                child: Hero(
                  tag: widget.item.imgUrl,
                  child: Image.asset(widget.item.imgUrl),
                ),
              ),
              //
              Expanded(
                flex: 1,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(35)),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // TITLE OF PRODUCT
                      Padding(
                        padding: const EdgeInsets.fromLTRB(22, 15, 20, 0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                maxLines: 2,
                                widget.item.itemName,
                                style: const TextStyle(
                                  fontSize: 27,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            // CONTADOR
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: QuantityWidget(
                                value: cartItemQuantity,
                                suffix: widget.item.unit,
                                result: (quantity) {
                                  setState(() {
                                    cartItemQuantity = quantity;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      // PRICE OF ITEM
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 22.0),
                        child: Text(
                          '${utilsServices.priceToCurrency(widget.item.price)} /${widget.item.unit}',
                          style: TextStyle(
                              color:
                                  MaterialTheme.lightScheme().primaryContainer,
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      // DESCRIPTION
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 22.0, vertical: 8),
                        child: SingleChildScrollView(
                          child: Text(
                            widget.item.description,
                            style: const TextStyle(
                                height: 1.5, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      // BUTTON ADIC. AO CARRINHO
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18.0, vertical: 10),
                        child: ElevatedButton.icon(
                          icon: const Icon(Icons.shopping_cart_outlined),
                          onPressed: () {},
                          label: const Text('Adic. ao carrinho'),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
