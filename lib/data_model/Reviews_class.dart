class Review {
  String img;
  String name;
  String review;
  double rate;
  Review(
      {required this.img,
      required this.name,
      required this.review,
      required this.rate});
}

List<Review> reviews = [
  Review(
      img: "assets/img8.png",
      name: "Andi",
      review:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      rate: 4),
  Review(
      img: "assets/img9.png",
      name: "Wijaya",
      review:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      rate: 3),
  Review(
      img: "assets/img10.png",
      name: "Krisna",
      review:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      rate: 4),
];
