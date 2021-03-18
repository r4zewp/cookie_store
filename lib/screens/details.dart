import 'package:cookies_store/screens/cookie_modal.dart';
import 'package:flutter/material.dart';
import 'package:cookies_store/screens/bottom_bar.dart';
import 'package:cookies_store/other/constants.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Color(0xFFFCFAF8),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 10.0, 0),
              child: Icon(
                Icons.notifications_none,
                color: Colors.deepOrange,
              ),
            )
          ],
          leading: IconButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, "/details");
            },
            iconSize: 25.0,
            icon: Icon(
                Icons.arrow_back
            ),
            color: Colors.grey[600],
          ),
          title: Text(
            'Categories',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: primaryFont,
              fontSize: 22.0,
              color: Colors.grey[600]
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.deepOrange,
          child: Icon(
            Icons.fastfood,
            color: Colors.white,
          ),
        ),
        bottomNavigationBar: BottomBar(),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 20.0, 0, 10.0),
              child: Container(
                child: Text(
                  'Cookie',
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontFamily: primaryFont,
                    fontSize: 43.0,
                    fontWeight: FontWeight.bold,
                  )
                ),
              ),
            ),
            Center(
                child: CookieModal()
            )
          ],
        ),
      );
  }
}
