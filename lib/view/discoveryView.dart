import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:social/model/userModel.dart';
import 'package:social/widgets/buildProfile.dart';
import 'package:social/widgets/itemsWidget.dart';

class DiscoveryView extends StatefulWidget {
  @override
  _DiscoveryViewState createState() => _DiscoveryViewState();
}

class _DiscoveryViewState extends State<DiscoveryView> {
  final panelController = PanelController();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.person_outline,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.close,
            ),
          ),
        ],
      ),
      body: SlidingUpPanel(
        maxHeight: 400,
        minHeight: 150,
        parallaxOffset: .5,
        color: Colors.transparent,
        parallaxEnabled: true,
        controller: panelController,
        body: PageView.builder(
          onPageChanged: (index) {
            setState(() {
              this.index = index;
            });
          },
          itemBuilder: (context, index) {
            return Image.network(
              users[index].urlPhoto,
              fit: BoxFit.cover,
            );
          },
          itemCount: users.length,
        ),
        panelBuilder: (ScrollController scroll) {
          return Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ItemWidget(
                      title: "Followers",
                      count: users[index].countFollowers,
                    ),
                    ItemWidget(
                      title: "postes",
                      count: users[index].countPosts,
                    ),
                    ItemWidget(
                      title: "Followeing",
                      count: users[index].countFollowing,
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: Column(
                  children: [
                    BuildProfile(
                      user: users[index],
                      onPressed: () {
                        setState(() {
                          users[index].isFollowing = !users[index].isFollowing;
                        });
                      },
                    ),
                    Expanded(child: buildProfileDetails(users[index]))
                  ],
                ),
              )),
            ],
          );
        },
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        backgroundColor: Colors.tealAccent,
        items: [
          Icon(
            Icons.map,
            size: 30,
          ),
          Icon(
            Icons.home,
            size: 30,
          ),
          Icon(
            Icons.people,
            size: 30,
          ),
        ],
      ),
    );
  }

  buildProfileDetails(UserModel user) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            user.bio,
            maxLines: 3,
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "Photos",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 12,
          ),
          Expanded(
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: user.userPhoto
                    .map((url) => Container(
                          height: 100,
                          width: 100,
                          padding: EdgeInsets.only(
                            right: 5,
                          ),
                          child: Image.network(
                            url,
                            fit: BoxFit.cover,
                          ),
                        ))
                    .toList()),
          )
        ],
      ),
    );
  }
}
