import 'package:flutter/material.dart';


// basic button for the use on the onboarding pages ..... 

class BasicAppButton extends StatelessWidget {
    final VoidCallback onPressed;
    final String title; 
    final double height;

    BasicAppButton({required this.onPressed, required this.title, required this.height});

    @override
    Widget build(BuildContext context) {
     return ElevatedButton(
       onPressed: onPressed,
       style: ElevatedButton.styleFrom(
        //  primary: Colors.green,
         minimumSize: Size.fromHeight(height),
       ),
       child: Text(title),
      );
    }
}