import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime firstDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: SafeArea(
        top: true,
        bottom: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _DDay(
              onHeartPressed: onHeartPressed,
            ),
            _CoupleImage(),
          ],
        ),
      ),
    );
  }
}

void onHeartPressed(){//onHeartPressed 클릭시 발생하는 이벤트
  print('클릭');
}

class _DDay extends StatelessWidget {
    final GestureTapCallback onHeartPressed;//onHeartPressed 탭이 발생했을때 이벤트

  _DDay({
    required this.onHeartPressed,// onHeartPressed 클릭시 재 요청 되는 함수
});
  @override
  Widget build(BuildContext context) {//_DDay 관련 UI 입력
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        const SizedBox(height: 16.0),
        Text(
          'U&I',
          style: textTheme.headline1,
        ),
        const SizedBox(height: 16.0),
        Text(
          '우리 처음 만난 날',
          style: textTheme.bodyText1,
        ),
        Text(
          '????.??.??',
          style: textTheme.bodyText2,
        ),
        const SizedBox(height: 16.0),
        IconButton(
            onPressed: onHeartPressed,
            icon: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
        ),
        const SizedBox(height: 16.0),
        Text(
          'D+@',
          style: textTheme.headline2,
        ),
      ],
    );
  }
}

class _CoupleImage extends StatelessWidget {//_CoupleImage UI 작성
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Image.asset(
          fit: BoxFit.fitHeight,
          'asset/image_2.jpg',
          height: MediaQuery.of(context).size.height,
        ),
      ),
    );
  }
}
