import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../services/utils_services.dart';
import '../models/order_model.dart';

class PaymentDialog extends StatelessWidget {
  final OrderModel order;

  PaymentDialog({super.key, required this.order});

  final UtilsServices utilsService = UtilsServices();
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Stack(
        alignment: Alignment.center,
        //CONTEUDO
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // TITULO
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    'Pagamento com PIX',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                // QR CODE
                QrImageView(
                    data: '1234567890', version: QrVersions.auto, size: 200.0),
                // Image.memory(
                //   height: 200,
                //   width: 200,
                //   utilsService.decodeQrCodeImage(order.qrCodeImage!),
                // ),
                // VENCIMENTO
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Vencimento ${utilsService.formatDateTime(order.overdueDateTime)}',
                    style: const TextStyle(fontSize: 12),
                  ),
                ),
                // TOTAL
                Padding(
                  padding: const EdgeInsets.only(bottom: 18.0),
                  child: Text(
                    'Total ${utilsService.priceToCurrency(order.total)}',
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
                // BOTÃO COPIA e COLA
                Padding(
                  padding: const EdgeInsets.only(bottom: 18.0),
                  child: OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        side: const BorderSide(
                          width: 2,
                          color: Colors.green,
                        )),
                    onPressed: () {
                      //FlutterClipboard.copy(order.copyAndPaste);
                      //utilsService.myToast(msg: 'Código copiado');
                    },
                    label: const Text('Copiar código PIX'),
                    icon: const Icon(Icons.copy, size: 15),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
