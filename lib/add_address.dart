import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megha/user_account.dart';

class AddAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white, size: 20),
        backgroundColor: Colors.black87,
        title: Text(
          'Add New Addresses',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.center,
              child: Image.asset('assets/images/location.gif', width: 300,),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                alignment: Alignment.center,
                  child: Text('Please provide your locality to get your delicious food on your table!', style: TextStyle(color: Colors.black54, fontSize: 16),)
              ),
            ),
            SizedBox(height: 11,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          label: Text('Building No.', style: TextStyle(color: Colors.black54),),
                        ),
                      ),
                      SizedBox(height: 11,),
                      TextField(
                        decoration: InputDecoration(
                          label: Text('Area', style: TextStyle(color: Colors.black54),),
                        ),
                      ),
                      SizedBox(height: 11,),
                      TextField(
                        decoration: InputDecoration(
                          label: Text('PINCODE', style: TextStyle(color: Colors.black54),),
                          suffixIcon: Icon(Icons.my_location),
                        ),
                      ),
                      SizedBox(height: 21,),
                      ElevatedButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => UserAccount(),));
                        },
                        child: Text('Save', style: TextStyle(color: Colors.white, fontSize: 20),),
                        style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(Colors.red.shade900),
                            minimumSize: WidgetStateProperty.all(Size(double.infinity, 50))
                        ),
                      ),
                    ],
                  )
              ),
            )
          ],
        ),
      ),
    );
  }

}