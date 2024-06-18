import 'package:flutter/material.dart';
import 'package:kitanda/src/base/repositories/app_data.dart' as app_data;
import 'package:kitanda/src/base/view/components/cart_tile.dart';
import 'package:kitanda/src/services/utils_services.dart';

import '../../../commons/models/cart_item_model.dart';
import '../../../commons/themes/theme.dart';
import '../../../commons/widgets/payment_dialog.dart';

class CartTab extends StatefulWidget {
  const CartTab({super.key});

  @override
  State<CartTab> createState() => _CartTabState();
}

class _CartTabState extends State<CartTab> {
  final utilsServices = UtilsServices();

  void removeItemFromCart(CartItemModel cartItem) {
    setState(() {
      app_data.cartItems.remove(cartItem);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MaterialTheme.lightScheme().surfaceDim,
      // APPBAR(titulo=Greengrocer + ICONE DO CARRINHO com BADGE
      appBar: AppBar(
        //backgroundColor: MaterialTheme.lightScheme().surfaceDim,
        elevation: 0,
        title: const Text(
          'Carrinho',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          // LISTA DO CARRINHO
          Expanded(
            flex: 3,
            child: ListView.builder(
              itemCount: app_data.cartItems.length,
              itemBuilder: (_, index) {
                final cartItem = app_data.cartItems[index];
                return CartTile(
                  cartItem: cartItem,
                  updateQuantity: (qtd) {
                    if (qtd == 0) {
                      removeItemFromCart(cartItem);
                    } else {
                      setState(() {
                        cartItem.quantity = qtd;
                      });
                    }
                  },
                );
              },
            ),
          ),
          // TOTAL GERAL DO CARRINHO
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text('Total geral',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold))),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                          utilsServices.priceToCurrency(cartTotalPrice()),
                          style: TextStyle(
                              color:
                                  MaterialTheme.lightScheme().primaryContainer,
                              fontSize: 23,
                              fontWeight: FontWeight.bold))),
                  ElevatedButton(
                    onPressed: () async {
                      bool? result = await showOrderConfirmation();
                      if (result ?? false) {
                        showDialog(
                          context: context,
                          builder: (context) =>
                              PaymentDialog(order: app_data.orders.first),
                        );
                      }
                    },
                    child: const Text('Concluir pedido'),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  double cartTotalPrice() {
    double total = 0;
    for (var item in app_data.cartItems) {
      total += item.totalPrice();
    }
    return total;
  }

  Future<bool?> showOrderConfirmation() {
    return showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: const Text('Confirmação'),
          content: const Text('Deseja realmente concluir o pedido?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: const Text('Não'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: const Text('Sim'),
            ),
          ],
        );
      },
    );
  }
}
