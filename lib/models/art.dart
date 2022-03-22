import 'bidder.dart';

class Art {
  String? imgUrl;
  String? name;
  num? price;
  String? desc;
  List<Bidder>? birds;
  List<Bidder>? history;
  Art({
    this.imgUrl,
    this.name,
    this.price,
    this.desc,
    this.birds,
    this.history,
  });
}
