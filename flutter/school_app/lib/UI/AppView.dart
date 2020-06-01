import 'package:flutter/material.dart';
import 'package:school_app/UI/Style.dart';

class AppView extends StatefulWidget {
  createState() => AppViewState();
}
class AppViewState extends State<AppView> {
  Color topNotchColor = Color(0xff3498db);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: topNotchColor,
          elevation: 0,
          title: TabBar(
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.check)),
              Tab(icon: Icon(Icons.settings)),
            ],
          ),
        ),
        body: Stack(
          children: <Widget>[
            // This is going to be the top notch
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height*0.17,
                    decoration: BoxDecoration(
                      color: topNotchColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0)
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: (MediaQuery.of(context).size.height*0.17*0.5)-FontSize.ExtraLarge, left: 25),
                    child: Text(
                      'Assignments',
                      style: Custom.CustomStyle(FontSize.ExtraLarge, Colors.white, FontWeight.bold, 'Montserrat'),
                    ),
                  ),
                ],
              ),
            ),
            // This is where all the tabs reside
            Container(
              child: TabBarView( // the tab controller
                children: <Widget>[
                  // get the home page
                  Container(),
                  // get the teaks page
                  Container(),
                  // get the settings page
                  Container(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}