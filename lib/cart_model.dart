

class Cart {
  late final int id;
  late final String productName;
  late final String productUnit;
  late final double productPrice;
  late final String productImage;
  late final int quantity;
  late final String productId;
  late final String productDescription;
  late final String productCategory;
  late final String productBrand;

  Cart({
    required this.id,
    required this.productName,
    required this.productUnit,
    required this.productPrice,
    required this.productImage,
    required this.quantity,
    required this.productId,
    required this.productDescription,
    required this.productCategory,
    required this.productBrand,
  });

  Cart.fromMap(Map<dynamic, dynamic> resource) {
    id = resource['id'];
    productName = resource['productName'];
    productUnit = resource['productUnit'];
    productPrice = resource['productPrice'].toDouble();
    productImage = resource['productImage'];
    quantity = resource['quantity'];
    productId = resource['productId'];
    productDescription = resource['productDescription'];
    productCategory = resource['productCategory'];
    productBrand = resource['productBrand'];
  }

  Map<String, Object> toMap() {
    return {
      'id': id,
      'productName': productName,
      'productUnit': productUnit,
      'productPrice': productPrice,
      'productImage': productImage,
      'quantity': quantity,
      'productId': productId,
      'productDescription': productDescription,
      'productCategory': productCategory,
      'productBrand': productBrand,
    };
  }

}