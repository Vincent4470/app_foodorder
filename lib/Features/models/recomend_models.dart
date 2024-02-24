class ProductModel
 {
  final String label;
  final String rating;
  final String imageUrl;
  final String price;
  final String tags;

  ProductModel
  (
      {required this.imageUrl,
      required this.label,
      required this.price,
      required this.rating,
      required this.tags});

  factory ProductModel
  .fromJson(Map<String, dynamic> json) => ProductModel
  (
        imageUrl: json['imageUrl'],
        label: json['label'],
        price: json['price'],
        rating: json['rating'],
        tags: json['tags'],
      );

  Map<String, dynamic> toJson() {
    return {
      'imageUrl': imageUrl,
      'label': label,
      'price': price,
      'rating': rating,
      'tags': tags,
    };
  }

  ProductModel
   copyWith({
    String? imageUrl,
    String? label,
    String? price,
    String? rating,
    String? tags,
  }) {
    return ProductModel
    (
      imageUrl: imageUrl ?? this.imageUrl,
      label: label ?? this.label,
      price: price ?? this.price,
      rating: rating ?? this.rating,
      tags: tags ?? this.tags,
    );
  }
}
