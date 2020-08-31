import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  var Radius;
  @override
  Widget build(BuildContext context) {
    // if (Platform.isAndroid) {
    //   Radius = MediaQuery.of(context).size.width / 7;
    // } else {}
    return CupertinoPageScaffold(
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: Text('K Sreenivasulu'),
              trailing: Icon(CupertinoIcons.brightness),
            )
          ];
        },
        body: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Card(
                      shape: StadiumBorder(),
                      elevation: 100,
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        radius: 130,
                        child: Image.asset(
                          'images/sree.png',
                        ),
                        // shape: BoxShape.circle
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
