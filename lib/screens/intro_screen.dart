import 'package:dr_aqi/screens/root.dart';

import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:intro_slider/dot_animation_enum.dart';

import '../constants/gradient.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({ Key? key }) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  // ignore: deprecated_member_use
  List<Slide> slides = [];

  late Function goToTab;

  @override
  void initState() {
    super.initState();    
  }

  void onDonePress() {
    Navigator.push(
      context,
      MaterialPageRoute<void>(
          builder: (context) => const RootApp()),
    );
  }

  void onTabChangeCompleted(index) {
    // Index of current tab is focused
  }

  Widget renderNextBtn() {
    return const Icon(
      Icons.navigate_next,
      color: Colors.white,
      size: 35.0,
    );
  }

  Widget renderDoneBtn() {
    return const Icon(
      Icons.done,
      color: Colors.white,
    );
  }

  Widget renderSkipBtn() {
    return const Icon(
      Icons.skip_next,
      color: Colors.white,
    );
  }

  List<Widget> renderListCustomTabs() {
    List<Widget> tabs = [];
      // ignore: sized_box_for_whitespace
      tabs.add(
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Container(
            margin: const EdgeInsets.only(bottom: 60.0),
            child: ListView(
              children: <Widget>[
                GestureDetector(
                    child: Image.asset(
                  "assets/images/next1.png",
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.5,
                  fit: BoxFit.fill,
                )),
                Container(
                  child: const Text(
                    "Real - Time AQI Monitoring",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'RobotoMono'
                    ),
                    textAlign: TextAlign.center,
                  ),
                  margin: const EdgeInsets.only(top: 40.0),
                ),
                Container(
                  child: const Text(
                    "Smart Real-Time updates and Notifications keeps you protected and prepared.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Raleway'
                    ),
                    textAlign: TextAlign.center,
                  ),
                  margin: const EdgeInsets.only(top: 40.0),
                ),
              ],
            ),
          ),
        ),
      );
      tabs.add(
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Container(
            margin: const EdgeInsets.only(bottom: 60.0),
            child: ListView(
              children: <Widget>[
                GestureDetector(
                    child: Image.asset(
                  "assets/images/mitigation.png",
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.5,
                  fit: BoxFit.fill,
                )),
                Container(
                  child: const Text(
                    "Mitigation",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'RobotoMono'
                    ),
                    textAlign: TextAlign.center,
                  ),
                  margin: const EdgeInsets.only(top: 40.0),
                ),
                Container(
                  child: const Text(
                    "Effective Measures as per AQI severity",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Raleway'
                    ),
                    textAlign: TextAlign.center,
                  ),
                  margin: const EdgeInsets.only(top: 40.0),
                ),
              ],
            ),
          ),
        ),
      );
      tabs.add(
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Container(
            margin: const EdgeInsets.only(bottom: 90.0, top: 30.0),
            child: GestureDetector(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                child: Image.asset(
                  "assets/images/accesscreen.png",
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  fit: BoxFit.contain,
                ),
              )
            ),
          ),              
        ),        
      );
    
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: AppGradient(),
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: IntroSlider(
          // List slides
          //slides: slides,
      
          // Skip button
          renderSkipBtn: renderSkipBtn(),
          colorSkipBtn: Colors.black,
          highlightColorSkipBtn: Colors.white,
      
          // Next button
          renderNextBtn: renderNextBtn(),
      
          // Done button
          renderDoneBtn: renderDoneBtn(),
          onDonePress: onDonePress,
          colorDoneBtn: Colors.black,
          highlightColorDoneBtn: Colors.white,
      
          // Dot indicator
          colorDot: Colors.black,
          sizeDot: 13.0,
          typeDotAnimation: dotSliderAnimation.SIZE_TRANSITION,
      
          // Tabs
          listCustomTabs: renderListCustomTabs(),
          refFuncGoToTab: (refFunc) {
            goToTab = refFunc;
          },
      
          // Show or hide status bar
          //shouldHideStatusBar: true,
      
          // On tab change completed
          onTabChangeCompleted: onTabChangeCompleted,
        ),
      ),
    );
  }
}