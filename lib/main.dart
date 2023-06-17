import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    return ScreenUtilInit(

        designSize:  Size(MediaQuery.of(context).size.width	,MediaQuery.of(context).size.height),
    minTextAdapt: true,
    splitScreenMode: true,
    scaleByHeight: true,
    useInheritedMediaQuery: true,
    builder: (context , child) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
        title: 'Kinda',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Kinda'),
      );
        }
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

          Container(
            decoration: BoxDecoration(
              image:DecorationImage(
            image:
            AssetImage(
                AppConst().background,
              ),
            ),
          ),),
          Positioned(
            top: 5,
              right: 5,
              left: 5,

              child: GestureDetector(
                onTap:(){



                } ,
                child:  Container(
                  height: 130.h,
                  width: MediaQuery.of(context).size.width.w,
                  decoration: BoxDecoration(
                    image:DecorationImage(
                      fit: BoxFit.cover
                      ,
                      image:
                      AssetImage(

                        AppConst().header,

                      ),
                    ),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                      GestureDetector(onTap: (){

                        setState(() {
                                show =false;
                          _isShow    =false;
                          showWc     =false;
                          showWcb    =false;
                          showTrainB =false;
                          showTrain  =false;
                          showMosque =false;
                          showMosqueB=false;
                          showNzool  =false;
                          showTrain2 =false;
                          showmina   =false;
                          khyam      =false;
                          kitchen    =false;
                          people     =false;
                          wcMina     =false;
                          carcaMina  =false;
                          sand       =false;
                          constructions=false;
                          wcArafat   =false;
                          namera     =false;
                          showArafat =false;
                        });
                      }, child:
                      Text(' اخفاء كامل ')),
                      GestureDetector(onTap: (){

                        setState(() {
                          show =true;
                          _isShow    =true;
                          showWc     =true;
                          showWcb    =true;
                          showTrainB =true;
                          showTrain  =true;
                          showMosque =true;
                          showMosqueB=true;
                          showNzool  =true;
                          showTrain2 =true;
                          showmina   =true;
                          khyam      =true;
                          kitchen    =true;
                          people     =true;
                          wcMina     =true;
                          carcaMina  =true;
                          sand       =true;
                          constructions=true;
                          wcArafat   =true;
                          namera     =true;
                          showArafat =true;
                        });
                      }, child:
              Text(' اظهار كامل ')),],),
                  ),
                ),
              )
            ,

          ),
          Positioned(
            left: 100.w,
              top: 300.h,
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    showmina   =false;
                    khyam      =false;
                    kitchen    =false;
                    people     =false;
                    wcMina     =false;
                    carcaMina  =false;
                  });
                },
                  onDoubleTap: (){setState(() {
                    showmina   =true;
                    khyam      =true;
                    kitchen    =true;
                    people     =true;
                    wcMina     =true;
                    carcaMina  =true;
                  });},
                  child: Text('MINA\nمنى', style: TextStyle(fontSize: 40.sp, fontWeight: FontWeight.w600, color: Colors.grey),))),
          Positioned(
              right: 100.w,
              top: 200.h,
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    sand       =false;
                    constructions=false;
                    wcArafat     =false;
                    namera       =false;
                    showArafat   =false;
                  });




                },
                onDoubleTap: (){
                  setState(() {
                    sand       =true;
                    constructions=true;
                    wcArafat   =true;
                    namera     =true;
                    showArafat =true;
                  });
                    },
                  child: Text('ARafat\nعرفات', style: TextStyle(fontSize: 40.sp, fontWeight: FontWeight.w600, color: Colors.grey),))),
          Positioned(
right: 1000.w,

              bottom: 200.h,
              child: GestureDetector(
                onTap: (){
                 setState(() {
                   _isShow    =false;
                   showWc     =false;
                   showWcb    =false;
                   showTrainB =false;
                   showTrain  =false;
                   showMosque =false;
                   showMosqueB=false;
                   showNzool  =false;
                   showTrain2 =false;
                 });
                },
                  onDoubleTap: (){setState(() {
                    _isShow    =true;
                    showWc     =true;
                    showWcb    =true;
                    showTrainB =true;
                    showTrain  =true;
                    showMosque =true;
                    showMosqueB=true;
                    showNzool  =true;
                    showTrain2 =true;
                  });},
                  child: Text('MUZDALIFAH\nمزدلفه', style: TextStyle(fontSize: 40.sp, fontWeight: FontWeight.w600, color: Colors.grey),))),
          Positioned(
            top: MediaQuery.of(context).size.height * .3.h,
            left: 560.w,
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
                      width: MediaQuery.of(context).size.width * .19.w,
                      height: MediaQuery.of(context).size.height * .4.h,
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * .06.h,
                    right: MediaQuery.of(context).size.width * .01.w,
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
                                        MediaQuery.of(context).size.width * .1.w,
                                    height:
                                        MediaQuery.of(context).size.height * .1.h,
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
                                        MediaQuery.of(context).size.width * .1.w,
                                    height:
                                        MediaQuery.of(context).size.height * .1.h,
                                  ),
                                ),
                              ),
                            ),
                          ]),
                    ),
                  ),
                  Positioned(
                    top: 250.h,
                    right: 100.w,
                    child: Visibility(
                      visible: showTrainB,
                      child: Opacity(
                        opacity: _opacity.value,
                        child: Transform.scale(
                          scale: _transform.value,
                          child: Image.asset(
                            AppConst().train,
                            width: MediaQuery.of(context).size.width * .1.w,
                            height: MediaQuery.of(context).size.height * .1.h,
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
                      top: 180.h,
                      left: 200.w,
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
                      top: 300.h,
                      left: 170.w,
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
                      top: 300.h,
                      left: 80.w,
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
                        top: 150.h,
                        right: 0.w,
                        child: ImageWithText(
                          text: "مســـــــــــجد\nالمشعر الحرام",
                        )),
                  ),
                  Visibility(
                    visible: showTrain,
                    child: Positioned(
                        top: 230.h,
                        right: 30.w,
                        child: ImageWithText(
                          text:
                              "مشروع تنظيم مــــــــواقع نزول الحجاج  \nاعند محطات قطار المشاعر المقدسة",
                        )),
                  ),
                  Visibility(
                    visible: showTrain2,
                    child: Positioned(
                        top: 370.h,
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
              top: MediaQuery.of(context).size.height * .27.h,
              left: 265.w,
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
                            width: MediaQuery.of(context).size.width * .18.w,
                            height: MediaQuery.of(context).size.height * .4.h,
                          ),
                        ),
                        Visibility(
                          visible:carcaMina,
                          child: Positioned(
                              top: 120.h,
                              right: -11.w,
                              child: Image.asset(
                                AppConst().craca,
                                width: 110.w,
                                height: 110.h,
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
                                      width: 80.w,
                                      height: 80.h,
                                    ),
                                  ),
                                  Visibility(
                                    visible: kitchen,
                                    child: Image.asset(
                                      AppConst().home,
                                      width: 80.w,
                                      height: 80.h,
                                    ),
                                  )
                                ]),
                                Visibility(
                                  visible: people,
                                  child: Image.asset(
                                    AppConst().people,
                                    width: 110.w,
                                    height: 100.h,
                                  ),
                                ),
                              ]),
                        ),
                        Visibility(
                          visible: wcMina,
                          child: Positioned(
                              top: 230.h,
                              right: 50.w,
                              child: Image.asset(
                                AppConst().wc,
                                width: 110.w,
                                height: 100.h,
                              )),
                        ),
                        Positioned(
                            top: 120.h,
                            left: 140.w,
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
                            top: 140.h,
                            right: 13.w,
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
                            top: 140.h,
                            right: 80.w,
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
                            top: 200.h,
                            left: 80.w,
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
                            top: 300.h,
                            right: 70.w,
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
                top: MediaQuery.of(context).size.height * .4.h,
                left: 550.w,
                child: ImageWithText(
                  text:
                  " تهيئة وتهذيب المساحات الجبلية  \nبمشــــعري مـــنى ومــزدلفة",

                )),
          ),Visibility(
            visible: khyam,
            child: Positioned(
                top: MediaQuery.of(context).size.height * .3.h,
                left: 300.w,
                child: ImageWithText(
                  text:
                  "إعادة تأهيل عدد من مواقع  \nمخيـــمات اســـــكان الحــــــجاج",
                )),
          ),
          Visibility(
            visible: kitchen,
            child: Positioned(
                top: MediaQuery.of(context).size.height * .37.h,
                left: 200.w,
                child: ImageWithText(
                  text: "مشروع أعمال تحسين\nالمطابخ المـــركزية",
                )),
          ),
          Visibility(
            visible: people,
            child: Positioned(
                top: MediaQuery.of(context).size.height * .45.h,
                left: 200.w,
                child: ImageWithText(
                  text:
                  "منشـــأةالجمرات ",
                )),
          ),
          Visibility(
            visible: wcMina,
            child: Positioned(
                top: MediaQuery.of(context).size.height * .6.h,
                left: 300.w,
                child: ImageWithText(
                  text: "أعمال تحســـينات مـــــجمعات  \nدورات المياه واعمال البنية التحتية",
                )),
          ),

          Positioned(
              top: MediaQuery.of(context).size.height * .27.h,
              right: 230.w,
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
                            width: MediaQuery.of(context).size.width * .20.w,
                            height: MediaQuery.of(context).size.height * .5.h,
                          ),
                        ),
                        Visibility(
                          visible: sand,
                          child: Positioned(
                              top: 80.h,
                              left: 35.w,
                              child: Image.asset(
                                AppConst().sand,
                                width: 110.w,
                                height: 110.h,
                              )),
                        ),
                        Positioned(
                          top: 200.h,
                          left: 50.w,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(children: [
                                  Visibility(
                                    visible:wcArafat,
                                    child: Image.asset(
                                      AppConst().wcc,
                                      width: 145.w,
                                      height: 154.h,
                                    ),
                                  ),
                                  Visibility(
                                    visible: constructions,
                                    child: Image.asset(
                                      AppConst().construction,
                                      width: 150.w,
                                      height: 150.h,
                                    ),
                                  ),
                                ]),
                              ]),
                        ),
                        Visibility(
                          visible: namera,
                          child: Positioned(
                              top: 380.h,
                              left: 50.w,
                              child: Image.asset(
                                AppConst().mosque2,
                                width: 110.w,
                                height: 100.h,
                              )),
                        ),
                        Positioned(
                            top: 380.h,
                            left: 50.w,
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
                            top: 100.h,
                            left: 50.w,
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
                            top: 300.h,
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
                            top: 300.h,
                            left: 80.w,
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
                top: MediaQuery.of(context).size.height * .3.h,
                right: 200.w,
                child: ImageWithText(
                  text:
                  " مشـــــــروع تطويـــــــر وتحســـــــــــين  \nالمنطقة المحيطة بجبل الرحمة",
                //مشـــــــروع تطويـــــــر وتحســـــــــــين
                  // المنطقة المحيطة بجبل الرحمة
                )),
          ),Visibility(
            visible: constructions,
            child: Positioned(
                top: MediaQuery.of(context).size.height * .55.h,
                right: 550.w,
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
                top: MediaQuery.of(context).size.height * .7.h,
                right: 400.w,
                child: ImageWithText(
                  text: "مسجد نمرة",
                )),
          ),

          Visibility(
            visible: wcArafat,
            child: Positioned(
                top: MediaQuery.of(context).size.height * .6.h,
                right: 100.w,
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
