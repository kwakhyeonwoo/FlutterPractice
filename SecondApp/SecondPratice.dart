import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('점심 메뉴 추천'),
        ),
        body: Center(
          child: RandomFoodMenu(),
        ),
      ),
    );
  }
}

class RandomFoodMenu extends StatefulWidget {
  @override
  _RandomFoodMenuState createState() => _RandomFoodMenuState();
}

class _RandomFoodMenuState extends State<RandomFoodMenu> {
  int _foodMenuIndex = 0; // 음식 메뉴 인덱스

  List<String> _foodMenuList = [
    '카레',
    '밀돈',
    '학식',
    '명칼',
    '햄버거',//대표메뉴:
    '영성식당',//대표메뉴: 제육볶음
    '국밥',//대표메뉴: 소머리국밥, 순댓국
    '피자',//대표메뉴: 피자스쿨
    '수유리우동',// 대표메뉴: 비빔국수, 우동
    '권순옥김밥',//대표메뉴:
  ]; // 랜덤으로 선택할 음식 메뉴 리스트

  void _selectRandomFoodMenu() {
    setState(() {
      _foodMenuIndex = Random().nextInt(_foodMenuList.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    String selectedMenu = _foodMenuList[_foodMenuIndex];

    return Container(
      color: Colors.white24,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (selectedMenu == '학식') 
            Image.asset(
              'assets/Hansik.jpg',
              width: 500,
              height: 300,
              fit: BoxFit.contain,
            ),
          if(selectedMenu == '카레')
            Image.asset(
              'assets/IndiaCurry.jpg',
              width: 500,
              height: 300,
              fit: BoxFit.contain,
            ),
          if(selectedMenu == '밀돈')
            Image.asset(
              'assets/PorkCutlet.jpg',
              width: 500,
              height: 300,
              fit: BoxFit.contain,
            ),
          if(selectedMenu == '명칼')
            Image.asset(
              'assets/KoreaNoodle.jpg',
              width: 500,
              height: 300,
              fit: BoxFit.contain,
            ),
          if(selectedMenu == '햄버거')
            Image.asset(
              'assets/Hamburger.jpg',
              width: 500,
              height: 300,
              fit: BoxFit.contain,
            ),
          if(selectedMenu == '영성식당')
            Image.asset(
              'assets/HansikSoup.jpg',
              width: 500,
              height: 300,
              fit: BoxFit.contain,
            ),
          if(selectedMenu == '국밥')
            Image.asset(
              'assets/KoreaMeal.jpg',
              width: 500,
              height: 300,
              fit: BoxFit.contain,
            ),
          if(selectedMenu == '피자')
            Image.asset(
              'assets/Pizza.jpg',
              width: 500,
              height: 300,
              fit: BoxFit.contain,
            ),
          if(selectedMenu == '수유리우동')
            Image.asset(
              'assets/KoreaMixNoodle.jpg',
              width: 500,
              height: 300,
              fit: BoxFit.contain,
            ),
          if(selectedMenu == '권순옥김밥')
            Image.asset(
              'assets/Kimbab.jpg',
              width: 500,
              height: 300,
              fit: BoxFit.contain,
            ),
          Text(
            '금일 점심 메뉴',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Text(
            selectedMenu,
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _selectRandomFoodMenu,
            child: Icon(Icons.fastfood_sharp),
          ),
        ],
      ),
    );
  }
}
