class Travel {
  String name;
  String image;

  Travel(this.name, this.image);

  static List<Travel> generatedTravelList() {
    return [
      Travel('Norway', 'images/norway.jpg'),
      Travel('Sweden', 'images/sweden.jpg'),
      Travel('Swizerland', 'images/Switzerland.jpg'),
      Travel('Japan', 'images/Japan.jpg'),
      Travel('Bangladesh', 'images/bd.jpg'),
      Travel('Iceland', 'images/iceland.jpeg'),
      Travel('India', 'images/india.jpg'),
    ];
  }

  static List<Travel> mostPopular() {
    return [
      Travel('Norway', 'images/norway.jpg'),
      Travel('Sweden', 'images/sweden.jpg'),
      Travel('Swizerland', 'images/Switzerland.jpg'),
      Travel('Japan', 'images/Japan.jpg'),
      Travel('Bangladesh', 'images/bd.jpg'),
      Travel('Iceland', 'images/iceland.jpeg'),
      Travel('India', 'images/india.jpg'),
    ];
  }
}
