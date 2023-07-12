import 'package:flutter/material.dart';
import 'colors.dart' as color;

class BulkingScreen extends StatefulWidget {
  const BulkingScreen({super.key});

  @override
  State<BulkingScreen> createState() => _BulkingScreenState();
}

class _BulkingScreenState extends State<BulkingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            "Bulking..",
            style: TextStyle(
                fontSize: 35,
                color: Colors.blueAccent,
                fontWeight: FontWeight.w600),
          )),
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: color.AppColor.homePageBackground,
        body: Container(
            child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 330,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      color.AppColor.gradientFirst.withOpacity(0.9),
                      color.AppColor.gradientSecond
                    ], begin: Alignment.bottomLeft, end: Alignment.centerRight),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(5, 10),
                          blurRadius: 20,
                          color: color.AppColor.gradientSecond.withOpacity(0.2))
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Morning Breakfast",
                      style: TextStyle(
                          fontSize: 30,
                          color: color.AppColor.homePageContainerTextBig,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "10 Eggs followed by \n 1 scoop of Whey Protein and \n then 1 cup of Oats",
                      style: TextStyle(
                          fontSize: 20,
                          color: color.AppColor.homePageContainerTextSmall,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          "assets/eggs.png",
                          width: 180,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          "assets/whey1.jpg",
                          width: 190,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 330,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            color.AppColor.gradientFirst.withOpacity(0.9),
                            color.AppColor.gradientSecond
                          ],
                          begin: Alignment.bottomLeft,
                          end: Alignment.centerRight),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                          topRight: Radius.circular(50)),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(5, 10),
                            blurRadius: 20,
                            color:
                                color.AppColor.gradientSecond.withOpacity(0.2))
                      ]),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Afternoon Lunch",
                          style: TextStyle(
                              fontSize: 30,
                              color: color.AppColor.homePageContainerTextBig,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "200g cooked Rice with \n150g of dal and \n then 200g of chicken",
                          style: TextStyle(
                              fontSize: 20,
                              color: color.AppColor.homePageContainerTextSmall,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Image.asset(
                              "assets/dalrice.png",
                              width: 180,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              "assets/chicken.png",
                              width: 200,
                            ),
                          ],
                        ),
                      ])),
              SizedBox(
                height: 25,
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 330,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            color.AppColor.gradientFirst.withOpacity(0.9),
                            color.AppColor.gradientSecond
                          ],
                          begin: Alignment.bottomLeft,
                          end: Alignment.centerRight),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                          topRight: Radius.circular(50)),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(5, 10),
                            blurRadius: 20,
                            color:
                                color.AppColor.gradientSecond.withOpacity(0.2))
                      ]),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Night Dinner",
                          style: TextStyle(
                              fontSize: 30,
                              color: color.AppColor.homePageContainerTextBig,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "3 chapattis with \n40g of peanut butter and \n then 200g of chicken",
                          style: TextStyle(
                              fontSize: 20,
                              color: color.AppColor.homePageContainerTextSmall,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Image.asset(
                              "assets/chapati.png",
                              width: 180,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              "assets/chicken.png",
                              width: 200,
                            ),
                          ],
                        ),
                      ])),
            ],
          ),
        )));
  }
}
