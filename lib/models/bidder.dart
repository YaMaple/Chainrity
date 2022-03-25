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
      Bidder(name: 'Jenny', date: DateTime.now(), price: 0.011),
      Bidder(name: 'Lucy', date: DateTime.now(), price: 0.0115),
      Bidder(name: 'William', date: DateTime.now(), price: 0.02),
      Bidder(name: 'James', date: DateTime.now(), price: 0.016),
      Bidder(name: 'Evelyn', date: DateTime.now(), price: 0.013),
      Bidder(name: 'Harper', date: DateTime.now(), price: 0.0114),
      Bidder(name: 'Mason', date: DateTime.now(), price: 0.0112),
    ];
  }

  static List<Bidder> generateHistory() {
    return [
      Bidder(name: 'William', date: DateTime.now(), price: 0.02),
      Bidder(name: 'James', date: DateTime.now(), price: 0.022),
      Bidder(name: 'Evelyn', date: DateTime.now(), price: 0.021),
      Bidder(name: 'Harper', date: DateTime.now(), price: 0.024),
      Bidder(name: 'Ella', date: DateTime.now(), price: 0.019),
      Bidder(name: 'Jackson', date: DateTime.now(), price: 0.0215),
      Bidder(name: 'Avery', date: DateTime.now(), price: 0.023),
    ];
  }
}
