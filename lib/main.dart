import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kidana/custom_widget.dart';
import 'package:kidana/strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacity;
  late Animation<double> _transform;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );

    _opacity = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(

        parent: _controller,
        curve: Curves.ease,
      ),
    )..addListener(() {
      setState(() {});
    });

    _transform = Tween<double>(begin: 2, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.fastLinearToSlowEaseIn,
      ),
    );

    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool _isShow = false;
  bool show = false;
  @override

  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [Image.asset(

            AppConst().background,
        fit: BoxFit.fill,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,),
          Positioned(
            top: MediaQuery.of(context).size.height*.3,
left: 560,
            child: Opacity(
    opacity: _opacity.value,
    child: Transform.scale(
    scale: _transform.value,
              child: Stack(
                children:[ Image.asset(

                    AppConst().mozdlfa,


                  width: MediaQuery.of(context).size.width*.19,
                  height:MediaQuery.of(context).size.height*.4,

                ),

                  Positioned(
                    top:MediaQuery.of(context).size.height*.01,
                    right:MediaQuery.of(context).size.width*.001,
                    child: GestureDetector(
                      onTap: (){
                        setState(
                              () {
                            _isShow = !_isShow;
                          },
                        );

                      },
                      child: Image.asset(

                        AppConst().wcTrainMosque,
                        width: MediaQuery.of(context).size.width*.2,
                        height:MediaQuery.of(context).size.height*.3,




                      ),
                    ),
                  ),

                  Positioned(
                    top:100,
                    left: 200,
                    child: Visibility(
                        visible:_isShow ,
                        child: GestureDetector(
                          onTap: (){
                            setState(
                                  () {
                                show = !show;
                              },
                            );


                          },
                          child:MyCustomWidget(widget:Visibility(child: Image.asset(AppConst().titles))

                          ),
                        )),
                  ),
                  // Positioned(
                  //   top:200,
                  //   left: 200,
                  //   child: Visibility(
                  //       visible:_isShow ,
                  //       child: GestureDetector(
                  //         onTap: (){
                  //           setState(
                  //                 () {
                  //               show = !show;
                  //             },
                  //           );
                  //
                  //
                  //         },
                  //         child: Positioned(
                  //           top: 200,
                  //           left: 100,
                  //           child:Visibility(
                  //           visible: show,
                  //             child: Image.asset(AppConst().titles)
                  //         ) ,
                  //
                  //         ),
                  //       )),
                  // ),



    ]
              ),
            ),
          ),
          ),

     ] ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
