import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kidana/strings.dart';

class ImageWithText extends StatelessWidget {

  String text;
   ImageWithText({Key? key,required this.text, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
padding: EdgeInsets.all(5),
      
decoration: BoxDecoration(
  
  color: Colors.white,
    borderRadius: BorderRadius.only(topRight: Radius.circular(20) , bottomLeft: Radius.circular(20),

)),
        child: Row (children: [
          Image.asset('assets/images/logo.png', height: 45, width: 45,),
SizedBox(width: 5,),
         Text(text),
]
        ),
        
        //   Positioned(
        //       top: 0,
        //       left: 0,
        //       bottom: 0,
        //       right: 0,
        //       child: Text(text))
        // ]
    );

  }
}
