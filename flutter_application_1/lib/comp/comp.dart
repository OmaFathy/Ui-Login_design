import 'package:flutter/material.dart';

Widget defaultButton({

  double width = 200,
  Color background =const Color.fromARGB(255, 18, 75, 161),
  bool isUpperCase = true,
  double radius = 30.0,

 function,
  required String text,
  
}) =>
    Container(
      width: width,
      height: 50.0,
      
      child: MaterialButton(
        onPressed: function,
        
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      decoration: BoxDecoration(
    
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: background,
      ),
    );

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  bool isPassword = false,
  // required validate,
  required String label,
  required IconData prefix,
  required TextStyle style,
  required validate,
}) =>
    Container(
      padding: EdgeInsets.symmetric(vertical: 70),
//decoration: BoxDecoration(
      //color: Colors.white,
      //borderRadius: BorderRadius.circular(66.0),
//),
      width: 400.0,
      child: TextFormField(
        style: style,
        controller: controller,
        keyboardType: type,
        obscureText: isPassword,
        validator: validate,
        //validator: validate,
        decoration: InputDecoration(
          //fillColor: Colors.blue,
          //prefixIconColor:Colors.blue,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 0, color: Colors.white),
            // borderRadius: BorderRadius.circular(30.0),
          ),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          //border: InputBorder.none,

          hintText: label,
          hintStyle: TextStyle(color: Colors.grey),
          prefixIcon: Icon(
            prefix,
          ),
        ),
      ),
    );
