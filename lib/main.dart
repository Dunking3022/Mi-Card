import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse("tel:911");
final Uri _urltwo = Uri.parse("mailto:geetanshsaini@protonmail.com");

callLaunch(_url){
  launchUrl(_url);
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0x111113FF),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 500,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 100),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('images/hamter.gif'),
                  radius: 120,
                ),
              ),
            ),
            Text(
              "Dunking",
              style: TextStyle(
                  fontFamily: "ArchitectsDaughter",
                  fontSize: 40,
                  color: Colors.white),
            ),
            Text(
              "Flutter Enjoyer",
              style: TextStyle(
                fontFamily: "SourceSansPro",
                fontSize: 30,
                color: Colors.orangeAccent[400].withOpacity(0.8),
                letterSpacing: 4,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 25,width: 350,
            child: Divider(thickness: 05, color: Colors.teal[200],),),
            InkWell(
              onTap: () {
                callLaunch(_url);
              }, // Handle your callback
              child: Card(
                color: Colors.white,
                margin: EdgeInsets.fromLTRB(25,30,25,10),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: ListTile(
                    title: Text("+91 118966325",
                      style: TextStyle(
                        color: Colors.black,
                      ),),
                    leading: Icon(
                        Icons.phone,
                        color:Colors.teal,
                        size:30
                    ),
                  )
                ),
              ),
            ),

            InkWell(
              onTap: () {
                callLaunch(_urltwo);
              },
              child: Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ListTile(
                    title: Text("geetanshsaini@protonmail.com",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),

                    leading: Icon(
                        Icons.mail,
                        color:Colors.teal,
                        size:30
                    ),

                  )
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}

