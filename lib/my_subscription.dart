import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megha/custom_meal.dart';
import 'package:megha/subscription_plans.dart';

class MySubscription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white, size: 20),
        backgroundColor: Colors.black87,
        title: Text('My Subscription', style: TextStyle(color: Colors.white, fontSize: 18),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 11,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Current Plan', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
                            Text('Weekly/No Plan/Monthly', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),)
                          ],
                        ),
                        Divider(color: Colors.black54,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Expiring on: 29/01/2025', style: TextStyle(fontSize: 13,),),
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => SubscripionPlan()));
                              },
                              child: Text('Upgrade Now/Buy Now', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.red.shade900),),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CustomMeal()));
                  },
                  child: Text('Schedule Meal', style: TextStyle(color: Colors.white, fontSize: 15,),),
                  style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.black87)
                  ),
                ),
                ElevatedButton(
                  onPressed: (){},
                  child: Text('Cancel Meal', style: TextStyle(color: Colors.white, fontSize: 15,),),
                  style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.grey.shade600)
                  ),
                ),
              ],
            ),
            ElevatedButton(
                onPressed: (){
                  showDialog(context: context, builder: (context) => CancelConfirm(), barrierDismissible: true);
                },
                child: Text('Cancel Subscription', style: TextStyle(color: Colors.white, fontSize: 15,),),
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.red.shade900)
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
    );
  }

}
Widget CancelConfirm(){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 200,
      child: Card(
        color: Colors.white,
        elevation: 21,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text('Are you sure you want to cancel your subscription?', style: TextStyle(fontSize: 15, color: Colors.black),),
                ElevatedButton(onPressed: (){}, child: Text('Yes'))
              ],
            ),
          ),
        ),
      ),
    ),
  );
}