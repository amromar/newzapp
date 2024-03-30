
class ArticleModel{
  final String? title;
  final String? description;
  final String? imageUrl;
  final Source source;

  ArticleModel({required this.title,required this.description,required this.imageUrl, required this.source});
}

class Source{
  final String? id;
  final String? name;

  Source({required this.id,required this.name});
}