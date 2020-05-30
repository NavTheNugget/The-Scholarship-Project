import 'package:flutter/material.dart';
import 'package:school_app/AppData.dart';

class AppView extends StatefulWidget {
  createState() => AppViewState();
}
class AppViewState extends State<AppView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // the appbar property.
      appBar: AppBar(
        title: Text('School Assignment Tracker'),
        centerTitle: true, // Center the title.
      ),

      // Wrap the SingleChildScrollView inside a Container to Enable the Margin Property.
      body: Container(
        // Give this a top margin, to prevent copying this line again and again in other files.
        margin: EdgeInsets.only(top: 20, bottom: 25),
        // Give the container the child of a SingleChildScrollView, This would allow scrolling on long long pages.
        child: SingleChildScrollView(
          controller: ScrollController(), // ScrollController, required to actually scroll.
          child: Navigation.getCurrentState(), // This method would return the current screen using the currentIndex Variable.
        ),
      ),

      // bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: Navigation.currentIndex, // The Values are stored in a class in the AppData.dart file
        items: [
          BottomNavigationBarItem(title: Text('Home'), icon: Icon(Icons.home)), // placeholder icons, updated by FontAwesomeIcons
          BottomNavigationBarItem(title: Text('Tasks'), icon: Icon(Icons.check)),
          BottomNavigationBarItem(title: Text('Settings'), icon: Icon(Icons.settings)),
        ],
        onTap: (int index) {
          setState(() { // Use SetState to Update the Screen.
            Navigation.currentIndex = index; // change the index of the Navigation.currentIndex
          });
        },
      ),
    );
  }
}