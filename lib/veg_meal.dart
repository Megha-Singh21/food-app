import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megha/cart.dart';

class VegMeal extends StatefulWidget {
  @override
  State<VegMeal> createState() => _VegMealState();
}

class _VegMealState extends State<VegMeal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white, size: 20),
        backgroundColor: Colors.black87,
        title: Text('Veg Meal', style: TextStyle(color: Colors.white, fontSize: 18),),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.red.shade900,
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
          },
          child: Column(
            children: [
              Text('Move to Cart', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
              Text('1 Item added in your cart', style: TextStyle(color: Colors.white, fontSize: 15,),),
            ],
          ),
        ),
      ),
      body: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 11,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              child: Image.asset('assets/images/img4.jpg'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Roti, Rice, Veg Curry, Dal, Salad, Pickle', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Text('Rs. 149', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800, color: Colors.red.shade700),),
                                    ElevatedButton(
                                       onPressed: (){},
                                       child: Text('Add', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
                                     style: ButtonStyle(
                                          backgroundColor: WidgetStateProperty.all(Colors.red.shade900),
                                     ),
                                   ),
                                   ElevatedButton(
                                     onPressed: (){},
                                     child: Text('Added', style: TextStyle(color: Colors.red.shade900, fontSize: 15, fontWeight: FontWeight.bold),),
                                     style: ButtonStyle(
                                       backgroundColor: WidgetStateProperty.all(Colors.red.shade100),
                                     ),
                                   ),
                                 ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("What's your choice?", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                              SizedBox(height: 11,),
                              ListTile(
                                title: Text('5 Phulka Roti', style: TextStyle(fontWeight: FontWeight.w700),),
                                trailing: Radio(value: 'only-roti', groupValue: 'meal-choice', onChanged: (value){
                                  setState(() {
        
                                  });
                                }),
                              ),
                              ListTile(
                                title: Text('Plain Rice', style: TextStyle(fontWeight: FontWeight.w700),),
                                trailing: Radio(value: 'only-rice', groupValue: 'meal-choice', onChanged: (value){
                                  setState(() {
        
                                  });
                                }),
                              ),
                              ListTile(
                                title: Text('2 Phulka Roti & Rice', style: TextStyle(fontWeight: FontWeight.w700),),
                                trailing: Radio(value: 'both', groupValue: 'meal-choice', onChanged: (value){
                                  setState(() {
        
                                  });
                                }),
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
          ],
        ),
    );
  }
}