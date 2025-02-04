import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megha/main.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MyFeedback extends StatefulWidget {
  @override
  State<MyFeedback> createState() => _MyFeedbackState();
}

class _MyFeedbackState extends State<MyFeedback> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white, size: 20),
        backgroundColor: Colors.black87,
        title: Text(
          'Feedback',
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
              child: Image.asset(
                'assets/images/feedback.gif',
                width: 300,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'We value your feedback. Please share your experience to make us improve more!',
                    style: TextStyle(color: Colors.black54, fontSize: 16),
                  )),
            ),
            SizedBox(
              height: 11,
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Rate us', style: TextStyle(color: Colors.grey.shade600, fontSize: 15),),
                    SizedBox(
                      height: 6,
                    ),
                    RatingBar.builder(
                      initialRating: 0,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        label: Text(
                          'Comment',
                          style: TextStyle(color: Colors.black54),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 21,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()));
                      },
                      child: Text(
                        'Save',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all(Colors.red.shade900),
                          minimumSize: WidgetStateProperty.all(
                              Size(double.infinity, 50))),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
