import 'package:flutter/material.dart';

class Appwidget {
  static TextStyle boldTextFieldStyle(){
    return const TextStyle(
                color: Colors.black, 
                fontSize: 20.0, 
                fontWeight: FontWeight.bold, 
                fontFamily: 'Poppins'
              );
  }
  static TextStyle headlineTextFieldStyle(){
    return const TextStyle(
                color: Colors.black, 
                fontSize: 20.0, 
                fontWeight: FontWeight.bold, 
                fontFamily: 'Poppins'
              );
  }

  static TextStyle lightTextFieldStyle(){
    return const TextStyle(
                color: Colors.black38, 
                fontSize: 12.0, 
                fontWeight: FontWeight.w500, 
                fontFamily: 'Poppins'
              );
  }

  static TextStyle semiBoldTextFieldStyle(){
    return const TextStyle(
                color: Colors.black38, 
                fontSize: 15.0, 
                fontWeight: FontWeight.bold, 
                fontFamily: 'Poppins'
              );
  }

  static TextStyle currentBoldTextFieldStyle(){
    return const TextStyle(
                color: Colors.black, 
                fontSize: 13.0, 
                fontWeight: FontWeight.bold, 
                fontFamily: 'Poppins'
              );
  }
}