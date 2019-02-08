import 'package:flutter/material.dart';
import 'package:nandighos/other/constatnts.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUsFragment extends StatefulWidget{
  @override
  AboutUsFragmentState createState() {
    return new AboutUsFragmentState();
  }
}

class AboutUsFragmentState extends State<AboutUsFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            height: MediaQuery.of(context).size.height/3.0,
            width: MediaQuery.of(context).size.width,
            child: Image.network(
              "https://images.pexels.com/photos/1579739/pexels-photo-1579739.jpeg?cs=srgb&dl=chairs-chandelier-design-1579739.jpg&fm=jpg",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.01,),
          Text(
            "Nandighosh",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width*0.1,
              fontWeight: FontWeight.bold,
              color: Colors.pink,
            ),
          ),
          Container(
            alignment: Alignment(0.5, 0.0),
            child: Text(
              "Food And Services",
              //textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width*0.05,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.pink,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
            child: Card(
              elevation: 4.0,
              color: Colors.blue[100],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                  style: TextStyle(
                    fontSize: 13.0,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () async {
              if (await canLaunch(Constants.WEBSITE)) {
              await launch(Constants.WEBSITE);
              } else {
              throw 'Could not launch ${Constants.WEBSITE}';
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
              child: Card(
                elevation: 4.0,
                color: Colors.blue[100],
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.language,color: Colors.pinkAccent,size: 30.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'nandighosfoodnservices.com',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          GestureDetector(
            onTap: (){
              launch("mailto:"+Constants.EMAIL_ADDRESS);
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
              child: Card(
                elevation: 4.0,
                color: Colors.blue[100],
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.email,color: Colors.pinkAccent,size: 30.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                          Constants.EMAIL_ADDRESS,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: ()  {
              launch("tel:"+Constants.PHONE_NUMBER);
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
              child: Card(
                elevation: 4.0,
                color: Colors.blue[100],
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.call,color: Colors.pinkAccent,size: 30.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        Constants.PHONE_NUMBER,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}