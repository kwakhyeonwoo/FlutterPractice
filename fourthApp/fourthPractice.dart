import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
            _DDay(),
            _CoupleImage(),
          ],
        ),
      ),
    );
  }
}

class _DDay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16.0),
        Text(
          'U&I',
        ),
        const SizedBox(height: 16.0),
        Text(
          '우리 처음 만난 날',
        ),
        Text(
          '????.??.??',
        ),
        const SizedBox(height: 16.0),
        IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.favorite,
            ),
        ),
        const SizedBox(height: 16.0),
        Text(
          'D+@',
        ),
      ],
    );
  }
}

class _CoupleImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        fit: BoxFit.fitHeight,
        'asset/image_2.jpg',
        height: MediaQuery.of(context).size.height/2,
      ),
    );
  }
}
