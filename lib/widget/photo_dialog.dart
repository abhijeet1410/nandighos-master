import 'package:flutter/material.dart';
import 'package:nandighos/other/constatnts.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
class PhotoDialog extends StatefulWidget{
  var _data;
  int _position;

  PhotoDialog(this._data, this._position);

  @override
  PhotoDialogState createState() {
    return new PhotoDialogState(_data,_position);
  }
}

class PhotoDialogState extends State<PhotoDialog> {
  var _data;
  int _position;

  PhotoDialogState(this._data, this._position);


  _getPhotos(){
    List<PhotoViewGalleryPageOptions>  list=new List();
    for(int i=0;i<_data.length;i++){
      list.add(
        PhotoViewGalleryPageOptions(
          imageProvider: NetworkImage( Constants.GALLERY_URL+_data[i].url),
          heroTag: _data[i].name,
        ),
      );
    }
    return list;
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body:PhotoViewGallery(
        customSize: Size(
            MediaQuery.of(context).size.width/0.3,
            MediaQuery.of(context).size.height)/2.0,
        enableRotation: true,
        pageOptions: _getPhotos(),
        pageController: PageController(
          initialPage: _position
        ),
        backgroundDecoration: BoxDecoration(color: Colors.black87),
      ),
    );
  }
}