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
          imgUrl: 'assets/images/nft_1.jpeg',
          name: 'Boots No.1',
          price: 0.01,
          desc: 'Drawings of children with autism',
          birds: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
        Art(
          imgUrl: 'assets/images/nft_2.jpeg',
          name: 'Boots No.2',
          price: 0.03,
          desc: 'Drawings of children with autism',
          birds: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
        Art(
          imgUrl: 'assets/images/nft_3.jpeg',
          name: 'Pure Heart Trophy',
          price: 0.02,
          desc: 'Commemorating anti-epidemic heroes',
          birds: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
      ],
      collections: [
        Art(
          imgUrl: 'assets/images/nft_4.jpeg',
          name: 'Love Trophy',
          price: 0.015,
          desc: 'Recognizing philanthropists',
          birds: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
        Art(
          imgUrl: 'assets/images/nft_5.jpeg',
          name: 'Phone Case',
          price: 0.023,
          desc: 'Charity phone case',
          birds: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
        Art(
          imgUrl: 'assets/images/nft_6.jpeg',
          name: 'Souvenir Set',
          price: 0.026,
          desc: '\'All the way peer\' theme products',
          birds: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
      ],
    );
  }
}
