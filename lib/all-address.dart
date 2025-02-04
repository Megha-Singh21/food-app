import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllAddress extends StatefulWidget {
  @override
  State<AllAddress> createState() => _AllAddressState();
}

class _AllAddressState extends State<AllAddress> {
  List<String> _addressaction = ['Make default', 'Remove', 'Edit'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white, size: 20),
        backgroundColor: Colors.black87,
        title: Text(
          'All Addresses',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: Column(
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
                      Container(
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.lightGreen.shade200,
                          borderRadius: BorderRadius.circular(21)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Center(child: Text('Default', style: TextStyle(color: Colors.green.shade900, fontWeight: FontWeight.bold, fontSize: 15),)),
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.home, color: Colors.grey,),
                        title: Text('Home', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        trailing: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            icon: Icon(Icons.more_vert),
                            items: <String>['Make default', 'Remove', 'Edit'].map(
                                  (var value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value.toString()),
                                );
                              },
                            ).toList(),
                              onChanged: (value) {
                                _addressaction = value as List<String>;
                                this.setState(() {});
                              },
                          ),
                        ),
                      ),
                      Divider(color: Colors.black54,),
                      Text('#1018, 1st Floor, 20th Cross rd, Sector 7, HSR Layout 560102', style: TextStyle(color: Colors.black54),)
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
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.work, color: Colors.grey,),
                        title: Text('Work', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        trailing: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            icon: Icon(Icons.more_vert),
                            items: <String>['Make default', 'Remove', 'Edit'].map(
                                  (var value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value.toString()),
                                );
                              },
                            ).toList(),
                            onChanged: (value) {
                              _addressaction = value as List<String>;
                              this.setState(() {});
                            },
                          ),
                        ),
                      ),
                      Divider(color: Colors.black54,),
                      Text('#1018, 1st Floor, 20th Cross rd, Sector 7, HSR Layout 560102', style: TextStyle(color: Colors.black54),)
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
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.home_work_outlined, color: Colors.grey,),
                        title: Text('Other', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        trailing: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            icon: Icon(Icons.more_vert),
                            items: <String>['Make default', 'Remove', 'Edit'].map(
                                  (var value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value.toString()),
                                );
                              },
                            ).toList(),
                            onChanged: (value) {
                              _addressaction = value as List<String>;
                              this.setState(() {});
                            },
                          ),
                        ),
                      ),
                      Divider(color: Colors.black54,),
                      Text('#1018, 1st Floor, 20th Cross rd, Sector 7, HSR Layout 560102', style: TextStyle(color: Colors.black54),)
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
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.home_work_outlined, color: Colors.grey,),
                        title: Text('Other', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        trailing: Container(
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              icon: Icon(Icons.more_vert),
                              items: <String>['Make default', 'Remove', 'Edit'].map(
                                    (var value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value.toString()),
                                  );
                                },
                              ).toList(),
                              onChanged: (value) {
                                _addressaction = value as List<String>;
                                this.setState(() {});
                              },
                            ),
                          ),
                        ),
                      ),
                      Divider(color: Colors.black54,),
                      Text('#1018, 1st Floor, 20th Cross rd, Sector 7, HSR Layout 560102', style: TextStyle(color: Colors.black54),)
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
