import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megha/order_status.dart';

class Cart extends StatefulWidget {
  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white, size: 20),
        backgroundColor: Colors.black87,
        title: Text(
          'My Cart',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.red.shade900,
        child: InkWell(
          onTap: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OrderStatus()));
          },
          child: Column(
            children: [
              Text(
                'Place Order',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Total amount: Rs. 0',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 11,
                child: ListTile(
                  leading: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 5,
                      child: Image.asset(
                        'assets/images/img3.jpg',
                        width: 50,
                      )
                  ),
                  title: Text(
                    'Veg Meal',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  trailing: Text(
                    'Rs. 149',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.red.shade900),
                  ),
                ),
              ),
              SizedBox(
                height: 11,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Apply Coupon',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 11,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 250,
                              child: TextField(
                                textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration(
                                  hintText: 'Choose Coupon...',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black))
                                ),
                              ),
                            ),
                            SizedBox(width: 5,),
                            OutlinedButton(
                                onPressed: () {},
                                child: Text(
                                  'APPLY',
                                  style: TextStyle(color: Colors.red.shade900),
                                ))
                          ],
                        ),
                        Text(
                          'Rs. 75 off applied on this order',
                          style: TextStyle(color: Colors.green),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 11,),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: ListTile(
                      leading: Checkbox(value: true, onChanged: (value){
                        setState(() {
                          
                        });
                      }),
                      title: Text('Use Subscription', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 11,),
              Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Amount Details', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                        ListTile(
                          title: Text('Food Charges'),
                          trailing: Text('Rs. 149', style: TextStyle(fontSize: 15),),
                        ),
                        ListTile(
                          title: Text('Delivery Fee'),
                          trailing: Text('Rs. 0', style: TextStyle(fontSize: 15),),
                        ),
                        ListTile(
                          title: Text('Subscription Used'),
                          trailing: Text('- Rs. 149', style: TextStyle(fontSize: 15, color: Colors.green),),
                        ),
                        Divider(color: Colors.grey,),
                        ListTile(
                          title: Text('Total payable amount', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                          trailing: Text('Rs. 0', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
