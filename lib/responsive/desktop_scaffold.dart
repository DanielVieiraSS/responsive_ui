import 'package:flutter/material.dart';
import 'package:responsive_ui/constants.dart';

import '../util/my_box.dart';
import '../util/my_tile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBackground,
      body: Row(
        children: [
          // Open Drawer
          myDrawer,

          // Rest of body
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  width: 300,
                  height: 20,
                  child: const ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: LinearProgressIndicator(
                      value: 0.7,
                      valueColor:
                          AlwaysStoppedAnimation<Color>(Color(0xff00ff00)),
                      backgroundColor: Color(0xffD6D6D6),
                    ),
                  ),
                ),
                // 4 box on the top
                AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                      itemCount: 4,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4),
                      itemBuilder: (context, index) {
                        return MyBox();
                      },
                    ),
                  ),
                ),

                // tiles below it
                Expanded(
                    child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return MyTile();
                  },
                ))
              ],
            ),
          ),
          Expanded(
              child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.pink,
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
