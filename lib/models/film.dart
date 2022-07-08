class Film {
  final String image;
  final String title;
  final String category;
  final String starMovie;
  final int? year;
  const Film(
      {required this.image,
      required this.title,
      required this.category,
      required this.starMovie,
      this.year});
}
