import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:badges/badges.dart' as badges;
import 'package:megha/biryani_meal.dart';
import 'package:megha/cart.dart';
import 'package:megha/feedback.dart';
import 'package:megha/my_order.dart';
import 'package:megha/my_subscription.dart';
import 'package:megha/non_veg_meal.dart';
import 'package:megha/splash_page.dart';
import 'package:megha/support.dart';
import 'package:megha/user_account.dart';
import 'package:megha/veg_meal.dart';
import 'package:toggle_switch/toggle_switch.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1569058242252-623df46b5025?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1542367592-8849eb950fd8?q=80&w=1931&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1633945274405-b6c8069047b0?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto-Regular',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple.shade900),
        useMaterial3: true,
      ),
      home: SplashPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  var arrImageName = ['Non Veg Meal', 'Veg Meal', 'Chicken Biryani'];

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = imgList
        .map((item) => Container(
      child: Container(
        margin: EdgeInsets.all(1.0),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            child: Stack(
              children: <Widget>[
                Image.network(item, fit: BoxFit.cover, height: 200.0, width: 1000.0,),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(200, 0, 0, 0),
                          Color.fromARGB(0, 0, 0, 0)
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    child: Text(arrImageName[0],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                ),
                )
              ],
            )),
      ),
    )).toList();
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.red.shade900,
        title: Text("DaBba", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800),),
      ),
      drawer: const NavigationDrawer(),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: Colors.black87,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.red, size: 25,),
                      SizedBox(
                        width: 2,
                      ),
                      Text('Sector 7, HSR Layout', style: TextStyle(color: Colors.white, fontSize: 15,),)
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MySubscription()));
                        },
                          child: Image.asset('assets/images/crown.png', width: 25,)
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
                        },
                          child: badges.Badge(
                            badgeContent: Text("2"),
                              child: Icon(Icons.add_shopping_cart_sharp, color: Colors.white, size: 25,)
                          ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                hintText: 'What you want to have?',
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.search),
                border: InputBorder.none
              ),
            ),
          ),
          Container(
            child: CarouselSlider(
              items: imageSliders,
              carouselController: _controller,
              options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black)
                          .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                ),
              );
            }).toList(),

          ),
          Column(
            children: [
              Wrap(
                children: [
                  Container(
                    width: 190,
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => VegMeal()));
                      },
                      child: Card(
                        color: Colors.white,
                        shadowColor: Colors.grey.shade100,
                        elevation: 21,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Veg', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                              Image.asset('assets/images/veg.png', width: 80,)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 190,
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => NonVegMeal()));
                      },
                      child: Card(
                        color: Colors.white,
                        shadowColor: Colors.grey.shade100,
                        elevation: 21,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Non-Veg', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                              Image.asset('assets/images/non-veg.png', width: 80,)
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Wrap(
                children: [
                  Container(
                    width: 190,
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => BiryaniMeal()));
                      },
                      child: Card(
                        color: Colors.white,
                        shadowColor: Colors.grey.shade100,
                        elevation: 21,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Biryani', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                              Image.asset('assets/images/biryani.png', width: 80,)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 190,
                    child: Card(
                      color: Colors.white,
                      shadowColor: Colors.grey.shade100,
                      elevation: 21,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Egg', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                            Image.asset('assets/images/egg-meal.png', width: 80,)
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          )

        ],
      )

    );

  }
}
class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildHeader(context),
          buildMenuItems(context),
        ],
      ),
    ),
  );
  
  Widget buildHeader(BuildContext context) => Container(
    color: Colors.red.shade900,
      child: Padding(
        padding: const EdgeInsets.only(top: 50.0, bottom: 10.0),
        child: ListTile(
          leading: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 25,
              child: Icon(Icons.account_circle, size:50, color: Colors.green,)),
          title: Text('Hi Megha', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),),
          subtitle: Text('+91 7656782345', style: TextStyle(color: Colors.white),),
          onTap: (){},
        ),
      ),
  );
  
  Widget buildMenuItems(BuildContext context) => Container(
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Wrap(
        children: [
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.grey.shade700),),
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.card_giftcard),
            title: Text('My Subscription',  style: TextStyle(fontWeight: FontWeight.w600, color: Colors.grey.shade700),),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => MySubscription()));
            },
          ),
          ListTile(
            leading: Icon(Icons.list_alt),
            title: Text('My Orders',  style: TextStyle(fontWeight: FontWeight.w600, color: Colors.grey.shade700),),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyOrder()));
            },
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('My Account',  style: TextStyle(fontWeight: FontWeight.w600, color: Colors.grey.shade700),),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => UserAccount()));
            },
          ),
          Divider(color: Colors.black54,),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notification',  style: TextStyle(fontWeight: FontWeight.w600, color: Colors.grey.shade700),),
            trailing: ToggleSwitch(
              customWidths: [50.0, 30.0],
              minHeight: 30.0,
              cornerRadius: 20.0,
              activeBgColors: [[Colors.cyan], [Colors.redAccent]],
              activeFgColor: Colors.white,
              inactiveBgColor: Colors.grey,
              inactiveFgColor: Colors.white,
              totalSwitches: 2,
              labels: ['YES', ''],
              icons: [null, Icons.close],
              onToggle: (index) {
                print('switched to: $index');
              },
            ),
          ),
          ListTile(
            leading: Icon(Icons.support_agent_sharp),
            title: Text('Support',  style: TextStyle(fontWeight: FontWeight.w600, color: Colors.grey.shade700),),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Support()));
            },
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Feedback',  style: TextStyle(fontWeight: FontWeight.w600, color: Colors.grey.shade700),),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyFeedback()));
            },
          ),
        ],
      ),
    ),
  );
}

