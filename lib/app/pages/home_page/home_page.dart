import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/components/button.dart';
import '../../core/constants/constants.dart';
import '../datails_page/datails_hero.dart';
import 'widgets/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  @override
  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(
      vsync: this,
      duration: new Duration(seconds: 4),
    );

    animationController.repeat();
  }

  bool isLoad = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          BackgroundWidget(image: ImageConst.theBatmanIntro),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                LogoWidget(),
                Padding(
                  padding: const EdgeInsets.all(60),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isLoad = !isLoad;
                          });
                          Future.delayed(
                            Duration(seconds: 5),
                            () async {
                              isLoad = await Get.to(
                                DatailsHero(),
                                transition: Transition.size,
                                duration: Duration(seconds: 1),
                                curve: Curves.bounceInOut,
                              );
                              setState(() {});
                            },
                          );
                        },
                        child: AnimatedContainer(
                          curve: Curves.bounceInOut,
                          width: isLoad ? 80 : Get.width * 0.80,
                          height: isLoad ? 80 : Get.height * 0.11,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 19,
                                spreadRadius: 0,
                                color: Colors.red.withOpacity(0.7),
                              )
                            ],
                            borderRadius: isLoad
                                ? BorderRadius.circular(100)
                                : BorderRadius.circular(10),
                            color: ColorsConst.primaryColor,
                          ),
                          duration: Duration(milliseconds: 300),
                          child: Center(
                            child: isLoad
                                ? AnimatedBuilder(
                                    animation: animationController,
                                    child: Image.asset(
                                      ImageConst.batLoad,
                                      height: Get.height * 0.09,
                                    ),
                                    builder: (_, widget) {
                                      return Transform.rotate(
                                          angle:
                                              animationController.value * 6.3,
                                          child: widget);
                                    },
                                  )
                                : Text(
                                    'SEE INFORMATION',
                                    style: GoogleFonts.bebasNeue(
                                      fontSize: 26,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Visibility(
                        visible: !isLoad,
                        child: ButtonComponent(
                          text: 'NEW TRAILER',
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
