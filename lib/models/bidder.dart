class Bidder {
  String? name;
  DateTime? date;
  num? price;
  Bidder({
    this.name,
    this.date,
    this.price,
  });
  static List<Bidder> generateBidder() {
    return [
      Bidder(
          name: 'J***y', date: DateTime.utc(2022, 3, 26, 12, 50), price: 110),
      Bidder(name: 'L**y', date: DateTime.utc(2022, 3, 24, 10, 40), price: 103),
      Bidder(
          name: 'William', date: DateTime.utc(2022, 3, 22, 21, 20), price: 100),
      Bidder(name: 'J***s', date: DateTime.utc(2022, 3, 20, 18, 15), price: 90),
      Bidder(
          name: 'Evelyn', date: DateTime.utc(2022, 3, 18, 16, 15), price: 70),
      Bidder(
          name: 'Harper', date: DateTime.utc(2022, 3, 14, 14, 10), price: 62),
      Bidder(name: 'M***n', date: DateTime.utc(2022, 3, 10, 21, 55), price: 50),
    ];
  }

  static List<Bidder> generateHistory() {
    return [
      Bidder(name: 'Carlos', date: DateTime.utc(2022, 3, 24, 7, 45), price: 93),
      Bidder(name: 'J***y', date: DateTime.utc(2022, 3, 21, 6, 35), price: 87),
      Bidder(name: 'P***r', date: DateTime.utc(2022, 3, 19, 21, 50), price: 80),
      Bidder(name: 'Jisoo', date: DateTime.utc(2022, 3, 15, 2, 10), price: 72),
      Bidder(name: 'L**a', date: DateTime.utc(2022, 3, 12, 15, 40), price: 68),
      Bidder(name: 'Jackson', date: DateTime.utc(2022, 3, 7, 1, 5), price: 63),
      Bidder(name: 'Avery', date: DateTime.utc(2022, 3, 1, 13, 15), price: 60),
    ];
  }
}
