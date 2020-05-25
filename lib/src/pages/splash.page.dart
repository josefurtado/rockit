import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rockit/src/pages/home.page.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Material(
      child: Container(
        height: size.height,
        width: size.width,
        color: Color(0xFF55418E),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SvgPicture.asset('assets/icons/logo.svg'),
                  Text(
                    'Rockit',
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontFamily: 'MuliRegular',
                      fontSize: 28,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Your scooter in\n ',
                  style: TextStyle(
                    fontFamily: 'MuliBold',
                    decoration: TextDecoration.none,
                    fontSize: 26,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'one app',
                      style: TextStyle(
                        fontFamily: 'MuliBold',
                        decoration: TextDecoration.none,
                        fontSize: 26,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Image.asset(
                'assets/images/illustration.png',
                width: 280,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 30,
                left: 55,
                right: 55,
              ),
              child: Text(
                'Everything you need to know about your scooter is available here in yout app',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontFamily: 'MuliMedium',
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 30, top: size.height * 0.03),
                  child: SvgPicture.asset(
                    'assets/icons/page_counter.svg',
                    width: 50,
                  ),
                ),
                InkWell(
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    ),
                  },
                  child: Padding(
                    padding:
                        EdgeInsets.only(right: 30, top: size.height * 0.03),
                    child: SvgPicture.asset(
                      'assets/icons/started.svg',
                      width: 40,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
