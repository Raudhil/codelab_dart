class Pizza {
  static const String keyId = 'id';
  static const String keyName = 'pizzaName';
  static const String keyDescription = 'description';
  static const String keyPrice = 'price';
  static const String keyImage = 'imageUrl';

  final int id;
  final String pizzaName;
  final String description;
  final double price;
  final String imageUrl;

  Pizza({
    required this.id,
    required this.pizzaName,
    required this.description,
    required this.price,
    required this.imageUrl,
  });

  factory Pizza.fromJson(Map<String, dynamic> json) {
    return Pizza(
      id: int.tryParse(json[keyId]?.toString() ?? '0') ?? 0,
      pizzaName: json[keyName]?.toString() ?? 'Unknown Pizza',
      description: json[keyDescription]?.toString() ?? 'No description',
      price: double.tryParse(json[keyPrice]?.toString() ?? '0') ?? 0.0,
      imageUrl: json[keyImage]?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      keyId: id,
      keyName: pizzaName,
      keyDescription: description,
      keyPrice: price,
      keyImage: imageUrl,
    };
  }
}