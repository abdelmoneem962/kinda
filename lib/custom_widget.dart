import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kidana/strings.dart';

class MyCustomWidget extends StatefulWidget {

   Widget widget;
  MyCustomWidget({Key? key, required this.widget}) : super(key: key);
  @override
  _MyCustomWidgetState createState() => _MyCustomWidgetState();
}

class _MyCustomWidgetState extends State<MyCustomWidget>
    with TickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    )
      ..forward()
      ..repeat(reverse: true);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: AnimatedBuilder(
          animation: animationController,
          builder: (context, child) {
            return Container(
              decoration: ShapeDecoration(
                color: Colors.grey.withOpacity(0.5),
                shape: CircleBorder(),
              ),
              child: Padding(
                padding: EdgeInsets.all(
                  25.0 * animationController.value,
                ),
                child: child,
              ),
            );
          },
          child: Stack(
            
            children:[ Container(
              decoration: ShapeDecoration(
                color: Colors.grey,
                shape: CircleBorder(),
              ),
             child:Stack(
               children:[
                 
               Image.asset(AppConst().titles),
                 Positioned(
                   top: 0,
                     left: 0,
                     bottom: 0,
                     right: 0,
                     child: Text("مشــروع توير وتحسين  "))
            ]
             ),


        ),

        ]),
        )
      );

  }
}