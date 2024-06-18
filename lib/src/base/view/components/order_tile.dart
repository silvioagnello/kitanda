import 'package:flutter/material.dart';
import 'package:kitanda/src/commons/models/cart_item_model.dart';
import 'package:kitanda/src/commons/models/order_model.dart';
import 'package:kitanda/src/commons/widgets/order_status.dart';
import 'package:kitanda/src/services/utils_services.dart';

import '../../../commons/widgets/payment_dialog.dart';

class OrderTile extends StatelessWidget {
  final OrderModel order;
  OrderTile({super.key, required this.order});
  UtilsServices utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          initiallyExpanded: order.status == 'pending_payment',
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Pedido: ${order.id}'),
              Text(
                utilsServices.formatDateTime(order.createdDateTime),
                style: const TextStyle(fontSize: 12, color: Colors.black),
              ),
            ],
          ),
          expandedCrossAxisAlignment: CrossAxisAlignment.stretch,
          childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          children: [
            IntrinsicHeight(
              child: Row(
                children: [
                  //PRODUTOS
                  Expanded(
                      flex: 3,
                      child: SizedBox(
                        height: 200,
                        child: ListView(
                            children: order.items.map((orderItem) {
                          return _OrderItemWidget(orderItem: orderItem);
                        }).toList()),
                      )),
                  const VerticalDivider(color: Colors.grey),
                  //STATUS
                  Expanded(
                    flex: 2,
                    child: OrderStatus(
                      status: order.status,
                      isOverDue: order.overdueDateTime.isBefore(DateTime.now()),
                    ),
                  ),
                ],
              ),
            ),
            //TOTAL
            Text.rich(
              TextSpan(
                style: const TextStyle(fontSize: 20),
                children: [
                  const TextSpan(
                      text: 'Total ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                    text: utilsServices.priceToCurrency(order.total),
                  ),
                ],
              ),
            ),
            //BOTÃO
            Visibility(
              visible:
                  order.status == 'pending_payment', // && !order.isOverDue,
              child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  icon: const Icon(Icons.pix),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => PaymentDialog(order: order));
                  },
                  label: const Text('Ver QR Code PIX')),
            ),
          ],
        ),
      ),
    );
  }
}

class _OrderItemWidget extends StatelessWidget {
  final CartItemModel orderItem;
  _OrderItemWidget({super.key, required this.orderItem});

  UtilsServices utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: Row(
        children: [
          Text('${orderItem.quantity} ${orderItem.item.unit} -'),
          Expanded(
            child: Text(
              ' ${orderItem.item.itemName}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Text(utilsServices.priceToCurrency(orderItem.totalPrice()))
        ],
      ),
    );
  }
}
