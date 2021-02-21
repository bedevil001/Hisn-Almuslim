import 'dart:convert';
import 'package:Azkar/azakar_page.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class StarPage extends StatefulWidget {
  StarPage({Key key}) : super(key: key);

  @override
  _StarPageState createState() => _StarPageState();
}

class _StarPageState extends State<StarPage> {
  List data;
  bool isSearching = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          elevation: 20,
          centerTitle: true,
          title: new Text(
            "الُِتفُُضيلُُِِات",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25,color: Colors.orange),
          ),
        ),
        body: new Container(
          child: Center(
              child: new FutureBuilder(
                  future: DefaultAssetBundle.of(context)
                      .loadString("json/azkar.json"),
                  builder: (context, snapshot) {
                    //decode json file
                    var mydata = json.decode(snapshot.data.toString());

                    return new ListView.builder(
                        itemCount: mydata == null ? 0 : mydata.length,
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        itemBuilder: (
                          BuildContext context,
                          int index,
                        ) {
                          int _counter = int.parse(mydata[index]['count']);
                          int _isStar =
                              int.parse(mydata[index]['star']);
                          bool isStar;
                          if (_isStar == 0) {
                            isStar = true;
                          } else if (_isStar == 1) {
                            isStar = false;
                          }

                          return isStar
                              ? Container()
                              : new Card(
                                  elevation: 10,
                                  margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20.0)),
                                  //shadowColor: Theme.of(context).primaryColor,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(20),
                                    highlightColor: Colors.transparent,
                                    splashColor: Theme.of(context).accentColor,
                                    onTap: () {
                                      Navigator.push(
                                          //
                                          context,
                                          new MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  new AzkarPage(
                                                      mydata[index])));
                                    },
                                    child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 15, 10, 10),
                                      child: new Column(
                                        textDirection: TextDirection.rtl,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          new Text(
                                            mydata[index]['title'],
                                            textAlign: TextAlign.center,
                                            softWrap: true,
                                            style: TextStyle(
                                                fontSize: 25,
                                                color: Colors.blue,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 10),
                                            padding: EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: Center(
                                              child: Row(
                                                textDirection:
                                                    TextDirection.rtl,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: <Widget>[
                                                  new Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        5, 0, 5, 0),
                                                    child: CircleAvatar(
                                                      backgroundColor:
                                                          Theme.of(context)
                                                              .cardColor,
                                                      child: Text(
                                                        '$_counter',
                                                        style: TextStyle(
                                                            fontSize: 17,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700,color: Colors.green),
                                                      ),
                                                    ),
                                                  ),
                                                  new Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        5, 0, 5, 0),
                                                    child: CircleAvatar(
                                                        backgroundColor:
                                                            Theme.of(context)
                                                                .cardColor,
                                                        child: isStar
                                                            ? Icon(
                                                                MdiIcons
                                                                    .star,
                                                              )
                                                            : Icon(
                                                                MdiIcons
                                                                    .star,
                                                                color: Colors
                                                                    .deepOrange,
                                                              )),
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ));
                        });
                  })),
        ));
  }
}
