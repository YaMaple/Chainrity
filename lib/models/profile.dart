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
          '3D artist team from CUHK. Their works are all\nabout colors, balance and emotion.',
      email: 'blockbuster@link.cuhk.edu.hk',
      creations: [
        Art(
          imgUrl: 'assets/images/create1.jpeg',
          name: 'Consume',
          price: 1.53,
          desc: 'So happy to be with you',
          birds: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
        Art(
          imgUrl: 'assets/images/create2.jpeg',
          name: 'Consume',
          price: 1.53,
          desc: 'So happy to be with you',
          birds: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
        Art(
          imgUrl: 'assets/images/create3.jpeg',
          name: 'Consume',
          price: 1.53,
          desc: 'So happy to be with you',
          birds: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
        Art(
          imgUrl: 'assets/images/create4.jpeg',
          name: 'Consume',
          price: 1.53,
          desc: 'So happy to be with you',
          birds: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
        Art(
          imgUrl: 'assets/images/create5.jpeg',
          name: 'Consume',
          price: 1.53,
          desc: 'So happy to be with you',
          birds: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
      ],
      collections: [
        Art(
          imgUrl: 'assets/images/collection1.jpeg',
          name: 'Consume',
          price: 1.53,
          desc: 'So happy to be with you',
          birds: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
        Art(
          imgUrl: 'assets/images/collection2.jpeg',
          name: 'Consume',
          price: 1.53,
          desc: 'So happy to be with you',
          birds: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
        Art(
          imgUrl: 'assets/images/collection3.jpeg',
          name: 'Consume',
          price: 1.53,
          desc: 'So happy to be with you',
          birds: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
        Art(
          imgUrl: 'assets/images/collection4.jpeg',
          name: 'Consume',
          price: 1.53,
          desc: 'So happy to be with you',
          birds: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
        Art(
          imgUrl: 'assets/images/collection5.jpeg',
          name: 'Consume',
          price: 1.53,
          desc: 'So happy to be with you',
          birds: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
      ],
    );
  }
}
