import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProjectDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: Text(
                'MathCrush',
                style: TextStyle(fontFamily: "arial"),
              ),
            )
          ];
        },
        body: Material(
          child: Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Container(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      flex: 3,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            height: 200,
                            width: 200,
                            child: Hero(
                              tag: "imageHero",
                              child: Image.network(
                                // imageUrl:
                                "https://firebasestorage.googleapis.com/v0/b/portfolio-web-33015.appspot.com/o/projects%2FMathCrush.png?alt=media&token=63725895-9690-425b-9d15-ea4abada5392",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 6,
                      child: Container(
                        height: 200,
                        child: Text(
                          "MathCrush",
                          style: TextStyle(fontSize: 40),
                        ),
                      ),
                    )
                  ],
                )
                // color: Colors.red,
                ),
          ),
        ),
      ),
    );
  }
}
