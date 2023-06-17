import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kidana/custom_widget.dart';
import 'package:kidana/image_text.dart';
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

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
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
  bool showWc = false;
  bool showWcb = false;
  bool showTrainB = false;
  bool showTrain = false;
  bool showMosque = false;
  bool showMosqueB = false;
  bool showNzool = false;
  bool showTrain2 = false;
  bool showmina = false;
  bool khyam = false;
  bool kitchen = false;
  bool people = false;
  bool wcMina = false;
  bool carcaMina = false;
  bool sand = false;
  bool constructions = false;
  bool wcArafat = false;
  bool namera = false;
  bool showArafat = false;
  // bool _isShow = false;
  // bool _isShow = false;

  bool show = false;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [
          Image.asset(
            AppConst().background,
            fit: BoxFit.fill,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .3,
            left: 560,
            child: Opacity(
              opacity: _opacity.value,
              child: Transform.scale(
                scale: _transform.value,
                child: Stack(children: [
                  GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          _isShow = !_isShow;
                        },
                      );
                    },
                    child: Image.asset(
                      AppConst().mozdlfa,
                      width: MediaQuery.of(context).size.width * .19,
                      height: MediaQuery.of(context).size.height * .4,
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * .06,
                    right: MediaQuery.of(context).size.width * .01,
                    child: GestureDetector(
                      onTap: () {
                        setState(
                          () {
                            _isShow = !_isShow;
                          },
                        );
                      },
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Visibility(
                              visible: showWcb,
                              child: Opacity(
                                opacity: _opacity.value,
                                child: Transform.scale(
                                  scale: _transform.value,
                                  child: Image.asset(
                                    AppConst().wcc,
                                    width:
                                        MediaQuery.of(context).size.width * .1,
                                    height:
                                        MediaQuery.of(context).size.height * .1,
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: showMosqueB,
                              child: Opacity(
                                opacity: _opacity.value,
                                child: Transform.scale(
                                  scale: _transform.value,
                                  child: Image.asset(
                                    AppConst().mosque,
                                    width:
                                        MediaQuery.of(context).size.width * .1,
                                    height:
                                        MediaQuery.of(context).size.height * .1,
                                  ),
                                ),
                              ),
                            ),
                          ]),
                    ),
                  ),
                  Positioned(
                    top: 250,
                    right: 100,
                    child: Visibility(
                      visible: showTrainB,
                      child: Opacity(
                        opacity: _opacity.value,
                        child: Transform.scale(
                          scale: _transform.value,
                          child: Image.asset(
                            AppConst().train,
                            width: MediaQuery.of(context).size.width * .1,
                            height: MediaQuery.of(context).size.height * .1,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 100,
                      left: 200,
                      child: Visibility(
                        visible: _isShow,
                        child: GestureDetector(
                            onTap: () {
                              setState(
                                () {
                                  showWc = !showWc;
                                  showWcb = !showWcb;
                                },
                              );
                            },
                            child: MyCustomWidget()),
                      )),
                  Positioned(
                      top: 180,
                      left: 200,
                      child: Visibility(
                        visible: _isShow,
                        child: GestureDetector(
                            onTap: () {
                              setState(
                                () {
                                  showMosque = !showMosque;
                                  showMosqueB = !showMosqueB;
                                },
                              );
                            },
                            child: MyCustomWidget()),
                      )),
                  Positioned(
                      top: 300,
                      left: 170,
                      child: Visibility(
                        visible: _isShow,
                        child: GestureDetector(
                            onTap: () {
                              setState(
                                () {
                                  showTrainB = !showTrainB;
                                  showTrain = !showTrain;
                                },
                              );
                            },
                            child: MyCustomWidget()),
                      )),
                  Positioned(
                      top: 300,
                      left: 80,
                      child: Visibility(
                        visible: _isShow,
                        child: GestureDetector(
                            onTap: () {
                              setState(
                                () {
                                  showTrain2 = !showTrain2;
                                },
                              );
                            },
                            child: MyCustomWidget()),
                      )),
                  Visibility(
                    visible: showWc,
                    child: Positioned(
                        child: ImageWithText(
                      text:
                          "إنشاء مجمعات لدورات  \nالمـــــــــــياه ذات الطــابقين",
                    )),
                  ),
                  Visibility(
                    visible: showMosque,
                    child: Positioned(
                        top: 150,
                        right: 0,
                        child: ImageWithText(
                          text: "مســـــــــــجد\nالمشعر الحرام",
                        )),
                  ),
                  Visibility(
                    visible: showTrain,
                    child: Positioned(
                        top: 230,
                        right: 30,
                        child: ImageWithText(
                          text:
                              "مشروع تنظيم مــــــــواقع نزول الحجاج  \nاعند محطات قطار المشاعر المقدسة",
                        )),
                  ),
                  Visibility(
                    visible: showTrain2,
                    child: Positioned(
                        top: 370,
                        left: 0,
                        child: ImageWithText(
                          text: "قطار المشاعر  \n(مزدلفة ٣)",
                        )),
                  )
                ]),
              ),
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height * .27,
              left: 265,
              child: Opacity(
                  opacity: _opacity.value,
                  child: Transform.scale(
                      scale: _transform.value,
                      child: Stack(children: [
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              showmina=!showmina;
                            });
                          },
                          child: Image.asset(
                            AppConst().mina,
                            width: MediaQuery.of(context).size.width * .18,
                            height: MediaQuery.of(context).size.height * .4,
                          ),
                        ),
                        Visibility(
                          visible:carcaMina,
                          child: Positioned(
                              top: 120,
                              right: -11,
                              child: Image.asset(
                                AppConst().craca,
                                width: 110,
                                height: 110,
                              )),
                        ),
                        Positioned(
                          top: 80,
                          right: 50,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(children: [
                                  Visibility(
                                    visible:khyam,
                                    child: Image.asset(
                                      AppConst().khyam,
                                      width: 80,
                                      height: 80,
                                    ),
                                  ),
                                  Visibility(
                                    visible: kitchen,
                                    child: Image.asset(
                                      AppConst().home,
                                      width: 80,
                                      height: 80,
                                    ),
                                  )
                                ]),
                                Visibility(
                                  visible: people,
                                  child: Image.asset(
                                    AppConst().people,
                                    width: 110,
                                    height: 100,
                                  ),
                                ),
                              ]),
                        ),
                        Visibility(
                          visible: wcMina,
                          child: Positioned(
                              top: 230,
                              right: 50,
                              child: Image.asset(
                                AppConst().wc,
                                width: 110,
                                height: 100,
                              )),
                        ),
                        Positioned(
                            top: 120,
                            left: 140,
                            child: Visibility(
                              visible: showmina,
                              child: GestureDetector(
                                  onTap: () {
                                    setState(
                                          () {
                                        kitchen = !kitchen;

                                      },
                                    );
                                  },
                                  child: MyCustomWidget()),
                            )),

                        Positioned(
                            top: 140,
                            right: 13,
                            child: Visibility(
                              visible: showmina,
                              child: GestureDetector(
                                  onTap: () {
                                    setState(
                                          () {
                                            carcaMina = !carcaMina;
                                      },
                                    );
                                  },
                                  child: MyCustomWidget()),
                            )),
                        Positioned(
                            top: 140,
                            right: 80,
                            child: Visibility(
                              visible: showmina,
                              child: GestureDetector(
                                  onTap: () {
                                    setState(
                                          () {
                                        khyam = !khyam;

                                      },
                                    );
                                  },
                                  child: MyCustomWidget()),
                            )),
                        Positioned(
                            top: 200,
                            left: 80,
                            child: Visibility(
                              visible: showmina,
                              child: GestureDetector(
                                  onTap: () {
                                    setState(
                                          () {
                                            people=!people;

                                      },
                                    );
                                  },
                                  child: MyCustomWidget()),
                            )),
                        Positioned(
                            top: 300,
                            right: 70,
                            child: Visibility(
                              visible: showmina,
                              child: GestureDetector(
                                  onTap: () {
                                    setState(
                                          () {
wcMina=!wcMina;
                                      },
                                    );
                                  },
                                  child: MyCustomWidget()),
                            )),


                      ]),
                  ),
              ),
          ),
          Visibility(
            visible: carcaMina,
            child: Positioned(
                top: MediaQuery.of(context).size.height * .4,
                left: 550,
                child: ImageWithText(
                  text:
                  " تهيئة وتهذيب المساحات الجبلية  \nبمشــــعري مـــنى ومــزدلفة",

                )),
          ),Visibility(
            visible: khyam,
            child: Positioned(
                top: MediaQuery.of(context).size.height * .3,
                left: 300,
                child: ImageWithText(
                  text:
                  "إعادة تأهيل عدد من مواقع  \nمخيـــمات اســـــكان الحــــــجاج",
                )),
          ),
          Visibility(
            visible: kitchen,
            child: Positioned(
                top: MediaQuery.of(context).size.height * .37,
                left: 200,
                child: ImageWithText(
                  text: "مشروع أعمال تحسين\nالمطابخ المـــركزية",
                )),
          ),
          Visibility(
            visible: people,
            child: Positioned(
                top: MediaQuery.of(context).size.height * .45,
                left: 200,
                child: ImageWithText(
                  text:
                  "منشـــأةالجمرات ",
                )),
          ),
          Visibility(
            visible: wcMina,
            child: Positioned(
                top: MediaQuery.of(context).size.height * .6,
                left: 300,
                child: ImageWithText(
                  text: "أعمال تحســـينات مـــــجمعات  \nدورات المياه واعمال البنية التحتية",
                )),
          ),

          Positioned(
              top: MediaQuery.of(context).size.height * .27,
              right: 230,
              child: Opacity(
                  opacity: _opacity.value,
                  child: Transform.scale(
                      scale: _transform.value,
                      child: Stack(children: [
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              showArafat=!showArafat;
                            });
                          },
                          child: Image.asset(
                            AppConst().arafat,
                            width: MediaQuery.of(context).size.width * .20,
                            height: MediaQuery.of(context).size.height * .5,
                          ),
                        ),
                        Visibility(
                          visible: sand,
                          child: Positioned(
                              top: 80,
                              left: 35,
                              child: Image.asset(
                                AppConst().sand,
                                width: 110,
                                height: 110,
                              )),
                        ),
                        Positioned(
                          top: 200,
                          left: 50,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(children: [
                                  Visibility(
                                    visible:wcArafat,
                                    child: Image.asset(
                                      AppConst().wcc,
                                      width: 145,
                                      height: 154,
                                    ),
                                  ),
                                  Visibility(
                                    visible: constructions,
                                    child: Image.asset(
                                      AppConst().construction,
                                      width: 150,
                                      height: 150,
                                    ),
                                  ),
                                ]),
                              ]),
                        ),
                        Visibility(
                          visible: namera,
                          child: Positioned(
                              top: 380,
                              left: 50,
                              child: Image.asset(
                                AppConst().mosque2,
                                width: 110,
                                height: 100,
                              )),
                        ),
                        Positioned(
                            top: 380,
                            left: 50,
                            child: Visibility(
                              visible: showArafat,
                              child: GestureDetector(
                                  onTap: () {
                                    setState(
                                          () {
                                        namera=!namera;
                                      },
                                    );
                                  },
                                  child: MyCustomWidget()),
                            )),
                        Positioned(
                            top: 100,
                            left: 50,
                            child: Visibility(
                              visible: showArafat,
                              child: GestureDetector(
                                  onTap: () {
                                    setState(
                                          () {
                                      sand=!sand;
                                      },
                                    );
                                  },
                                  child: MyCustomWidget()),
                            )),
                        Positioned(
                            top: 300,
                            right: 0,
                            child: Visibility(
                              visible: showArafat,
                              child: GestureDetector(
                                  onTap: () {
                                    setState(
                                          () {
                                       wcArafat=!wcArafat;
                                      },
                                    );
                                  },
                                  child: MyCustomWidget()),
                            )),
                        Positioned(
                            top: 300,
                            left: 80,
                            child: Visibility(
                              visible: showArafat,
                              child: GestureDetector(
                                  onTap: () {
                                    setState(
                                          () {
                                        constructions=!constructions;
                                      },
                                    );
                                  },
                                  child: MyCustomWidget()),
                            )),
                      ])))),
          Visibility(
            visible: sand,
            child: Positioned(
                top: MediaQuery.of(context).size.height * .3,
                right: 200,
                child: ImageWithText(
                  text:
                  " مشـــــــروع تطويـــــــر وتحســـــــــــين  \nالمنطقة المحيطة بجبل الرحمة",
                //مشـــــــروع تطويـــــــر وتحســـــــــــين
                  // المنطقة المحيطة بجبل الرحمة
                )),
          ),Visibility(
            visible: constructions,
            child: Positioned(
                top: MediaQuery.of(context).size.height * .55,
                right: 550,
                child: ImageWithText(
                  text:
                  "تصميم وتنفيذ البنية التحتية  \nللمخــــيمات المــــرحلة الثانيــــــــــة",
                //  تصميم وتنفيذ البنية التحتية
                  // للمخــــيمات المــــرحلة الثانيــــــــــة
                )),
          ),
          Visibility(
            visible: namera,
            child: Positioned(
                top: MediaQuery.of(context).size.height * .7,
                right: 400,
                child: ImageWithText(
                  text: "مسجد نمرة",
                )),
          ),

          Visibility(
            visible: wcArafat,
            child: Positioned(
                top: MediaQuery.of(context).size.height * .6,
                right: 100,
                child: ImageWithText(
                  text: " إنشاء مجمعات لدورات  \nذات الطابقين",
                //  إنشاء مجمعات لدورات
                  // المـــــــــــياه ذات الطابقين
                )),
          ),
        ]),
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
