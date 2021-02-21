import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:open_appstore/open_appstore.dart';

class RecApp extends StatefulWidget {
  RecApp({Key key}) : super(key: key);

  @override
  _RecAppState createState() => _RecAppState();
}

class _RecAppState extends State<RecApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 20,
          centerTitle: true,
          title: new Text(
            "تطُبَيقٌات نرٍشُحٍها لُِڪ",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25,color: Colors.orange),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: <Widget>[
            //
            Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                margin: EdgeInsets.only(bottom: 0, top: 0),
                elevation: 20,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ListTile(
                        trailing: Image.asset(
                          'assets/app_quran.png',
                        ),
                        title: Text(
                          'الُِقٌرٍآن الُِڪرٍيم ڪاملُِ بَدِوُن انترٍنت',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w800, fontSize: 25,color: Colors.green),
                        ),
                      ),
                    ),
                    Card(
                      color: Theme.of(context).primaryColor,
                      margin: EdgeInsets.only(bottom: 0, top: 0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40))),
                      elevation: 5,
                      child: Container(
                        width: 200,
                        padding: EdgeInsets.all(7),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            //
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(20),
                                onTap: () {
                                  OpenAppstore.launch(
                                      androidAppId:
                                          "com.simppro.quran.offline");
                                },
                                child: CircleAvatar(
                                  backgroundColor: Theme.of(context).cardColor,
                                  child: Icon(FontAwesomeIcons.android),
                                ),
                              ),
                            ),

                            //
                            /*Container(
                              margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(20),
                                onTap: () {
                                  OpenAppstore.launch(iOSAppId: "1164088669");
                                },
                                child: CircleAvatar(
                                  backgroundColor: Theme.of(context).cardColor,
                                  child: Icon(FontAwesomeIcons.appStoreIos),
                                ),
                              ),
                            ),
                            */
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            //
            SizedBox(
              height: 10,
            ),
            //
            Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                margin: EdgeInsets.only(bottom: 0, top: 0),
                elevation: 20,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ListTile(
                        trailing: Image.asset(
                          'assets/app_Salatuk.png',
                        ),
                        title: Text(
                          'صلاتك  Salatuk (أوقات الصلاة)',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w800, fontSize: 25,color: Colors.green),
                        ),
                      ),
                    ),
                    Card(
                      color: Theme.of(context).primaryColor,
                      margin: EdgeInsets.only(bottom: 0, top: 0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40))),
                      elevation: 5,
                      child: Container(
                        width: 200,
                        padding: EdgeInsets.all(7),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            //
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(20),
                                onTap: () {
                                  OpenAppstore.launch(
                                      androidAppId: "com.masarat.salati");
                                },
                                child: CircleAvatar(
                                  backgroundColor: Theme.of(context).cardColor,
                                  child: Icon(FontAwesomeIcons.android),
                                ),
                              ),
                            ),

                            /*
                            Container(
                              margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(20),
                                onTap: () {
                                  OpenAppstore.launch(iOSAppId: "686077611");
                                },
                                child: CircleAvatar(
                                  backgroundColor: Theme.of(context).cardColor,
                                  child: Icon(FontAwesomeIcons.appStoreIos),
                                ),
                              ),
                            ),
                            */
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            //
            SizedBox(
              height: 10,
            ),
            //
            Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                margin: EdgeInsets.only(bottom: 0, top: 0),
                elevation: 20,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ListTile(
                        trailing: Image.asset(
                          'assets/app_islamicLibrary.png',
                        ),
                        title: Text(
                          'الُِمڪتبَة الُِإسلُِامية الُِشُاملُِة',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 25,color: Colors.green),
                        ),
                      ),
                    ),
                    Card(
                      color: Theme.of(context).primaryColor,
                      margin: EdgeInsets.only(bottom: 0, top: 0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40))),
                      elevation: 5,
                      child: Container(
                        width: 200,
                        padding: EdgeInsets.all(7),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            //
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(20),
                                onTap: () {
                                  OpenAppstore.launch(
                                      androidAppId: "com.wappster.islamicbooks");
                                },
                                child: CircleAvatar(
                                  backgroundColor: Theme.of(context).cardColor,
                                  child: Icon(FontAwesomeIcons.android),
                                ),
                              ),
                            ),

                            /*
                            Container(
                              margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(20),
                                onTap: () {
                                  OpenAppstore.launch(iOSAppId: "1485693326");
                                },
                                child: CircleAvatar(
                                  backgroundColor: Theme.of(context).cardColor,
                                  child: Icon(FontAwesomeIcons.appStoreIos),
                                ),
                              ),
                            ),
                            */
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            //
            SizedBox(
              height: 10,
            ),
            //
            Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                margin: EdgeInsets.only(bottom: 0, top: 0),
                elevation: 20,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ListTile(
                        trailing: Image.asset(
                          'assets/app_almoazin.png',
                        ),
                        title: Text(
                          ' الُِمؤذَن \n Al Moazin  ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w800, fontSize: 25,color: Colors.green),
                        ),
                      ),
                    ),
                    Card(
                      color: Theme.of(context).primaryColor,
                      margin: EdgeInsets.only(bottom: 0, top: 0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40))),
                      elevation: 5,
                      child: Container(
                        width: 200,
                        padding: EdgeInsets.all(7),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            //
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(20),
                                onTap: () {
                                  OpenAppstore.launch(
                                      androidAppId: "com.parfield.prayers.lite");
                                },
                                child: CircleAvatar(
                                  backgroundColor: Theme.of(context).cardColor,
                                  child: Icon(FontAwesomeIcons.android),
                                ),
                              ),
                            ),

                            //
                           /*Container(
                              margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(20),
                                onTap: () {
                                  OpenAppstore.launch(iOSAppId: "637678038");
                                },
                                child: CircleAvatar(
                                  backgroundColor: Theme.of(context).cardColor,
                                  child: Icon(FontAwesomeIcons.appStoreIos),
                                ),
                              ),
                            ),
                            */
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            //
            SizedBox(
              height: 10,
            ),
            //
            Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                margin: EdgeInsets.only(bottom: 0, top: 0),
                elevation: 20,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ListTile(
                        trailing: Image.asset(
                          'assets/app_moamen.png',
                        ),
                        title: Text(
                          'حٍقٌيبَة الُِمؤمن',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w800, fontSize: 25,color: Colors.green),
                        ),
                      ),
                    ),
                    Card(
                      color: Theme.of(context).primaryColor,
                      margin: EdgeInsets.only(bottom: 0, top: 0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40))),
                      elevation: 5,
                      child: Container(
                        width: 200,
                        padding: EdgeInsets.all(7),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            //
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(20),
                                onTap: () {
                                  OpenAppstore.launch(
                                      androidAppId: "net.alkafeel.mcb");
                                },
                                child: CircleAvatar(
                                  backgroundColor: Theme.of(context).cardColor,
                                  child: Icon(FontAwesomeIcons.android),
                                ),
                              ),
                            ),

                            /*
                            Container(
                              margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(20),
                                onTap: () {
                                  OpenAppstore.launch(iOSAppId: "935681991");
                                },
                                child: CircleAvatar(
                                  backgroundColor: Theme.of(context).cardColor,
                                  child: Icon(FontAwesomeIcons.appStoreIos),
                                ),
                              ),
                            ),
                            */
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            //
          ],
        ));
  }
}
