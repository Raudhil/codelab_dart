class Pizza {
  static const String keyId = 'id';
  static const String keyName = 'pizzaName';
  static const String keyDescription = 'description';
  static const String keyPrice = 'price';
  static const String keyImage = 'imageUrl';
  static const String keyCategory = 'category'; // Field baru
  static const String keyRating = 'rating'; // Field baru

  final int id;
  final String pizzaName;
  final String description;
  final double price;
  final String imageUrl;
  final String category; // Field baru
  final double rating; // Field baru

  Pizza({
    required this.id,
    required this.pizzaName,
    required this.description,
    required this.price,
    required this.imageUrl,
    this.category = '', // Default value
    this.rating = 0.0, // Default value
  });

  factory Pizza.fromJson(Map<String, dynamic> json) {
    return Pizza(
      id: int.tryParse(json[keyId]?.toString() ?? '0') ?? 0,
      pizzaName: json[keyName]?.toString() ?? 'Unknown Pizza',
      description: json[keyDescription]?.toString() ?? 'No description',
      price: double.tryParse(json[keyPrice]?.toString() ?? '0') ?? 0.0,
      imageUrl: json[keyImage]?.toString() ?? '',
      category: json[keyCategory]?.toString() ?? '', // Parse field baru
      rating: double.tryParse(json[keyRating]?.toString() ?? '0') ?? 0.0, // Parse field baru
    );
  }

  Map<String, dynamic> toJson() {
    return {
      keyId: id,
      keyName: pizzaName,
      keyDescription: description,
      keyPrice: price,
      keyImage: imageUrl,
      keyCategory: category, // Tambahkan ke JSON
      keyRating: rating, // Tambahkan ke JSON
    };
  }
}