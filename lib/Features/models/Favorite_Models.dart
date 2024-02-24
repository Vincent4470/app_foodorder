class RecommendModel {
  final String imageUrl;
  final String rating;
  final String restoName;
  final String menuTitle;
  final String address;
  final bool isFavorite;
  final String price;

  RecommendModel({
    required this.imageUrl,
    required this.rating,
    required this.restoName,
    required this.menuTitle,
    required this.address,
    required this.isFavorite,
    required this.price,
  });

  get tags => null;

  get label => null;

  RecommendModel copyWith({
    String? imageUrl,
    String? address,
    bool? isFavorite,
    String? restoName,
    String? menuTitle,
    String? price,
    String? rating,
  }) {
    return RecommendModel(
      imageUrl: imageUrl ?? this.imageUrl,
      rating: rating ?? this.rating,
      restoName: restoName ?? this.restoName,
      menuTitle: menuTitle ?? this.menuTitle,
      address: address ?? this.address,
      isFavorite: isFavorite ?? this.isFavorite,
      price: price ?? this.price,
    );
  }
}
