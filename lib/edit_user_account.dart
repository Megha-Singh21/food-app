import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megha/user_account.dart';
import 'package:image_picker/image_picker.dart';

class EditUserAccount extends StatefulWidget {
  @override
  State<EditUserAccount> createState() => _EditUserAccountState();
}

class _EditUserAccountState extends State<EditUserAccount> {
  late PickedFile _imageFile = PickedFile('');
  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white, size: 20),
        backgroundColor: Colors.black87,
        title: Text('Edit Account', style: TextStyle(color: Colors.white, fontSize: 18),),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, bottom: 20, left: 10, right: 10),
        child: Column(
          children: <Widget>[
            imageProfile(),
            SizedBox(height: 11,),
            TextField(
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700,),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(
                        color: Colors.red.shade900,
                        width: 2,
                    ),
                ),
                label: Text('Name', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.grey),),
              ),
            ),
            SizedBox(height: 11,),
            TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700,),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(
                    color: Colors.red.shade900,
                    width: 2,
                  ),
                ),
                label: Text('Email', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.grey),),
              ),
            ),
            SizedBox(height: 11,),
            TextField(
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700,),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(
                    color: Colors.red.shade900,
                    width: 2,
                  ),
                ),
                label: Text('Mobile No.', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.grey),),
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
        ),
      ),
    );
  }

Widget imageProfile(){
    return Stack(
      children: <Widget>[
        CircleAvatar(
          radius: 80.0,
          backgroundImage: _imageFile == null ? AssetImage('assets/images/female-pp.png'):FileImage(File(_imageFile.path)),
        ),
        Positioned(
          bottom: 20.0,
            right: 0.0,
            child: InkWell(
              onTap: (){
                showModalBottomSheet(context: context, builder: ((builder) => bottomSheet()),);
              },
                child: Icon(Icons.camera_alt, size: 40, color: Colors.red.shade900,))
        )
      ],
    );
}

Widget bottomSheet(){
    return Container(
      height: 100.0,
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: <Widget>[
          Text('Choose Profile Photo', style: TextStyle(fontSize: 20),),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              InkWell(
                child: Icon(Icons.camera_alt_outlined),
                onTap: (){
                  takePhoto(ImageSource.camera);
                },
              ),
              InkWell(
                child: Icon(Icons.image),
                onTap: (){
                  takePhoto(ImageSource.gallery);
                },
              ),
            ],
          )
        ],
      ),
    );
}
Future takePhoto(ImageSource source) async{
  final pickedFile = await _picker.pickImage(
    source: source,
  );
  setState(() {
    _imageFile = pickedFile as PickedFile;
  });
}
}
