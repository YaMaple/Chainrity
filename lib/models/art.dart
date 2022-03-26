import 'bidder.dart';

class Art {
  String? avatarUrl;
  String? creator;
  String? imgUrl;
  String? name;
  num? price;
  String? desc;
  List<Bidder>? birds;
  List<Bidder>? history;
  Art({
    this.avatarUrl,
    this.creator,
    this.imgUrl,
    this.name,
    this.price,
    this.desc,
    this.birds,
    this.history,
  });
}
