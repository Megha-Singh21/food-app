import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megha/my_subscription.dart';

enum PayMtd {gpay, phonepe, paytm}

class PaymentMethod extends StatefulWidget {
  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  PayMtd? paymentmtd = PayMtd.gpay;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white, size: 20),
        backgroundColor: Colors.black87,
        title: Text(
          'Payment Method',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Card(
                color: Colors.green.shade100,
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total Amount', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      Text('Rs. 1499', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.green.shade900),)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 11,),
            Text('Choose payment method', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.white,
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('UPI Apps', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                      SizedBox(height: 4,),
                      ListTile(
                        leading: Image.asset('assets/images/gpay.png', width: 40,),
                        title: Text('GPay'),
                        trailing: Radio<PayMtd>(
                          value: PayMtd.gpay,
                          groupValue: paymentmtd,
                          onChanged: (PayMtd? value){
                            setState(() {
                              paymentmtd == value;
                            });
                          },),
                      ),
                      Divider(color: Colors.grey,),
                      ListTile(
                        leading: Image.asset('assets/images/phonepe.png', width: 40,),
                        title: Text('PhonePe'),
                        trailing: Radio<PayMtd>(
                          value: PayMtd.phonepe,
                          groupValue: paymentmtd,
                          onChanged: (PayMtd? value){
                            setState(() {
                              paymentmtd == value;
                            });
                          },),
                      ),
                      Divider(color: Colors.grey,),
                      ListTile(
                        leading: Image.asset('assets/images/paytm.webp', width: 40,),
                        title: Text('Paytm'),
                        trailing: Radio<PayMtd>(
                          value: PayMtd.paytm,
                          groupValue: paymentmtd,
                          onChanged: (PayMtd? value){
                            setState(() {
                              paymentmtd == value;
                            });
                          },),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 21,),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MySubscription()));
              },
              child: Text(
                'Make Payment',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              style: ButtonStyle(
                  backgroundColor:
                  WidgetStateProperty.all(Colors.red.shade900),
                  minimumSize: WidgetStateProperty.all(
                      Size(double.infinity, 50))),
            ),
          ],
        ),
      ),
    );
  }
}