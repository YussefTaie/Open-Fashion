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

class Accounts {
  final String image;
  final String account;
  Accounts({required this.image, required this.account});

  static List<Accounts> acc = [
    Accounts(image: 'assets/images/acc1.png', account: '@mai'),
    Accounts(image: 'assets/images/acc2.png', account: '@_jihyn'),
    Accounts(image: 'assets/images/acc3.png', account: '@mai'),
    Accounts(image: 'assets/images/acc4.png', account: '@_jihyn'),
  ];
}
