import 'package:flutter/material.dart';
import 'package:nandighos/other/constatnts.dart';
import 'package:url_launcher/url_launcher.dart';
class AboutAppFragment extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
       child: ListView(
         children: <Widget>[
           Container(
             child: Container(
               padding: EdgeInsets.all(50.0),
               height: MediaQuery.of(context).size.height/3.0,
               width: MediaQuery.of(context).size.width,
               child: Image.network(
                 "https://images.pexels.com/photos/1579739/pexels-photo-1579739.jpeg?cs=srgb&dl=chairs-chandelier-design-1579739.jpg&fm=jpg",
                 fit: BoxFit.cover,
               ),
             ),
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
                Text("Nandi Ghosh Catering",
                style: TextStyle(
                  color: Colors.white70,
                  fontWeight: FontWeight.bold,
                  fontSize: 23.0,
                ),
                ),
             ],
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Text("Version 1.0.0",
                   style: TextStyle(
                     color: Colors.white70,
                     fontStyle: FontStyle.italic,
                     fontSize: 15.0,
                   ),
                 ),
               ],
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text(
                 "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                 style: TextStyle(
                   fontSize: 13.0,
                   color: Colors.white70,
                 ),
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(23.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Text("© com.smattersstudio.com",
                   style: TextStyle(
                     color: Colors.white70,
                     fontStyle: FontStyle.italic,
                     fontSize: 18.0,
                   ),
                 ),
               ],
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(0.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Text("All rights reserved",
                   style: TextStyle(
                     color: Colors.white70,
                     fontStyle: FontStyle.italic,
                     fontSize: 15.0,
                   ),
                 ),
               ],
             ),
           ),
           GestureDetector(
             onTap: () async {
               if (await canLaunch(Constants.SMATTERS_STUDIO_WEBSITE)) {
                 await launch(Constants.SMATTERS_STUDIO_WEBSITE);
               } else {
                 throw 'Could not launch ${Constants.SMATTERS_STUDIO_WEBSITE}';
               }
             },
             child: Padding(
               padding: const EdgeInsets.all(20.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Text("OUR TERMS AND CONDITIONS",
                     style: TextStyle(
                       color: Colors.blue,
                       fontWeight: FontWeight.bold,
                       decoration: TextDecoration.underline,
                       fontSize: 18.0,
                     ),
                   ),
                 ],
               ),
             ),
           ),
         ],
       ),
      ),
    );
  }
}