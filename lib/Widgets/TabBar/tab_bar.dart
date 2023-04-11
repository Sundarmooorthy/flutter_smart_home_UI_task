// Container(
//             child: TabBar(
//               indicator: UnderlineTabIndicator(
//                   borderRadius: BorderRadius.horizontal(
//                       left: Radius.circular(3), right: Radius.circular(3))),
//               isScrollable: true,
//               labelPadding: EdgeInsets.only(left: 15, right: 15),
//               indicatorColor: Colors.black,
//               labelColor: Colors.grey,
//               controller: _tabController,
//               tabs: [
//                 Text(
//                   "Living Room",
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//                 Text(
//                   "Bed Room",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.black),
//                 ),
//                 Text(
//                   " Hall",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.black),
//                 ),
//                 Text(
//                   "Kitchen",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.black),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             width: double.infinity,
//             child: TabBarView(
//               controller: _tabController,
//               children: [
//                 Text("Hi Dear"),
//                 Text("Welcome to tab bar view"),
//               ],
//             ),
//           )