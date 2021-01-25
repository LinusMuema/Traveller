class Country {
  String name;
  int places;
  String image;

  Country({this.name, this.places, this.image});
}

final Country scotland =
    Country(name: "Scotland", places: 24, image: 'assets/images/scotland.png');
final Country spain =
    Country(name: "Spain", places: 7, image: 'assets/images/spain.png');
final Country newZealand = Country(
    name: "New Zealand", places: 10, image: 'assets/images/new_zealand.png');
final Country germany =
    Country(name: "Germany", places: 19, image: 'assets/images/germany.png');

List<Country> getCountries() {
  return [spain, scotland, newZealand, germany];
}
