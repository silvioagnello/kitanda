import 'package:flutter/material.dart';
import 'package:kitanda/src/base/repositories/app_data.dart' as app_data;
import 'package:kitanda/src/base/view/components/order_tile.dart';

import '../../../commons/themes/theme.dart';

class OrdersTab extends StatelessWidget {
  const OrdersTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MaterialTheme.lightScheme().surfaceDim,
      // APPBAR(titulo=PEDIDOS
      appBar: AppBar(
        //backgroundColor: MaterialTheme.lightScheme().surfaceDim,
        elevation: 0,
        title: const Text(
          'Pedidos',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: ListView.separated(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16),
        separatorBuilder: (_, __) => const SizedBox(height: 20),
        itemCount: app_data.orders.length,
        itemBuilder: (context, index) {
          return OrderTile(order: app_data.orders[index]);
        },
      ),
    );
  }
}
