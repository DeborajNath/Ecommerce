class Product {
  final String image, title, reviews, star, starImg;
  final int price, id;

  Product({
    required this.reviews,
    required this.star,
    required this.starImg,
    required this.id,
    required this.image,
    required this.title,
    required this.price,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Men T-Shirt",
      price: 1800,
      image: "assets/shirt1.png",
      reviews: "80",
      star: "4.8",
      starImg: "assets/star.png"),
  Product(
      id: 2,
      title: "Men Shirt",
      price: 1800,
      image: "assets/shirt2.png",
      reviews: "100",
      star: "5.0",
      starImg: "assets/star.png"),
  Product(
      id: 3,
      title: "Women T-Shirt",
      price: 1800,
      image: "assets/shirt3.png",
      reviews: "250",
      star: "3.8",
      starImg: "assets/star.png"),
  Product(
      id: 4,
      title: "Women Hoddie",
      price: 1800,
      image: "assets/hoddie.png",
      reviews: "90",
      star: "4.0",
      starImg: "assets/star.png"),
  Product(
      id: 5,
      title: "Women Shirt",
      price: 1800,
      image: "assets/shirt5.png",
      reviews: "150",
      star: "4.2",
      starImg: "assets/star.png"),
  Product(
      id: 6,
      title: "Men Shirt",
      price: 1800,
      image: "assets/shirt6.png",
      reviews: "153",
      star: "4.1",
      starImg: "assets/star.png"),
];
