import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';// 이 패키지를 써야만 Timer사용 가능

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  final PageController pageController = PageController(); // 컨트롤러 조작
  @override
  void initState(){
    super.initState();

    Timer.periodic(
        Duration(seconds: 3),
        (timer){
          int? nextPage = pageController.page?.toInt();
          if(nextPage == null){
            return;
          }
          if(nextPage == 4){
            nextPage = 0;
          } else{
            nextPage++;
          }
          pageController.animateToPage(
            nextPage,
            duration: Duration(milliseconds: 500),
            curve: Curves.ease,
          );
        },
    );
  }
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light); //Ui 상단 밝은 색으로 변경
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [1, 2, 3, 4, 5]
            .map(
              (number) => Image.asset(
            'assets/image_$number.jpg',
            fit: BoxFit.cover,
          ),
        )
            .toList(),
      ),
    );
  }
}
