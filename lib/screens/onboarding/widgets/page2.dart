import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  final Size size;
  final List<Widget> indicators;

  const Page2({@required this.size, @required this.indicators});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          bottom: 0,
          child: Container(
            height: size.height / 1.7,
            width: size.width - 32,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0),
              ),
              gradient: LinearGradient(
                begin: Alignment(0.0, -1.0),
                end: Alignment(0.0, 0.81),
                colors: [const Color(0xffbddbd6), const Color(0xffbdbddb)],
                stops: [0.0, 1.0],
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height / 4,
              ),
              Text(
                'Manage',
                style: TextStyle(
                  fontFamily: 'DM Sans',
                  fontSize: 52,
                  color: const Color(0xff586f7c),
                  fontWeight: FontWeight.w700,
                  height: 1.5,
                ),
                textAlign: TextAlign.left,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Manage your \nstreaming time and apps.\n',
                  style: TextStyle(
                    fontFamily: 'Prompt',
                    fontSize: 26,
                    color: const Color(0xff586f7c),
                    fontWeight: FontWeight.w300,
                    height: 1,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: size.height / 6,
              ),
              Row(
                children: indicators,
              ),
            ],
          ),
        ),
        // Adobe XD layer: 'movie_icon' (shape)
        Positioned(
          top: 0,
          left: size.width / 4,
          child: Container(
            alignment: Alignment.center,
            height: 2 * size.height / 7.8,
            width: 2 * size.height / 7.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.0),
              image: DecorationImage(
                image: const AssetImage('assets/images/page2.png'),
                fit: BoxFit.fill,
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x29000000),
                  offset: Offset(3, 4),
                  blurRadius: 8,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
