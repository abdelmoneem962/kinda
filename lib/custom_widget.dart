import 'package:flutter/material.dart';

class MyCustomWidget extends StatefulWidget {


  const MyCustomWidget({Key? key, }) : super(key: key);
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
                color: Colors.green.withOpacity(0.7),
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

        ),

        ]),
        )
      );

  }
}