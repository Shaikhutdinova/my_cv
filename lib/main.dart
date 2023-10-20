import 'package:flutter/material.dart';
import 'package:my_cv/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyCVScreen(),
    );
  }
}

class MyCVScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 30),
              CircleAvatar(
                radius: 90,
                foregroundImage: AssetImage("images/Iam2.jpg"),
              ),
              Text(
                  "Nata Sh",
                  style: kTitleTextStyle),
              Text("Flutter Developer"),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Card(
                  child: ListTile(
                      leading: Icon(Icons.call),
                      title: Text("+ 7 (9 1 5) 2 8 2 - 5 1 - 9 5", style: kSmallTextStyle),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Card(
                  child: ListTile(
                    leading: Icon(Icons.email),
                    title: Text("1 2 0 1 - 3 @ m a i l . r u", style: kSmallTextStyle),
                  ),
                ),
              ),
              SizedBox(height: 15),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text("Education:", textAlign: TextAlign.center, style: kRergularBoldTextStyle,),
                          SizedBox(height: 3,),
                          Text("NUST MISIS", textAlign: TextAlign.center, style: kRergularTextStyle,),
                          Text("Nanomaterials, Moscow", textAlign: TextAlign.center, style: kRergularTextStyle,),
                        ],
                      ),
                    ),

                    Expanded(
                      child: Column(
                        children: [
                          Text("Work Experience:", textAlign: TextAlign.center, style: kRergularBoldTextStyle,),
                          SizedBox(height: 3,),
                          Text("Scientist", textAlign: TextAlign.center, style: kRergularTextStyle,),
                          Text("Account Manager", textAlign: TextAlign.center, style: kRergularTextStyle,),
                          Text("Flutter Developer", textAlign: TextAlign.center, style: kRergularTextStyle,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
