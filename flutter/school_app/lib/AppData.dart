import 'package:flutter/material.dart';
import 'package:school_app/Screens/Home.dart';
import 'package:school_app/Screens/NewAssignments.dart';
import 'package:school_app/Screens/Tasks.dart';
import 'package:school_app/TestData.dart';

class Navigation { // Essential for Navigation.
  static int currentIndex = 0; // This value is used in the BottomNavigationBar
  static Widget getCurrentState() {
    Widget returnValue; // This is the return value of this function
    if (currentIndex == 0) {
      returnValue = Home();
    }
    else if (currentIndex == 1) {
      TestDataData.reset(); // Make Sure to reset the data to avoid any bugs in later production
      returnValue = Tasks();
    } else if (currentIndex == 2) {
      // This is reserved for the settings screen.
    } else if (currentIndex == 3) {
      // This is for new assignment
      returnValue = NewAssignment();
    }
    return returnValue; // Return the widget based on the currentIndex Variable.
  }
}
class Style { // this call is essential to reduce the headache in the main code and foucs more on the functions of the app.
  // these are the font sizes that can be used for the upcoming methods.
  static const double ExtraSmall = 10.0;
  static const double Small = 15.0;
  static const double Medium = 20.0;
  static const double Large = 25.0;

  // this method returns a textstyle object, reduces the complexity in the main code.
  static TextStyle Custom(double ptSize, String fontFamily, FontWeight weight, {FontStyle style = FontStyle.normal, Color color: Colors.black}) {
    return TextStyle(
      fontSize: ptSize,
      fontFamily: fontFamily,
      fontWeight: weight,
      fontStyle: style,
      color: color,
    );
  }
}