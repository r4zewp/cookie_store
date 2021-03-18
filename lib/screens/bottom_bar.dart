import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 8.0,
      color: Colors.transparent,
      elevation: 15.0,
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35.0),
            topRight: Radius.circular(35.0),
          ),
          color: Colors.white,
        ),
        child: Container(
          height: 50.0,
          width: MediaQuery.of(context).size.width / 2 - 40.0,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 17, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.home_outlined,
                  size: 35.0,
                  color: Colors.grey[600],
                ),
                Icon(
                  Icons.people_alt_outlined,
                  color: Colors.grey[600],
                  size: 35.0,
                ),
                Icon(
                  Icons.search,
                  color: Colors.grey[600],
                  size: 35.0,
                ),
                Icon(
                  Icons.shopping_bag_outlined,
                  size: 35.0,
                  color: Colors.grey[600]
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
