import 'dart:convert';

List<Gallery> GalleryFromJson(String str) {
  final jsonData = json.decode(str);
  return new List<Gallery>.from(jsonData.map((x) => Gallery.fromJson(x)));
}

class Gallery {
  String name;
  String url;
  Gallery({
    this.name,
    this.url,
  });

  factory Gallery.fromJson(Map<String, dynamic> json) => Gallery(
    name: json["name"],
    url: json["name"],
  );

}
