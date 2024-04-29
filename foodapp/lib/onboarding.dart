import 'package:flutter/material.dart';
import 'package:foodapp/const.dart';
import 'package:foodapp/screen_widget.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int pageIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: pageIndex);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        PageView.builder(
          onPageChanged: (value) {
            setState(() {
              pageIndex = value;
            });
          },
          itemCount: 3,
          controller: pageController,
          itemBuilder: ((context, index) {
            return ScreenWidget(
              index: pageIndex,
            );
          }),
        ),
        Positioned(
          bottom: 0,
          child: SizedBox(
            height: size.height * 0.20,
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      3,
                      (index) => Container(
                            margin: EdgeInsets.symmetric(horizontal: 8),
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                    pageIndex == index ? Colors.red : bgColor),
                          )),
                ),
                SizedBox(
                  height: 50,
                  width: size.width - 100,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: btnColor),
                    onPressed: pageIndex == 2
                        ? () {}
                        : () {
                            pageController.nextPage(
                                duration: Duration(milliseconds: 600),
                                curve: Curves.easeIn);
                          },
                    child: Text(
                      pageIndex == 2 ? "PROCEED" : 'NEXT',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        if (pageIndex != 2)
          Positioned(
            right: 30,
            top: 30,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: btnColor),
              onPressed: () {},
              child: const Text(
                'SKIP',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          )
      ],
    ));
  }
}
