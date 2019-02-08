import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:nandighos/other/constatnts.dart';
import 'package:nandighos/pojo/gallery_model.dart';
Future<List<Gallery>> getGalleryItems() async{

  var headers = {
    HttpHeaders.contentTypeHeader : 'application/json'
  };
  final response = await http.get(Constants.API_URL+Constants.GALLERY_API,
      headers: headers
  );
  print(response.statusCode.toString()+"repo github");
  return GalleryFromJson(response.body);
}