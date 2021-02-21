import 'package:Azkar/about.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:url_launcher/url_launcher.dart';

class Settings extends StatefulWidget {
  Settings({Key key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isDark = false;
  bool val = true;
  bool status = false;
  bool isExpand;
  onSwitchValueChanged(bool newVal) {
    setState(() {
      val = newVal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        centerTitle: true,
        title: new Text(
          "الُِإعٍدِادِات",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25,color: Colors.blueGrey),
        ),
      ),
      body: ListView(
        children: <Widget>[
          const SizedBox(height: 10),
          //
          Card(
            elevation: 20,
            margin: EdgeInsets.fromLTRB(10, 15, 10, 15),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: <Widget>[
                new ListTile(
                  title: Text(
                    "الُِحٍالُِي",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.orange),
                    textAlign: TextAlign.center,
                  ),
                ),
                BuildDiv(),
                Container(
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        flex: 2,
                        child: Column(
                          children: <Widget>[
                            new Directionality(
                                textDirection: TextDirection.rtl,
                                child: new ListTile(
                                  leading: Icon(MdiIcons.weatherNight),
                                  title: Text(
                                    Theme.of(context).brightness ==
                                        Brightness.dark
                                        ? "الُِوُضعٍ الُِصبَاحٍي"
                                        : "الُِوُضعٍ الُِلُِيلُِي",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,color: Colors.blue),
                                  ),
                                  onTap: () {
                                    DynamicTheme.of(context).setBrightness(
                                        Theme.of(context).brightness ==
                                            Brightness.dark
                                            ? Brightness.light
                                            : Brightness.dark);
                                  },
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                BuildDiv(), //

                ExpansionTile(
                    title: Text(
                      "تحٍدِيدِ لُِوُن الُِتطُبَيقٌ الُِصبَاحٍي",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                          color: Colors.greenAccent,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    trailing: Icon(
                      Icons.arrow_drop_down,
                      size: 32,
                    ),
                    onExpansionChanged: (value) {
                      setState(() {
                        isExpand = value;
                      });
                    },
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            //
                            Container(
                              margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(20),
                                onTap: () {
                                  DynamicTheme.of(context)
                                      .setThemeData(new ThemeData(
                                    primarySwatch: Colors.blue,
                                  ));
                                },
                                child: CircleAvatar(
                                  backgroundColor: Colors.blue,
                                ),
                              ),
                            ),
                            //
                            Container(
                              margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(20),
                                onTap: () {
                                  DynamicTheme.of(context)
                                      .setThemeData(new ThemeData(
                                    primarySwatch: Colors.green,
                                  ));
                                },
                                child: CircleAvatar(
                                  backgroundColor: Colors.green,
                                ),
                              ),
                            ),
                            //
                            Container(
                              margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(20),
                                onTap: () {
                                  DynamicTheme.of(context)
                                      .setThemeData(new ThemeData(
                                    primarySwatch: Colors.red,
                                  ));
                                },
                                child: CircleAvatar(
                                  backgroundColor: Colors.red,
                                ),
                              ),
                            ),
                            //
                            Container(
                              margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(20),
                                onTap: () {
                                  DynamicTheme.of(context)
                                      .setThemeData(new ThemeData(
                                    primarySwatch: Colors.deepOrange,
                                  ));
                                },
                                child: CircleAvatar(
                                  backgroundColor: Colors.deepOrange,
                                ),
                              ),
                            ),
                            //
                            Container(
                              margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(20),
                                onTap: () {
                                  DynamicTheme.of(context)
                                      .setThemeData(new ThemeData(
                                    primarySwatch: Colors.purple,
                                  ));
                                },
                                child: CircleAvatar(
                                  backgroundColor: Colors.purple,
                                ),
                              ),
                            ),
                            //
                            //
                            //
                          ],
                        ),
                      ),
                    ]),
                //
              ],
            ),
          ),
          //

          //
          Card(
            elevation: 20,
            margin: EdgeInsets.fromLTRB(10, 5, 10, 15),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: <Widget>[
                new ListTile(
                  title: Text(
                    "لُِلُِتوُاصلُِ معٍنا",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.orange),
                    textAlign: TextAlign.center,
                  ),
                ),
                BuildDiv(),
                new Directionality(
                    textDirection: TextDirection.rtl,
                    child: new ListTile(
                      leading: Icon(MdiIcons.star),
                      title: Text(
                        "لُِتقٌييم الُِتطُبَيقٌ",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold,color: Colors.redAccent),
                      ),
                      onTap: () {
                        _launchURL(
                            'mohamedmagdyali264@gmail.com',
                            'تطبيق حصن المسلم: تقييم التطبيق',
                            'بَما تقٌيم حٍصن الُِمسلُِم(../10)؟' +
                                '<br>' +
                                '<br>' +
                                'ملُِاحٍظًاتڪ تهمنا:' +
                                '<br>' +
                                '<br>' +
                                'ما الُِذَي اعٍجٍبَڪ فُي تطُبَيقٌنا:' +
                                '<br>' +
                                '<br>' +
                                'ماذَا يفُتقٌدِ تطُبَيقٌنا:' +
                                '<br>' +
                                '<br>' +
                                'هلُِ تقٌترٍحٍ اضافُات لُِلُِتطُبَيقٌ:' +
                                '<br>');
                      },
                    )),
                BuildDiv(),
                new Directionality(
                    textDirection: TextDirection.rtl,
                    child: new ListTile(
                      leading: Icon(MdiIcons.email),
                      title: Text(
                        "لُِمرٍاسلُِتنا",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold,color: Colors.greenAccent),
                      ),
                      onTap: () {
                        _launchURL(
                            'mohamedmagdyali264@gmail.com',
                            'تطُبَيقٌ حٍصن الُِمسلُِم: الُِندِاء',
                            'الُِسلُِام عٍلُِيڪم وُرٍحٍمة الُِلُِه وُبَرٍڪاته' + '<br>');
                      },
                    )),
                BuildDiv(),
                new Directionality(
                    textDirection: TextDirection.rtl,
                    child: new ListTile(
                      leading: Icon(MdiIcons.information),
                      trailing: Icon(Icons.keyboard_arrow_left),
                      title: Text(
                        "حٍوُلُِ الُِتطُبَيقٌ",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold,color: Colors.indigoAccent),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => About()),
                        );
                      },
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _launchURL(String toMailId, String subject, String body) async {
    var url = 'mailto:$toMailId?subject=$subject&body=$body';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

class BuildDiv extends StatelessWidget {
  const BuildDiv({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      width: double.infinity,
      height: 1.0,
      color: Theme.of(context).backgroundColor,
    );
  }
}
