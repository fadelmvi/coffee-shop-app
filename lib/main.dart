import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'coffee shop',
      theme: ThemeData(
        fontFamily: 'Sora',
      ),
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              color: Color(0xFF131313),
              child: Container(
                margin:
                    EdgeInsets.only(left: 30, right: 30, top: 75, bottom: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 4),
                          child: Text(
                            'Location',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFFB7B7B7),
                            ),
                          ),
                        ),
                        Text(
                          'Bilzen, Tanjungbalai',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFDDDDDD),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'images/profile.png',
                          width: 54,
                          height: 54,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 250,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Color(0xFFE4EDFA),
              ),
            ),
            Positioned(
              top: 170,
              left: 0,
              right: 0,
              child: Container(
                margin: EdgeInsets.only(top: 10),
                child: Image.asset(
                  'images/promo.png',
                  width: 315,
                  height: 140,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
