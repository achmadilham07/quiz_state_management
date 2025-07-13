class Product {
  final String id;
  final String name;
  final String description;
  final String price;
  final String imageUrl;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });
}

final List<Product> products = [
  Product(
    id: 'p1',
    name: 'Laptop Gaming X1',
    description: 'Laptop canggih untuk gaming dan pekerjaan berat.',
    price: "Rp 15.000.000",
    imageUrl: 'https://picsum.photos/id/1/1000',
  ),
  Product(
    id: 'p2',
    name: 'Smartphone Pro Y2',
    description: 'Smartphone dengan kamera terbaik dan performa cepat.',
    price: "Rp 8.500.000",
    imageUrl: 'https://picsum.photos/id/2/1000',
  ),
  Product(
    id: 'p3',
    name: 'Headphone Noise Cancelling Z3',
    description: 'Headphone dengan teknologi peredam bising terbaik.',
    price: "Rp 2.500.000",
    imageUrl: 'https://picsum.photos/id/3/1000',
  ),
  Product(
    id: 'p4',
    name: 'Smartwatch Ultra W4',
    description: 'Jam tangan pintar dengan fitur kesehatan lengkap.',
    price: "Rp 3.800.000",
    imageUrl: 'https://picsum.photos/id/4/1000',
  ),
];
