import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';


class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      height: 70,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottonNavItem(svgSrc: 'assets/icons/calendar.svg',title: "Today",),
          BottonNavItem(svgSrc: 'assets/icons/gym.svg',title: "All Exercises",isActive: true,),
          BottonNavItem(svgSrc: 'assets/icons/Settings.svg',title: "Settings",),
        ],
      ),
    );
  }
}

class BottonNavItem extends StatelessWidget {
  final String svgSrc;
  final String title;
  final bool isActive;
  const BottonNavItem({
    Key key, this.svgSrc, this.title, this.isActive=false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        
      },
                  child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SvgPicture.asset('$svgSrc',color: isActive?kActiveIconColor:kTextColor,),
          Text("$title",style: TextStyle(
            color: isActive?kActiveIconColor:kTextColor,
          ),),
        ],
      ),
    );
  }
}
