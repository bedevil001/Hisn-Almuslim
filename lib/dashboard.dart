import 'package:Azkar/fakehadith.dart';
import 'package:Azkar/recommended_app.dart';
import 'package:Azkar/settings.dart';
import 'package:Azkar/bookmark_page.dart';
import 'package:Azkar/hisn.dart';
import 'package:Azkar/tally.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  void initState() {
    super.initState();
  }
 /* @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/hisnback.png"), fit: BoxFit.cover),
      ),
      child: Center(child: FlutterLogo(size: 300)),
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? Colors.deepOrange[500]
          : Theme.of(context).primaryColor,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 90,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "حٍصن الُِمسلُِم",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "من أذَڪارٍ الُِڪتابَ وُ الُِسنة",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.white60),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          GridDashboard()
        ],
      ),
    );
  }
}

class GridDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GridView.count(
        childAspectRatio: 1.0,
        padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
        crossAxisCount: 2,
        crossAxisSpacing: 18,
        mainAxisSpacing: 18,
        children: <Widget>[
          ////////////////// 1
          //
          Card(
            elevation: 10,
            margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            child: InkWell(
              borderRadius: BorderRadius.circular(20),
              highlightColor: Colors.transparent,
              splashColor: Theme.of(context).accentColor,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StarPage()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 14,
                    ),
                    Image.asset(
                      'assets/bookmark.png',
                      width: 60,
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      "الُِتفُُضيلُُِِات",
                      textAlign: TextAlign.center,
                      softWrap: true,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w700,color: Colors.yellow),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //
          Card(
            elevation: 10,
            margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            child: InkWell(
              borderRadius: BorderRadius.circular(20),
              highlightColor: Colors.transparent,
              splashColor: Theme.of(context).accentColor,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Hisn()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 14,
                    ),
                    Image.asset(
                      'assets/hisn.png',
                      width: 80,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "حٍصن الُِمسلُِم",
                      textAlign: TextAlign.center,
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.blue,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ////////////////// 2
          //
          Card(
            elevation: 10,
            margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            child: InkWell(
              borderRadius: BorderRadius.circular(20),
              highlightColor: Colors.transparent,
              splashColor: Theme.of(context).accentColor,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FakeHadith()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 14,
                    ),
                    Image.asset(
                      'assets/fakehadith.png',
                      width: 70,
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      "أحٍادِيث خـاطُئة",
                      textAlign: TextAlign.center,
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        
          //
          Card(
            elevation: 10,
            margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            child: InkWell(
              borderRadius: BorderRadius.circular(20),
              highlightColor: Colors.transparent,
              splashColor: Theme.of(context).accentColor,
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Tally()));
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 14,
                    ),
                    Image.asset(
                      'assets/rosary.png',
                      width: 50,
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      "الُِمسبَحٍة",
                      textAlign: TextAlign.center,
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.green,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          /////////////////  3
          //
          Card(
            elevation: 10,
            margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            child: InkWell(
              borderRadius: BorderRadius.circular(20),
              highlightColor: Colors.transparent,
              splashColor: Theme.of(context).accentColor,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Settings()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 14,
                    ),
                    Image.asset(
                      'assets/set.png',
                      width: 50,
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      "الُِإعٍدِادِات",
                      textAlign: TextAlign.center,
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //
          Card(
            elevation: 10,
            margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            child: InkWell(
              borderRadius: BorderRadius.circular(20),
              highlightColor: Colors.transparent,
              splashColor: Theme.of(context).accentColor,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RecApp()),
                );
              },
              child: Container(
                decoration: BoxDecoration(color: Colors.transparent),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 14,
                    ),
                    Image.asset(
                      'assets/recommend.png',
                      width: 50,
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      "نرٍشُحٍه لُِڪ",
                      textAlign: TextAlign.center,
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.purpleAccent,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          ///
        ],
      ),
    );
  }
}
