import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white, size: 20),
        backgroundColor: Colors.black87,
        title: Text(
          'My Orders',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.yellow.shade200,
                                  borderRadius: BorderRadius.circular(21)),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Center(
                                    child: Text(
                                  'Preparing',
                                  style: TextStyle(
                                      color: Colors.yellow.shade900,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )),
                              ),
                            ),
                            Text('Order ID: #1296543', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black54),)
                          ],
                        ),
                        ListTile(
                          leading: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 5,
                              child: Image.asset(
                                'assets/images/img3.jpg',
                                width: 40,
                              )),
                          title: Text(
                            'Veg Meal',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w800),
                          ),
                          trailing: Text('Rs. 149',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w800),
                          ),
                        ),
                        Divider(
                          color: Colors.black54,
                        ),
                        Text(
                          '#1018, 1st Floor, 20th Cross rd, Sector 7, HSR Layout 560102',
                          style: TextStyle(color: Colors.black54),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.lightGreen.shade200,
                                  borderRadius: BorderRadius.circular(21)),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Center(
                                    child: Text(
                                      'Delivered',
                                      style: TextStyle(
                                          color: Colors.green.shade900,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    )),
                              ),
                            ),
                            Text('Order ID: #1296543', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black54),)
                          ],
                        ),
                        ListTile(
                          leading: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 5,
                              child: Image.asset(
                                'assets/images/img3.jpg',
                                width: 40,
                              )),
                          title: Text(
                            'Veg Meal',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w800),
                          ),
                          trailing: Text('Rs. 149',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w800),
                          ),
                        ),
                        Divider(
                          color: Colors.black54,
                        ),
                        Text(
                          '#1018, 1st Floor, 20th Cross rd, Sector 7, HSR Layout 560102',
                          style: TextStyle(color: Colors.black54),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.red.shade200,
                                  borderRadius: BorderRadius.circular(21)),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Center(
                                    child: Text(
                                      'Cancelled',
                                      style: TextStyle(
                                          color: Colors.red.shade900,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    )),
                              ),
                            ),
                            Text('Order ID: #1296543', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black54),)
                          ],
                        ),
                        ListTile(
                          leading: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 5,
                              child: Image.asset(
                                'assets/images/img3.jpg',
                                width: 40,
                              )),
                          title: Text(
                            'Veg Meal',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w800),
                          ),
                          trailing: Text('Rs. 149',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w800),
                          ),
                        ),
                        Divider(
                          color: Colors.black54,
                        ),
                        Text(
                          '#1018, 1st Floor, 20th Cross rd, Sector 7, HSR Layout 560102',
                          style: TextStyle(color: Colors.black54),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.lightGreen.shade200,
                                  borderRadius: BorderRadius.circular(21)),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Center(
                                    child: Text(
                                      'Delivered',
                                      style: TextStyle(
                                          color: Colors.green.shade900,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    )),
                              ),
                            ),
                            Text('Order ID: #1296543', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black54),)
                          ],
                        ),
                        ListTile(
                          leading: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 5,
                              child: Image.asset(
                                'assets/images/img3.jpg',
                                width: 40,
                              )),
                          title: Text(
                            'Veg Meal',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w800),
                          ),
                          trailing: Text('Rs. 149',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w800),
                          ),
                        ),
                        Divider(
                          color: Colors.black54,
                        ),
                        Text(
                          '#1018, 1st Floor, 20th Cross rd, Sector 7, HSR Layout 560102',
                          style: TextStyle(color: Colors.black54),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.lightGreen.shade200,
                                  borderRadius: BorderRadius.circular(21)),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Center(
                                    child: Text(
                                      'Delivered',
                                      style: TextStyle(
                                          color: Colors.green.shade900,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    )),
                              ),
                            ),
                            Text('Order ID: #1296543', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black54),)
                          ],
                        ),
                        ListTile(
                          leading: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 5,
                              child: Image.asset(
                                'assets/images/img3.jpg',
                                width: 40,
                              )),
                          title: Text(
                            'Veg Meal',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w800),
                          ),
                          trailing: Text('Rs. 149',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w800),
                          ),
                        ),
                        Divider(
                          color: Colors.black54,
                        ),
                        Text(
                          '#1018, 1st Floor, 20th Cross rd, Sector 7, HSR Layout 560102',
                          style: TextStyle(color: Colors.black54),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
