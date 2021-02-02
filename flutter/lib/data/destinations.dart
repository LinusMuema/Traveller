class Destination {
  String name;
  String image;
  String country;

  Destination({
    this.name,
    this.image,
    this.country,
  });
}

// Scotland
final glasgow = Destination(
  name: "Glasgow",
  image: 'assets/images/glasgow.png',
  country: 'Scotland',
);

final edinburgh = Destination(
  name: "Edinburgh",
  image: 'assets/images/edinburgh.png',
  country: 'Scotland',
);

final lochNess = Destination(
  name: "Loch Ness",
  image: 'assets/images/loch_ness.png',
  country: 'Scotland',
);

// Spain
final laSagradaFamilia = Destination(
  name: "La Sagrada Familia",
  image: 'assets/images/la_sagrada_familia.png',
  country: 'Spain',
);

final alhambra = Destination(
  name: "Alhambra",
  image: 'assets/images/alhambra.png',
  country: 'Spain',
);

final museoDelPrado = Destination(
  name: "Museo del Prado",
  image: 'assets/images/museo_del_prado.png',
  country: 'Spain',
);

// New Zealand
final arthursPass = Destination(
  name: "Arthur's pass",
  image: 'assets/images/arthurs_pass.png',
  country: 'New Zealand',
);

final lakeWakatipu = Destination(
  name: "Lake Wakatipu",
  image: 'assets/images/lake_wakatipu.png',
  country: 'New Zealand',
);

final tePuia = Destination(
  name: "Te Puia",
  image: 'assets/images/te_puia.png',
  country: 'New Zealand',
);

// Deutschland
final neuschwanstein = Destination(
  name: "Neuschwanstein",
  image: 'assets/images/neuschwanstein.png',
  country: 'Germany',
);

final kehlsteinhaus = Destination(
  name: "Kehlsteinhaus",
  image: 'assets/images/kehlsteinhaus.png',
  country: 'Germany',
);

final dresden = Destination(
  name: "Dresden",
  image: 'assets/images/dresden.png',
  country: 'Germany',
);
final destinations = [
  neuschwanstein,
  kehlsteinhaus,
  dresden,
  arthursPass,
  lakeWakatipu,
  tePuia,
  laSagradaFamilia,
  alhambra,
  museoDelPrado,
  edinburgh,
  glasgow,
  lochNess
];
List<Destination> getDestinations(String country) {
  return destinations.where((value) => value.country == country).toList();
}
