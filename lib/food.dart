import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gym/bulking_screen.dart';
import 'package:gym/cutting_screen.dart';
import 'colors.dart' as color;

class FoodScreen extends StatefulWidget {
  const FoodScreen({super.key});

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: color.AppColor.homePageBackground,
        // extendBodyBehindAppBar: true,
        // appBar: AppBar(
        //   backgroundColor: Colors.transparent,
        //   elevation: 1,

        //   title: Center(
        //     child: const Text(
        //       'DIET PLAN',
        //       style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        //     ),
        //   ),
        //   automaticallyImplyLeading: true,
        // ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              color.AppColor.gradientFirst.withOpacity(0.9),
              color.AppColor.gradientSecond
            ],
            begin: FractionalOffset(0.0, 0.4),
            end: Alignment.topRight,
          )),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 80, left: 50),
                width: MediaQuery.of(context).size.width,
                height: 180,
                child: Text(
                  "Choose your Diet Plan according to your Physique",
                  style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(70)),
                    ),
                    // child: Column(
                    //   children: [],
                    // ),
                    child: SingleChildScrollView(
                        child: Column(children: [
                      SizedBox(
                        height: 40,
                      ),
                      Row(children: [
                        SizedBox(
                          width: 2,
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(() => BulkingScreen());
                          },
                          child: Image.asset(
                            "assets/trial2.png",
                            width: 400,
                            height: 220,
                          ),
                        ),
                      ]),
                      SizedBox(
                        height: 10,
                      ),
                      Row(children: [
                        // SizedBox(
                        //   height: 5,
                        // ),
                        InkWell(
                          onTap: () {
                            Get.to(() => CuttingScreen());
                          },
                          child: Image.asset(
                            "assets/trial.jpg",
                            width: 400,
                            height: 300,
                          ),
                        ),
                      ])
                    ]))),
              )
            ],
          ),
        ));
  }
}
