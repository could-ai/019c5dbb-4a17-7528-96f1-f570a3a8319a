class Product {
  final String id;
  final String title;
  final String imageUrl;
  final double priceMin;
  final double priceMax;
  final int moq; // Minimum Order Quantity
  final String supplierName;
  final int yearsActive;
  final bool isVerified;

  const Product({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.priceMin,
    required this.priceMax,
    required this.moq,
    required this.supplierName,
    required this.yearsActive,
    required this.isVerified,
  });
}
