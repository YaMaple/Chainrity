import 'package:flutter/material.dart';
import '../../models/profile.dart';
import 'widgets/custom_grid.dart';
import 'widgets/person_info.dart';
import 'widgets/tab_sliver_delegate.dart';

class ProfilePage extends StatelessWidget {
  final profile = Profile.generateProfile();
  final tabs = ['Creations', 'Collections'];
  ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('NFT Market'),
        backgroundColor: Color.fromARGB(255, 1, 146, 103),
      ),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverToBoxAdapter(
                child: PersonInfo(profile),
              ),
              SliverPersistentHeader(
                delegate: TabSliverDelegate(
                  TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey[400],
                    indicatorColor: Colors.black,
                    tabs: tabs
                        .map((e) => Tab(
                              child: Text(
                                e,
                                style: const TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                ),
                pinned: true,
              )
            ];
          },
          body: TabBarView(
            children: [
              CustomGrid('creations', profile.creations!),
              CustomGrid('collections', profile.collections!),
            ],
          ),
        ),
      ),
    );
  }
}
