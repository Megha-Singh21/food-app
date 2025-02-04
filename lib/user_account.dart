import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megha/add_address.dart';
import 'package:megha/all-address.dart';
import 'package:megha/edit_user_account.dart';

class UserAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white, size: 20),
        backgroundColor: Colors.black87,
        title: Text('My Account', style: TextStyle(color: Colors.white, fontSize: 18),),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.black87,
            height: 250,
            child: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                            child: Image.asset('assets/images/female-pp.png', width: 80, height: 80, fit: BoxFit.fill,),
                          ),
                        SizedBox(
                          height: 15,
                        ),
                        Text('Megha Singh', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),),
                        Text('+91 6767676767', style: TextStyle(color: Colors.white),),
                        Text('megha@gmail.com', style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  Padding(
                    padding: const EdgeInsets.only(left: 11),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => EditUserAccount()));
                          },
                          child: Icon(Icons.edit, color: Colors.white, size: 25,),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
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
                          Text('Wallet', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700),),
                          Text('Rs. 0', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700),)
                        ],
                      ),
                      Divider(color: Colors.black54,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: (){},
                            child: Text('Add Money', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Colors.red.shade900),),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 11,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Addresses', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700),),
                          Text('lorem ispsum. my ahsxgusx sfiosr t8janvz zazxnxiav, ingai, agia - 578471', style: TextStyle(fontSize: 14, color: Colors.grey.shade700),)
                        ],
                      ),
                      Divider(color: Colors.black54,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => AllAddress()));
                            },
                            child: Text('View All', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Colors.red.shade900),),
                          ),
                          SizedBox(width: 21,),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => AddAddress()));
                            },
                            child: Text('Add New', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Colors.red.shade900),),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

}