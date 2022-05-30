class GalleryModel {
  int id;
  String url;

  GalleryModel({
    this.id,
    this.url,
  });

  GalleryModel.fromjson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'url': url,
    };
  }
}
