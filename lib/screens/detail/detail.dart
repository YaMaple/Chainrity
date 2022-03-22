import 'package:flutter/material.dart';
import '../../models/colors.dart';
import '../../models/art.dart';
import '../../screens/detail/widgets/art_info.dart';
import '../../screens/detail/widgets/bidder_list.dart';
import '../../screens/detail/widgets/buy_button.dart';
import '../../screens/detail/widgets/detail_banner.dart';
import '../../screens/profile/widgets/tab_sliver_delegate.dart';

class DetailPage extends StatelessWidget {
  final Art art;
  DetailPage(this.art, {Key? key}) : super(key: key);
  final tabs = ['Info', 'Birds', 'History'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: DefaultTabController(
          length: 3,
          initialIndex: 1,
          child: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                    elevation: 0,
                    expandedHeight: 330,
                    backgroundColor: buttonColor,
                    leading: _buildIcon(
                      context,
                      Icons.arrow_back_ios_outlined,
                      back: true,
                    ),
                    actions: [
                      _buildIcon(
                        context,
                        Icons.more_vert_outlined,
                      ),
                    ],
                    flexibleSpace: FlexibleSpaceBar(
                      background: DetailBanner(art),
                    ),
                    pinned: true,
                  ),
                  SliverToBoxAdapter(
                    child: ArtInfo(art),
                  ),
                  SliverPersistentHeader(
                    delegate: TabSliverDelegate(TabBar(
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.grey[400],
                        indicatorColor: Colors.black,
                        isScrollable: true,
                        labelPadding: const EdgeInsets.only(left: 5, right: 40),
                        tabs: tabs
                            .map((e) => Tab(
                                  child: Text(
                                    e,
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                ))
                            .toList())),
                    pinned: true,
                  )
                ];
              },
              body: TabBarView(
                children: [
                  ListView(children: const []),
                  BidderList('birds', art.birds!),
                  BidderList('history', art.history!),
                ],
              ))),
      floatingActionButton: const BuyButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  _buildIcon(BuildContext context, IconData icon, {bool back = false}) {
    return IconButton(
      onPressed: back ? () => Navigator.of(context).pop() : null,
      splashRadius: 25,
      icon: Icon(
        icon,
        color: Colors.black,
        size: 20,
      ),
    );
  }
}
