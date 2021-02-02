import 'package:flutter_play/data/user.dart';

class Country {
  String name;
  String continent;
  String image;
  String description;
  List<User> likes;

  Country({
    this.name,
    this.image,
    this.continent,
    this.description,
    this.likes,
  });
}

final Country scotland = Country(
    name: "Scotland",
    image: 'assets/images/scotland.jpg',
    continent: "Europe",
    description:
        "Scotland, the U.K.’s northernmost country, is a land of mountain wildernesses such as the Cairngorms and Northwest Highlands, interspersed with glacial glens (valleys) and lochs (lakes).",
    likes: getUsers());
final Country spain = Country(
    name: "Spain",
    image: 'assets/images/spain.jpg',
    continent: "Europe",
    likes: getUsers(),
    description:
        "Passionate, sophisticated and devoted to living the good life, Spain is both a stereotype come to life and a country more diverse than you ever imagined. Its diverse landscapes stir the soul");
final Country newZealand = Country(
    name: "New Zealand",
    image: 'assets/images/new_zealand.jpg',
    continent: "Oceania",
    likes: getUsers(),
    description:
        "Get ready for mammoth national parks, dynamic Māori culture, and world-class surfing and skiing. New Zealand can be mellow or action-packed, but it's always epic. This decent nation is a place where you can relax and enjoy (rather than endure) your travels");
final Country germany = Country(
    name: "Germany",
    image: 'assets/images/germany.jpg',
    continent: "Europe",
    likes: getUsers(),
    description:
        "Prepare for a roller-coaster ride of feasts, treats and temptations experiencing Germany's soul-stirring scenery, spirit-lifting culture, big-city beauties, romantic palaces and half-timbered towns.");

List<Country> getCountries() {
  return [spain, scotland, newZealand, germany];
}
