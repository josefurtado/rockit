import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      color: Color(0xFF55418E),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: size.width * 0.2,
            right: 24.0,
            child: RotationTransition(
              turns: AlwaysStoppedAnimation(1 / 360),
              child: Image(
                image: AssetImage(
                  'assets/images/scooter.png',
                ),
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  top: 55.0,
                  left: size.width - 50,
                ),
                child: InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: <Widget>[
                    Image.asset('assets/images/user.png'),
                    Padding(
                      padding: EdgeInsets.only(left: 9.0),
                      child: RichText(
                        text: TextSpan(
                          text: 'Whitney Leon',
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontFamily: 'MuliBold',
                            color: Colors.white,
                            height: 1.5,
                            fontSize: 16,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: '\n+91 6987978287',
                              style: TextStyle(
                                fontFamily: 'MuliRegular',
                                fontSize: 10,
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
          Padding(
            padding: EdgeInsets.only(left: 5.0, top: 90),
            child: ListView(
              children: <Widget>[
                ListTile(
                  dense: true,
                  title: Text(
                    'Home',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'MuliBold',
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  onTap: () => {},
                ),
                ListTile(
                  dense: true,
                  title: Text(
                    'Travel History',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'MuliRegular',
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  onTap: () => {},
                ),
                ListTile(
                  dense: true,
                  title: Text(
                    'Settings',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'MuliRegular',
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  onTap: () => {},
                ),
                ListTile(
                  dense: true,
                  title: Text(
                    'Help',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'MuliRegular',
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  onTap: () => {},
                ),
                ListTile(
                  dense: true,
                  title: Text(
                    'Privacy Policy',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'MuliRegular',
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  onTap: () => {},
                ),
                ListTile(
                  dense: true,
                  title: Text(
                    'Terms & Conditions',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'MuliRegular',
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  onTap: () => {},
                ),
                ListTile(
                  dense: true,
                  title: Text(
                    'Logout',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'MuliRegular',
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  onTap: () => {},
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: size.height - 40),
            child: Text(
              'Version 10.0.1',
              style: TextStyle(
                decoration: TextDecoration.none,
                fontFamily: 'MuliRegular',
                color: Colors.white,
                fontSize: 10,
              ),
            ),
          )
        ],
      ),
    );
  }
}
