import 'package:flutter/material.dart';

import 'package:simple_slqlite/Widget/FloatCard.dart';

class SiswaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      child: LayoutBuilder(builder: (_, __) {
        return ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: <Widget>[
                InkWell(
                  onTap: () {},
                  child: FloatCard(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: Color(0xff3d51b4),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.person,
                                size: 30.0,
                                color: Colors.white,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(left: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "Admin (Teknikal)",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 3),
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "via Whatsapp",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: FloatCard(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: Color(0xff3d51b4),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.person,
                                size: 30.0,
                                color: Colors.white,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(left: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "Finance",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 3),
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "via Whatsapp",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: FloatCard(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: Color(0xff3d51b4),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.person,
                                size: 30.0,
                                color: Colors.white,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(left: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "Sales Support",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 3),
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "via Whatsapp",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        );
      }),
    );
  }
}
