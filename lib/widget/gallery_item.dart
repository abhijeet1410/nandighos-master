import 'package:flutter/material.dart';
import 'package:nandighos/other/constatnts.dart';
import 'package:nandighos/pojo/gallery_model.dart';

class GalleryItem extends StatelessWidget{
  Gallery gallery;

  GalleryItem(this.gallery);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/4,
      width: MediaQuery.of(context).size.width/2,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Card(
          elevation: 4.0,
          child: Image.network(
              Constants.GALLERY_URL+gallery.url,
              height: MediaQuery.of(context).size.height/4,
              width: MediaQuery.of(context).size.width/2,
          ),
        ),
      ),
    );
  }

}