class ArticalModel{

  final String status;
  final List<Articals> articals;

  ArticalModel(
      {
       required this.status,
      required  this.articals
      }
      );

  factory ArticalModel.fromJson(Map<String, dynamic> json) {
    return ArticalModel(
      status: json["status"],
      articals:
      (json["articals"]as List).map((i) => Articals.fromJson(i)).toList(),

      //List.from(json["articals"]).map((i) => Articals.fromJson(i)).toList(),
    );
  }
//
}

class Articals {
  final String author;
  final String title;
  final String description;
  final String url;
  final String urlImage;
  final String publishedAt;

  Articals({

   required  this.author,
    required this.title,
    required this.description,
   required  this.url,
    required this.urlImage,
    required this.publishedAt

  });

  factory Articals.fromJson(Map<String, dynamic> json) {
    return Articals(
      author: json["author"],//["source"]["name"],
      title: json["title"],
      description: json["description"],
      url: json["url"],
      urlImage: json["urlToImage"],
      publishedAt: json["publishedAt"],);
  }



}