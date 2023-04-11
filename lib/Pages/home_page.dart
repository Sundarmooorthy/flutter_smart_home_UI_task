import 'package:flutter/material.dart';
import 'package:smart_home/Constants/app_textstyle.dart';
import 'package:smart_home/Widgets/TabBarViewCards/tab_bar_view_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60))),
          backgroundColor: Colors.white,
          elevation: 7,
          // leading: IconButton(
          //     onPressed: () {},
          //     icon: Icon(
          //       Icons.menu_rounded,
          //       color: Colors.black,
          //     )),
          title: Text(
            "Home",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 23),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                    "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/48014adb-982c-4a5c-ae09-a1afab53f3f3/ddrg6q2-92393626-c353-43db-9c70-85d869dd58d9.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzQ4MDE0YWRiLTk4MmMtNGE1Yy1hZTA5LWExYWZhYjUzZjNmM1wvZGRyZzZxMi05MjM5MzYyNi1jMzUzLTQzZGItOWM3MC04NWQ4NjlkZDU4ZDkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.Vn1TEvEpOgKhNWdIPLDTOtLo-feiJ-mh-kYr1VfJFQY"),
              ),
            ),
          ],
          bottom: TabBar(
            isScrollable: true,
            // controller: _tabController,
            tabs: [
              Tab(
                child: Text(
                  "Living Room",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                height: 25,
              ),
              Tab(
                child: Text(
                  "Kitchen",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                height: 25,
              ),
              Tab(
                child: Text(
                  "Bed Room",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                height: 25,
              ),
              Tab(
                child: Text(
                  "Dining Room",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                height: 25,
              ),
            ],
          ),
          iconTheme: IconThemeData(color: Colors.black),
        ),
        drawer: SizedBox(
          width: 80,
          child: Drawer(
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(45)),
              child: Container(
                // width: 50,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.blue, Colors.blue.shade900])),
                child: Column(children: [
                  // Stack(
                  //   children: [
                  //     Positioned(
                  //       right: -10,
                  //       child: ElevatedButton(
                  //         style: ElevatedButton.styleFrom(
                  //             shape: RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(30),
                  //         )),
                  //         onPressed: () {},
                  //         child: Icon(Icons.arrow_back, color: Colors.white),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  SizedBox(
                    height: 100,
                  ),
                  IconButton(
                      iconSize: 35,
                      onPressed: () {},
                      icon: Icon(
                        Icons.cloud,
                        color: Colors.white,
                      )),
                  SizedBox(
                    height: 25,
                  ),
                  IconButton(
                      iconSize: 35,
                      onPressed: () {},
                      icon: Icon(
                        Icons.home,
                        color: Colors.white,
                      )),
                  Text(
                    "Home",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  IconButton(
                      iconSize: 35,
                      onPressed: () {},
                      icon: Icon(
                        Icons.bed_outlined,
                        color: Colors.white,
                      )),
                  Text(
                    "Rooms",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  IconButton(
                      iconSize: 35,
                      onPressed: () {},
                      icon: Icon(
                        Icons.group_outlined,
                        color: Colors.white,
                      )),
                  Text(
                    "People",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  IconButton(
                      iconSize: 35,
                      onPressed: () {},
                      icon: Icon(
                        Icons.devices,
                        color: Colors.white,
                      )),
                  Text(
                    "Device",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  IconButton(
                      iconSize: 35,
                      onPressed: () {},
                      icon: Icon(
                        Icons.exit_to_app,
                        color: Colors.white,
                      )),
                ]),
              )),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 12,
            left: 3,
            right: 3,
          ),
          child: TabBarView(controller: _tabController, children: [
            TabBarCard(),
            TabBarCard(),
            TabBarCard(),
            TabBarCard(),
          ]),
        ),
      ),
    );
  }
}
