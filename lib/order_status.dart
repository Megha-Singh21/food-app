import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white, size: 20),
        backgroundColor: Colors.black87,
        title: Text(
          'Order ID: #147381',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/img2.jpg'), fit: BoxFit.fill),
                gradient: LinearGradient(colors: [Colors.white10, Colors.black54])
              ),
              child: Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Colors.black45, Colors.black87])
                ),
                child: Center(child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 40,
                        child: Icon(Icons.fastfood, size: 50, color: Colors.red.shade700,)),
                    SizedBox(height: 11,),
                    Text('Food is getting prepared', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w800),),
                    SizedBox(height: 5,),
                    Text('Delivery time: 1:30 PM - 2:00 PM', style: TextStyle(color: Colors.white, fontSize: 15),),
                  ],
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                child: Card(
                  elevation: 11,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Order Details', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),),
                        ListTile(
                          leading: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 5,
                              child: Image.asset(
                                'assets/images/img3.jpg',
                                width: 40,
                              )
                          ),
                          title: Text('Veg Meal', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800),),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                child: Card(
                  color: Colors.green.shade200,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Delivery Location', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),),
                        SizedBox(height: 5,),
                        Text('Lorem Ipsum, #1018, 1st floor, 20th cross rd, Sector 7, HSR Layout', style: TextStyle(color: Colors.green.shade900),)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                child: Card(
                  elevation: 11,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Delivery Partner', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),),
                        ListTile(
                          leading: CircleAvatar(
                            radius: 21,
                              backgroundImage: AssetImage('assets/images/male-pp.jpg'),
                          ),
                          title: Text('Abc is your delivery partner', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800),),
                          trailing: CircleAvatar(
                            radius: 21,
                            backgroundColor: Colors.red.shade200,
                            child: InkWell(
                              onTap: (){},
                                child: Icon(Icons.call, color: Colors.red.shade900,)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 11,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                onPressed: (){},
                child: Text('Cancel Order', style: TextStyle(color: Colors.red.shade900, fontSize: 18, fontWeight: FontWeight.bold),),
                style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.white),
                    minimumSize: WidgetStateProperty.all(Size(double.infinity, 50)),
                  side: WidgetStatePropertyAll(BorderSide(color: Colors.red.shade900, width: 2.0))
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: Image.asset('assets/images/delivery.gif', width: double.infinity,),
            )
          ],
        ),
      ),
    );
  }

}