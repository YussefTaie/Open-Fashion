class Product {
  final String image;
  final String name;
  final double price;

  Product({required this.image, required this.name, required this.price});

  static List<Product> products = [
    Product(
      image: 'assets/images/img1.png',
      name: '21WN reversible angora cardigan',
      price: 120,
    ),
    Product(
      image: 'assets/images/img2.png',
      name: '21WN reversible angora cardigan',
      price: 120,
    ),
    Product(
      image: 'assets/images/img3.png',
      name: '21WN reversible angora cardigan',
      price: 120,
    ),
    Product(
      image: 'assets/images/img4.png',
      name: '21WN reversible angora cardigan',
      price: 120,
    ),
  ];

  static List<Product> sliderProducts = [
    Product(
      image: 'assets/images/img6.png',
      name: 'Harris Tweed Three button Jacket',
      price: 120,
    ),
    Product(
      image: 'assets/images/img7.png',
      name: 'Cashmere Blend Cropped Jacket',
      price: 120,
    ),
    Product(
      image: 'assets/images/img8.png',
      name: 'Harris Tweed Three-button Jacket',
      price: 120,
    ),
    Product(
      image: 'assets/images/img6.png',
      name: 'Harris Tweed Three button Jacket',
      price: 120,
    ),
  ];
}

class Bannar {
  final String shape;
  final String describtion;

  Bannar({required this.shape, required this.describtion});

  static List<Bannar> shapes = [
    Bannar(
      shape: 'assets/sapes/shape1.svg',
      describtion: 'Fast shipping. Free\non orders over \$25.',
    ),
    Bannar(
      shape: 'assets/sapes/shape2.svg',
      describtion: 'Sustainable process\nfrom start to finish.',
    ),
    Bannar(
      shape: 'assets/sapes/shape3.svg',
      describtion: 'Unique designs\nand high-quality materials.',
    ),
    Bannar(
      shape: 'assets/sapes/shape4.svg',
      describtion: 'Fast shipping.\nFree on orders over \$25.',
    ),
  ];
}
