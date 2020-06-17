import 'package:exerciseapp/constants.dart';
import 'package:exerciseapp/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
          children: <Widget>[
            Container(
      height: size.height * 0.55,
      decoration: BoxDecoration(
          color: kBlueLightColor,
          image: DecorationImage(
              image: AssetImage("assets/images/meditation_bg.png"),
              fit: BoxFit.fitWidth)),
            ),
            SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: size.height * 0.05,
              ),
              Text("Meditation",
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(fontWeight: FontWeight.w900)),
              SizedBox(
                height: 10,
              ),
              Text(
                "3-10 MIN Course",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                  width: size.width * 0.6,
                  child: Text(
                      "Live happier and healthier by learning the fundamentals of meditation")),
              SizedBox(width: size.width * 0.5, child: SearchBar()),
              Wrap(
                spacing: 15,
                runSpacing: 20,
                children: <Widget>[
                  SessionCard(
                    sessionNum: 1,
                    isDone: true,
                  ),
                  SessionCard(
                    sessionNum: 2,
                  ),
                  SessionCard(
                    sessionNum: 3,
                  ),
                  SessionCard(
                    sessionNum: 4,
                  ),
                  SessionCard(
                    sessionNum: 5,
                  ),
                  SessionCard(
                    sessionNum: 6,
                  ),
                ],
              ),

              SizedBox(height: 20,),

              Text("Meditation",style: Theme.of(context).textTheme.headline5.copyWith(fontWeight: FontWeight.bold),),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(vertical: 20),
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(13),
                  boxShadow: [
                    BoxShadow(offset: Offset(0, 17),
                    blurRadius: 23,
                    spreadRadius: -13,
                    color: kShadowColor,
                    )
                  ]
                ),
                child: Row(
                  children: <Widget>[
                    SvgPicture.asset("assets/icons/Meditation_women_small.svg"),
                    SizedBox(width: 20,),
                    Expanded(child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Basic 2",style: Theme.of(context).textTheme.subtitle2,),
                        Text("Start  deepen your practise")
                      ],
                    )),
                    Padding(padding: EdgeInsets.all(10),
                    child: SvgPicture.asset("assets/icons/Lock.svg"),
                    )
                  ],
                ),
              ),
            
            ]),
      ),
            )),
          ],
        ),
    );
  }
}

class SessionCard extends StatelessWidget {
  final int sessionNum;
  final bool isDone;
  const SessionCard({Key key, this.sessionNum, this.isDone = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return Container(
        width: constraint.maxWidth / 2.1,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: kShadowColor,
              )
            ]),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Row(
              children: <Widget>[
                Container(
                  height: 42,
                  width: 38,
                  decoration: BoxDecoration(
                      color: isDone ? kBlueColor : Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(color: kBlueColor)),
                  child: Icon(
                    Icons.play_arrow,
                    color: isDone ? Colors.white : kBlueColor,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Session $sessionNum",
                  style: Theme.of(context).textTheme.subtitle1,
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
