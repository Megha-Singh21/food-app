import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomMeal extends StatefulWidget{

  @override
  State<CustomMeal> createState() => _CustomMealState();
}

class _CustomMealState extends State<CustomMeal> {
  TimeOfDay _time = TimeOfDay.now();
  late TimeOfDay picked;

  Future<Null> selectTime(BuildContext context) async{
    picked = (await showTimePicker(
        context: context,
        initialTime: _time
    ))!;
    setState(() {
      _time = picked;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white, size: 20),
        backgroundColor: Colors.black87,
        title: Text('Meal Schedule', style: TextStyle(color: Colors.white, fontSize: 18),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  color: Colors.white,
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 180,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/images/lunch-banner.jpeg'), fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Lunch', style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Text('Meal Type', style: TextStyle(fontSize: 18, color: Colors.black54, fontWeight: FontWeight.w700),),
                        Row(
                          children: [
                            RadioMenuButton(value: 'veg', groupValue: 'mealtype', onChanged: (value){
                              setState(() {
                                value = 'veg';
                              });
                            },
                                child: Text('Veg')
                            ),
                            RadioMenuButton(value: 'nonveg', groupValue: 'mealtype', onChanged: (value){
                              setState(() {
                                value = 'nonveg';
                              });
                            },
                                child: Text('Non Veg')
                            )
                          ],
                        ),
                        Row(
                          children: [
                            RadioMenuButton(value: 'biryani', groupValue: 'mealtype', onChanged: (value){
                              setState(() {
                                value = 'biryani';
                              });
                            },
                                child: Text('Biryani')
                            ),
                            RadioMenuButton(value: 'eggmeal', groupValue: 'mealtype', onChanged: (value){
                              setState(() {
                                value = 'eggmeal';
                              });
                            },
                                child: Text('Egg Meal')
                            )
                          ],
                        ),
                        SizedBox(height: 18,),
                        Text('Lunch Timing', style: TextStyle(fontSize: 18, color: Colors.black54, fontWeight: FontWeight.w700),),
                        Text('Re-schedule before 12 noon', style: TextStyle(color: Colors.grey.shade600),),
                        Row(
                          children: [
                            Text('${_time.format(context)}', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800),),
                            SizedBox(width: 11,),
                            ElevatedButton(
                                onPressed: (){
                                  selectTime(context);
                                },
                                child: Text('Set Time'))
                          ],
                        ),
                        SizedBox(height: 18,),
                        Center(
                          child: ElevatedButton(
                            onPressed: (){},
                            child: Text('Save', style: TextStyle(color: Colors.white, fontSize: 15,),),
                            style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all(Colors.red.shade900)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 11,),
                Card(
                  color: Colors.white,
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 180,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/images/dinner-banner.jpg'), fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Dinner', style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Text('Meal Type', style: TextStyle(fontSize: 18, color: Colors.black54, fontWeight: FontWeight.w700),),
                        Row(
                          children: [
                            RadioMenuButton(value: 'veg', groupValue: 'mealtype', onChanged: (value){
                              setState(() {
                                value = 'veg';
                              });
                            },
                                child: Text('Veg')
                            ),
                            RadioMenuButton(value: 'nonveg', groupValue: 'mealtype', onChanged: (value){
                              setState(() {
                                value = 'nonveg';
                              });
                            },
                                child: Text('Non Veg')
                            )
                          ],
                        ),
                        Row(
                          children: [
                            RadioMenuButton(value: 'biryani', groupValue: 'mealtype', onChanged: (value){
                              setState(() {
                                value = 'biryani';
                              });
                            },
                                child: Text('Biryani')
                            ),
                            RadioMenuButton(value: 'eggmeal', groupValue: 'mealtype', onChanged: (value){
                              setState(() {
                                value = 'eggmeal';
                              });
                            },
                                child: Text('Egg Meal')
                            )
                          ],
                        ),
                        SizedBox(height: 18,),
                        Text('Dinner Timing', style: TextStyle(fontSize: 18, color: Colors.black54, fontWeight: FontWeight.w700),),
                        Text('Re-schedule before 8pm', style: TextStyle(color: Colors.grey.shade600),),
                        Row(
                          children: [
                            Text('${_time.format(context)}', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800),),
                            SizedBox(width: 11,),
                            ElevatedButton(
                                onPressed: (){
                                  selectTime(context);
                                },
                                child: Text('Set Time'))
                          ],
                        ),
                        SizedBox(height: 18,),
                        Center(
                          child: ElevatedButton(
                            onPressed: (){},
                            child: Text('Save', style: TextStyle(color: Colors.white, fontSize: 15,),),
                            style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all(Colors.red.shade900)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}