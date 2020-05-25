import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rockit/src/widgets/drawer.widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: DrawerWidget(),
      appBar: AppBar(
        titleSpacing: 6.0,
        title: RichText(
          text: TextSpan(
            text: 'Whitney Leon',
            style: TextStyle(
              decoration: TextDecoration.none,
              fontFamily: 'MuliBold',
              color: Color(0xFF1B1D28),
            ),
            children: <TextSpan>[
              TextSpan(
                text: '\nWelcome back !',
                style: TextStyle(
                  fontFamily: 'MuliRegular',
                  color: Color(0xFF7B7F9E),
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return Image.asset('assets/images/user.png');
          },
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: <Widget>[
          Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: SvgPicture.asset('assets/icons/Union.svg'),
                onPressed: () => {
                  Scaffold.of(context).openEndDrawer(),
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 25, left: 19),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(29),
                        color: Color(0xFFDAD7E8),
                      ),
                      width: 307,
                      height: 208.41,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: ClipPath(
                      clipper: CustomClip(),
                      child: Container(
                        width: 325,
                        height: 216.67,
                        color: Color(0xFF55418E),
                        child: Padding(
                          padding: EdgeInsets.all(40.0),
                          child: RichText(
                            text: TextSpan(
                              text: 'We updated your scooter',
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'MuliBold',
                                fontSize: 16,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text:
                                      '\n\nEverything your scooter needed \nwe did it for you.',
                                  style: TextStyle(
                                    fontFamily: 'MuliRegular',
                                    height: 1.8,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 70,
                      left: 165,
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/Group_130.svg',
                      width: 165,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 32,
                      left: size.width - 125,
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/close.svg',
                      width: 20,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Container(
                  width: 325,
                  height: 104,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFA500),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          text: "Whitney's Scooter",
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontFamily: 'MuliSemiBold',
                            color: Colors.white,
                            height: 1.9,
                            fontSize: 18,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: '\nLocked',
                              style: TextStyle(
                                fontFamily: 'MuliRegular',
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SvgPicture.asset('assets/icons/lock.svg'),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 14),
                child: Wrap(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        width: 152.31,
                        height: 127.08,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            width: 1.0,
                            color: Color(0xFFE6E5F2),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 14, top: 22),
                              child: Text(
                                'Total Distance',
                                style: TextStyle(
                                  fontFamily: 'MuliBold',
                                  fontSize: 14,
                                  color: Color(
                                    0xff55418E,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 3, top: 5),
                              child: SvgPicture.asset('assets/icons/maps.svg'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 14, top: 4),
                              child: Text(
                                '17.8 KM',
                                style: TextStyle(
                                  fontFamily: 'MuliBold',
                                  fontSize: 14,
                                  color: Color(0xFFFFA500),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        width: 152.31,
                        height: 127.08,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            width: 1.0,
                            color: Color(0xFFE6E5F2),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 14, top: 22),
                              child: Text(
                                'Total Battery',
                                style: TextStyle(
                                  fontFamily: 'MuliBold',
                                  fontSize: 14,
                                  color: Color(
                                    0xff55418E,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15, top: 12),
                              child: SvgPicture.asset(
                                'assets/icons/charging.svg',
                                width: 30,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 14, top: 8),
                              child: Text(
                                '100%',
                                style: TextStyle(
                                  fontFamily: 'MuliBold',
                                  fontSize: 14,
                                  color: Color(0xFFFFA500),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        width: 152.31,
                        height: 127.08,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            width: 1.0,
                            color: Color(0xFFE6E5F2),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 14, top: 22),
                              child: Text(
                                'Average Speed',
                                style: TextStyle(
                                  fontFamily: 'MuliBold',
                                  fontSize: 14,
                                  color: Color(
                                    0xff55418E,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 3, top: 5),
                              child: SvgPicture.asset(
                                  'assets/icons/lightning.svg'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 14, top: 4),
                              child: Text(
                                '45 Km/h',
                                style: TextStyle(
                                  fontFamily: 'MuliBold',
                                  fontSize: 14,
                                  color: Color(0xFFFFA500),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        width: 152.31,
                        height: 127.08,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            width: 1.0,
                            color: Color(0xFFE6E5F2),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 14, top: 22),
                              child: Text(
                                'Ride Updated',
                                style: TextStyle(
                                  fontFamily: 'MuliBold',
                                  fontSize: 14,
                                  color: Color(
                                    0xff55418E,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 7, top: 5),
                              child: SvgPicture.asset('assets/icons/arrow.svg'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 14, top: 4),
                              child: Text(
                                '1 day ago',
                                style: TextStyle(
                                  fontFamily: 'MuliBold',
                                  fontSize: 14,
                                  color: Color(0xFFFFA500),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final width = size.width;
    final height = size.height;

    Path path = Path()
      ..moveTo(25, 50)
      ..lineTo(6.5, height - 88)
      ..quadraticBezierTo(-5, height - 42, 55, height - 36)
      ..lineTo(width - 40, height)
      ..quadraticBezierTo(width, height, width, height - 40)
      ..lineTo(width, 40)
      ..quadraticBezierTo(width, 0, width - 45, 0)
      ..lineTo(70, 0)
      ..quadraticBezierTo(35, -2, 28.4, 34.5);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}
