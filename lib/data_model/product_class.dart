class Productt {
  final String img;
  final String title;
  final String description;
  final double price;
  final double rating;
  Productt(
      {required this.img,
      required this.title,
      required this.description,
      required this.price,
      required this.rating});
}

List<Productt> productList = [
  Productt(
      img: "assets/p1.jpg",
      title: "Samsung Galaxy A05 LTE",
      description:
          "Samsung Galaxy A05 LTE, Android Smartphone, Dual SIM Mobile Phone, 4GB RAM, 64GB Storage, Black",
      price: 5.399,
      rating: 3.4),
  Productt(
      img: "assets/p2.jpg",
      title: "Samsung galaxy s23+",
      description:
          "Samsung galaxy s23+, 256gb 8gb ram, cream, 5g mobile phone, dual sim, android smartphone, 1 year manufacturer warranty",
      price: 5.399,
      rating: 3.4),
  Productt(
      img: "assets/p3.jpg",
      title: "Samsung Galaxy A54",
      description:
          "Samsung Galaxy A54 - Dual SIM Mobile Phone Android, 8GB RAM, 128GB, 5G, Awesome Lime",
      price: 5.399,
      rating: 3.4),
  Productt(
      img: "assets/p4.jpg",
      title: "Samsung Galaxy M34",
      description:
          "Samsung Galaxy M34, Dual SIM, 6GB RAM, 128GB Storage, 5G, Dark Blue",
      price: 5.399,
      rating: 3.4),
  Productt(
      img: "assets/p5.jpg",
      title: "SAMSUNG Galaxy S24 Ultra",
      description:
          "SAMSUNG Galaxy S24 Ultra, AI Android Smartphone, 256GB Storage, 12GB RAM, 200MP Camera, S Pen, Long Battery Life - Titanium Gray",
      price: 5.399,
      rating: 3.4),
  Productt(
      img: "assets/p6.jpg",
      title: "SAMSUNG Galaxy A04",
      description:
          "SAMSUNG Galaxy A04 Dual SIM Smartphone- 4GB RAM, 64GB Storage, LTE, Copper",
      price: 5.399,
      rating: 3.4),
  Productt(
      img: "assets/p7.jpg",
      title: "Samsung Galaxy A15",
      description:
          "Samsung Galaxy A15 Dual SIM 4GB Ram+128GB ROM (6.5 Inches) (4G LTE) - (Black)",
      price: 5.399,
      rating: 3.4),
];
