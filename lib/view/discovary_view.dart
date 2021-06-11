import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:social_app_design/model/user_model.dart';
import 'package:social_app_design/widget/buidl_profile.dart';
import 'package:social_app_design/widget/item_widget.dart';
import '';

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
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.person_outline),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {},
          ),
        ],
      ),
      body: SlidingUpPanel(
        maxHeight: 400,
        minHeight: 150,
        parallaxEnabled: true,
        parallaxOffset: 0.5,
        controller: panelController,
        color: Colors.transparent,
        body: PageView.builder(
          itemBuilder: (context, index) {
            return Image.network(
              users[index].urlImage,
              fit: BoxFit.cover,
            );
          },
          itemCount: users.length,
          onPageChanged: (index) {
            setState(() {
              this.index = index;
            });
          },
        ),
        panelBuilder: (sc) => Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 12.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ItemWidget(
                    title: 'Followers',
                    count: users[index].countFollowers,
                    user: users[index],
                  ),
                  ItemWidget(
                    title: 'Following',
                    count: users[index].countFollowing,
                    user: users[index],
                  ),
                  ItemWidget(
                    title: 'Posts',
                    count: users[index].countPosts,
                    user: users[index],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(

                  decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BuildProfile(
                          user:users[index],
                          onPressed: (){
                            setState(() {
                              users[index].isFollowing =!users[index].isFollowing;
                            });
                          },
                      ),
                      Expanded(child: buildProfileDetails(users[index]),),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.tealAccent,
        items: [
          Icon(Icons.map,size: 30),
          Icon(Icons.home,size: 30),
          Icon(Icons.people,size: 30),
        ],
      ),
    );
  }

  buildProfileDetails(UserModel user) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(user.bio,
          style: TextStyle(
            fontStyle: FontStyle.italic,
          ),
          ),
          SizedBox(height: 12,),
          Text('Photo',style:TextStyle(
            fontWeight:FontWeight.bold,
          ) ,),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: user.urlPhoto.map((e)=>Container(
              height: 100,
              width: 100,
              padding: EdgeInsets.only(right: 5 ),
              child: Image.network(e,fit:BoxFit.cover),
              ),
              ).toList()
            ),
          )
        ],
      ),
    );
  }
}
