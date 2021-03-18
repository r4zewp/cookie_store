import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cookies_store/other/constants.dart';
import 'package:cookies_store/screens/bottom_bar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          Navigator.popAndPushNamed(context, "/");
        },
        iconSize: 25.0,
        icon: Icon(
            Icons.arrow_back
        ),
        color: Colors.grey[600],
      ),
      title: Text(
        'Pickup',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: primaryFont,
            fontSize: 22.0,
            color: Colors.grey[600]
        ),
      ),
    ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20.0, 20.0, 0, 10.0),
            child: Container(
              child: Text(
                  'Categories',
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontFamily: primaryFont,
                    fontSize: 43.0,
                    fontWeight: FontWeight.bold,
                  )
              ),
            ),
          ),
          TabBar(
            labelPadding: EdgeInsets.fromLTRB(25, 0, 35, 0),
            labelColor: Colors.deepOrange,
            unselectedLabelColor: Colors.grey[700],
            indicatorColor: Colors.transparent,
            isScrollable: true,
            controller: _tabController,
            tabs: [
              Tab(
                child: Text(
                  'Cookies',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: primaryFont,
                    fontSize: 20.0
                  )
                ),
              ),
              Tab(
                child: Text(
                  'Cookies cake',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: primaryFont,
                    fontSize: 20.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Ice cream',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: primaryFont,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.deepOrange,
        elevation: 5.0,
        child: Icon(
          Icons.fastfood,
          color: Colors.white
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}
