import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class TabBarCard extends StatefulWidget {
  const TabBarCard({super.key});

  @override
  State<TabBarCard> createState() => _TabBarCardState();
}

class _TabBarCardState extends State<TabBarCard> {
  bool switchValue = true;

  List<String> buttonName = [
    'Ac Unit',
    'Main Light',
    'Ceiling Bulb',
    'Fan',
    'Music System',
    'Tv'
  ];
  // List<String> price = ['₹99', '₹199', '₹1999'];
  // List<String> size = ['S', 'M', 'XL'];
  // List<String> quatity = ['x 1', 'x 2', 'x 5'];
  List<String> switchName = [
    'Switch',
    'Switch',
    'Switch',
    'Switch',
    'Switch',
    'Switch',
  ];
  List imageName = [
    "assets/icons/Ac.png.png",
    "assets/icons/Bulb.png.png",
    "assets/icons/Clamp.png.png",
    "assets/icons/Fan.png",
    "assets/icons/Music.png.png",
    "assets/icons/Tv.png.png",
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 180,
        crossAxisSpacing: 7.0,
        mainAxisSpacing: 7.0,
      ),
      scrollDirection: Axis.vertical,
      itemCount: buttonName.length,
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.blue, Colors.blue.shade900])),
          height: 180,
          width: 160,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          switchName[index],
                          // textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 20,
                          // width: 25,

                          child: Switch(
                              inactiveThumbColor: Colors.red.shade300,
                              thumbColor: const MaterialStatePropertyAll<Color>(
                                  Colors.white),
                              activeTrackColor: Colors.green.shade200,
                              inactiveTrackColor: Colors.red.shade200,
                              // thumbColor: Colors.green.shade400,
                              value: switchValue,
                              onChanged: (bool? value) {
                                setState(() {
                                  switchValue = value ?? false;
                                });
                              }),
                        ),
                      ]),
                ),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      imageName[index],
                      fit: BoxFit.contain,
                      height: 45,
                      width: 45,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      buttonName[index],
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
