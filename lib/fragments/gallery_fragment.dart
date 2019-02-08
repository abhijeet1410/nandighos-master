import 'package:flutter/material.dart';
import 'package:nandighos/other/apiservices.dart';
import 'package:nandighos/widget/gallery_item.dart';
import 'package:nandighos/widget/photo_dialog.dart';
class GalleryFragment extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:FutureBuilder(
        future: getGalleryItems(),
        builder: (context,snapshot) {
          if(snapshot.hasData){
            return GridView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context,index)=>
                  new GestureDetector(
                      child:GalleryItem(snapshot.data[index]),
                      onTap: (){
                        Navigator.of(context).push(new MaterialPageRoute<Null>(
                            builder: (BuildContext context) {
                              return new PhotoDialog(snapshot.data,index);
                            },
                            fullscreenDialog: true
                        ));
                      },
                  ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            );
          }else{
            return Center(
                child: CircularProgressIndicator()
            );
          }

        },
      ),
    );
  }

}