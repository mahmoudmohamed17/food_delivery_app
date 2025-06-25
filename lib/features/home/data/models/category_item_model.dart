class CategoryItemModel {
  final String title;
  final String image;
  final double startingPrice;

  CategoryItemModel({
    required this.title,
    required this.image,
    required this.startingPrice,
  });

  factory CategoryItemModel.fromJson(Map<String, dynamic> json) {
    return CategoryItemModel(
      title: json['title'] as String,
      image: json['image'] as String,
      startingPrice: (json['startingPrice'] as num).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {'title': title, 'image': image, 'startingPrice': startingPrice};
  }
}
