import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megha/payment_method.dart';

class SubscripionPlan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white, size: 20),
        backgroundColor: Colors.black87,
        title: Text('Subscription Plan', style: TextStyle(color: Colors.white, fontSize: 18),),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card(
                  elevation: 11,
                  color: Colors.transparent,
                  child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Color(0xffa18cd1),
                                  Color(0xfffbc2eb)
                                ]
                            ),
                            borderRadius: BorderRadius.circular(11)
                        ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Weekly Plan', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),),
                                Image.asset('assets/images/thali-2.png', width: 150,)
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Includes Lunch & Dinner per day', style: TextStyle(fontSize: 15),)
                              ],
                            ),
                            Divider(color: Colors.black54,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('INR 1499/-', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                                InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentMethod()));
                                  },
                                  child: Text('Buy Now', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: Colors.red.shade900),),
                                )
                              ],
                            ),
                          ],
                        ),
                    ),
                  ),
                ),
              SizedBox(height: 11,),
              Card(
                elevation: 11,
                color: Colors.transparent,
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Color(0xff43e97b),
                            Color(0xff38f9d7)
                          ]
                      ),
                      borderRadius: BorderRadius.circular(11)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Monthly Plan', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),),
                            Image.asset('assets/images/veg-thali.webp', width: 150,)
                          ],
                        ),
                        SizedBox(height: 11,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Includes Lunch & Dinner per day', style: TextStyle(fontSize: 15),)
                          ],
                        ),
                        Divider(color: Colors.black54,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('INR 5999/-', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentMethod()));
                              },
                              child: Text('Buy Now', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: Colors.red.shade900),),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 11,
              ),
              Card(
                elevation: 11,
                color: Colors.transparent,
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Color(0xfff6d365),
                            Color(0xfffda085)
                          ]
                      ),
                      borderRadius: BorderRadius.circular(11)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Weekly Plan', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),),
                            Image.asset('assets/images/thali-2.png', width: 150,)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Includes one time meal per day', style: TextStyle(fontSize: 15),)
                          ],
                        ),
                        Divider(color: Colors.black54,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('INR 1049/-', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentMethod()));
                              },
                              child: Text('Buy Now', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: Colors.red.shade900),),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 11,),
              Card(
                elevation: 11,
                color: Colors.transparent,
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Color(0xff4facfe),
                            Color(0xff00f2fe)
                          ]
                      ),
                      borderRadius: BorderRadius.circular(11)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Monthly Plan', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),),
                            Image.asset('assets/images/veg-thali.webp', width: 150,)
                          ],
                        ),
                        SizedBox(height: 11,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Includes one time meal per day', style: TextStyle(fontSize: 15),)
                          ],
                        ),
                        Divider(color: Colors.black54,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('INR 4499/-', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentMethod()));
                              },
                              child: Text('Buy Now', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: Colors.red.shade900),),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 21,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Terms of Use:', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                      Text('1. Once the purchase is made, it cannot be refunded.'),
                      Text('2. You can upgrade your plan anytime you want to and that will get applicable automatically after previous plan is over.'),
                      Text('3. Your plan includes one lunch and one dinner of per day.'),
                      Text('4. You can order extra meal or individual meal by going in home section.'),
                      Text('5. Bill for extra meal or individual meal will be not part of your subscription plan. It will be considered separate and will be pre-paid.'),
                      Text('6. We only serve home made food and meals can be customised according to your choice.'),
                      Text('7. All non-subscription meal should be booked one day or 2 hours prior.'),
                      Text('8. In case of not availability from your side should be informed 4 hours prior and your subscription plan expiring date will be extended'),
                      Text('9. In case non-availability from our side will be informed prior to you and your subscription plan expiring date will be extended'),
                      Text('10. In case you failed to inform before 4 hours then your subscription plan expiring date will remain same.'),
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