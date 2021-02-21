import 'package:flutter/material.dart';

class About extends StatefulWidget {
  About({Key key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        centerTitle: true,
        title: new Text(
          "حٍوُلُِ الُِتطُبَيقٌ",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25,color: Colors.orange),
        ),
      ),
      body: ListView(
        children: <Widget>[
          const SizedBox(height: 10),

          //المراجع
          Card(
            elevation: 5,
            margin: EdgeInsets.fromLTRB(10, 15, 10, 15),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: <Widget>[
                new ListTile(
                  title: Text(
                    "الُِمصادِرٍ",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.green),
                    textAlign: TextAlign.center,
                  ),
                ),
                BuildDiv(),
                new Directionality(
                    textDirection: TextDirection.rtl,
                    child: new ListTile(
                      title: Text(
                        "ڪتابَ حٍصن الُِمسلُِم \n(من أذَڪارٍ الُِڪتابَ وُالُِسنة)  ",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.deepOrangeAccent,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )),
                BuildDiv(),
                new Directionality(
                    textDirection: TextDirection.rtl,
                    child: new ListTile(
                      title: Text(
                        "لُِلُِأمام  دِ. سعٍيدِ بَن عٍلُِي بَن وُهفُ الُِقٌحٍطُاني ",
                        style: TextStyle(
                          fontSize: 20,
                            color: Colors.pink,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )),
                BuildDiv(),
                new Directionality(
                    textDirection: TextDirection.rtl,
                    child: new ListTile(
                      title: Text(
                        "ڪتبََ هذََا الُِتُِطُُبََيقٌٌ بََالُُِِأعٍٍتمادِِ عٍٍلُُِِي مڪتبََة شُُبََڪة الُُِِڪعٍٍبََة الُُِِأسلُُِِامية",
                        style: TextStyle(
                          fontSize: 20,
                            color: Colors.blue,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )),
              ],
            ),
          ),

          //التطبيق
          Card(
            elevation: 5,
            margin: EdgeInsets.fromLTRB(10, 15, 10, 15),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: <Widget>[
                new ListTile(
                  title: Text(
                    "فَُقٌُلُِْتُ اسْتَغْفُِرٍُوُا رٍَبََّڪُمْ‎",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.green),
                    textAlign: TextAlign.center,
                  ),
                ),
                BuildDiv(),
                new Directionality(
                    textDirection: TextDirection.rtl,
                    child: new ListTile(
                      title: Text(
                        "أستغفُرٍ الُِلُِه عٍدِدِ خـلُِقٌڪ وُرٍضى نفُسڪ وُزْنة عٍرٍشُڪ وُمدِادِ ڪلُِماتڪ، الُِلُِهم اغفُرٍ لُِلُِمسلُِمين جٍميعٍا الُِأحٍياء منهم وُالُِأموُات وُأدِخـلُِهم جٍناتڪ، وُأعٍزْهم من عٍذَابَڪ، وُلُِڪ الُِحٍمدِ ، وُصلُِى الُِلُِهم عٍلُِى أشُرٍفُ الُِخـلُِقٌ سيدِ الُِمرٍسلُِين محٍمدِ.",
                        style: TextStyle(
                          fontSize: 20,
                            color: Colors.blue,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )),
              ],
            ),
          ),

          //المطور
          Card(
            elevation: 5,
            margin: EdgeInsets.fromLTRB(10, 15, 10, 15),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: <Widget>[
                new ListTile(
                  title: Text(
                    "تطُوُيرٍ",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.green),
                    textAlign: TextAlign.center,
                  ),
                ),
                BuildDiv(),
                new Directionality(
                    textDirection: TextDirection.rtl,
                    child: new ListTile(
                      title: Text(
                        "م.محٍمدِ مجٍدِي",
                        style: TextStyle(
                          fontSize: 20,
                            color: Colors.pinkAccent,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
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
