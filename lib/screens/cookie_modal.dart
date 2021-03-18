import 'package:flutter/material.dart';
import 'package:cookies_store/other/constants.dart';

class CookieModal extends StatefulWidget {
  @override
  _CookieModalState createState() => _CookieModalState();
}

class _CookieModalState extends State<CookieModal> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFFCFAF8),
      elevation: 0.0,
      child: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.65,
                height: MediaQuery.of(context).size.height * 0.30,
                child: Image(
                  image: AssetImage("lib/image/cookie.png")
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                        '\$3.99',
                      style: TextStyle(
                        fontFamily: primaryFont,
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0,
                        color: Colors.deepOrange,
                      ),
                    ),
                    Text(
                      'Cookie mint',
                      style: TextStyle(
                        color: appbarColor,
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: primaryFont
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Text(
                        'Cold, creamy ice cream sandwiched between delicious '
                            'deluxe cookies. Pick your favorite deluxe cookies '
                            'and ice cream flavor.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontFamily: primaryFont,
                          fontSize: 17.0,
                        ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    ButtonTheme(
                      minWidth: MediaQuery.of(context).size.width * 0.7,
                      height: MediaQuery.of(context).size.height * 0.06,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)
                        ),
                        onPressed: () {},
                        color: Colors.deepOrange,
                        elevation: 0.0,
                        child: Text(
                          'Add to cart',
                          style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.white,
                            fontFamily: primaryFont,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );

  }
}
