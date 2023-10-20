import 'package:appnime/models/categorym.dart';

class CategoryService {
  Future<List<Category>> getCategory() async {
    // simulate API request delay
    await Future.delayed(Duration(seconds: 2));

    return [
      Category(
          title: 'Action',
          image: 'assets/action.png',
          description: "Anime dengan adegan aksi dan pertarungan yang intens.",
          genre: 'Action'),
      Category(
          title: 'Drama',
          image: 'assets/drama.png',
          description: "Anime dengan alur cerita yang emosional dan serius.",
          genre: 'Drama'),
      Category(
          title: 'Comedy',
          image: 'assets/comedy.png',
          description: "Anime dengan momen lucu dan ringan.",
          genre: 'Comedy'),
      Category(
          title: 'Romance',
          image: 'assets/romance.png',
          description:
              "Anime dengan hubungan romantis sebagai tema sentralnya.",
          genre: 'Romance'),
      Category(
          title: 'Sports',
          image: 'assets/sports.png',
          description: "Anime dengan konten Olahraga sebagai tema sentral.",
          genre: 'Sports'),
    ];
  }
}
