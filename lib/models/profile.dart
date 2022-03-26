import 'art.dart';
import 'bidder.dart';

class Profile {
  String? imgUrl;
  String? name;
  String? twitter;
  String? desc;
  String? email;
  List<Art>? creations;
  List<Art>? collections;
  Profile({
    this.imgUrl,
    this.name,
    this.twitter,
    this.desc,
    this.email,
    this.creations,
    this.collections,
  });
  static Profile generateProfile() {
    return Profile(
      imgUrl: 'assets/images/blockbuster.png',
      name: 'Blockbuster',
      twitter: '@Chainrity',
      desc:
          'Charity team from CUHK. They pay attention to charity and have the world in mind.',
      email: 'blockbuster@link.cuhk.edu.hk',
      creations: [
        Art(
          avatarUrl: "assets/images/blockbuster.png",
          creator: "Chainrity",
          imgUrl: 'assets/images/nft_1.jpeg',
          name: 'Boots No.1',
          price: 110,
          desc: 'Drawings of children with autism',
          birds: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
        Art(
          avatarUrl: "assets/images/blockbuster.png",
          creator: "Chainrity",
          imgUrl: 'assets/images/nft_2.jpeg',
          name: 'Boots No.2',
          price: 87,
          desc: 'Drawings of children with autism',
          birds: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
        Art(
          avatarUrl: "assets/images/blockbuster.png",
          creator: "Chainrity",
          imgUrl: 'assets/images/nft_3.jpeg',
          name: 'Pure Heart Trophy',
          price: 92,
          desc: 'Commemorating anti-epidemic heroes',
          birds: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
      ],
      collections: [
        Art(
          avatarUrl: "assets/images/heart.png",
          creator: "Hainan Charity",
          imgUrl: 'assets/images/nft_4.jpeg',
          name: 'Love Trophy',
          price: 93,
          desc: 'Recognizing philanthropists',
          birds: Bidder.generateHistory(),
          history: Bidder.generateHistory(),
        ),
        Art(
          avatarUrl: "assets/images/heart.png",
          creator: "Lianjia Charity",
          imgUrl: 'assets/images/nft_5.jpeg',
          name: 'Phone Case',
          price: 13,
          desc: 'Charity phone case',
          birds: Bidder.generateHistory(),
          history: Bidder.generateHistory(),
        ),
        Art(
          avatarUrl: "assets/images/heart.png",
          creator: 'Tongxing Charity',
          imgUrl: 'assets/images/nft_6.jpeg',
          name: 'Souvenir Set',
          price: 126,
          desc: '\'Tongxing\' theme series products',
          birds: Bidder.generateHistory(),
          history: Bidder.generateHistory(),
        ),
      ],
    );
  }
}
