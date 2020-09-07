import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Projects.dart';
import 'package:portfolio/Social.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        body: Material(
          type: MaterialType.transparency,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    space(),
                    space(),
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
                    space(),
                    Center(
                      child: Text(
                        "Kummara Sreenivasulu",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                    ),
                    space(),
                    space(),
                    Text(
                      "About",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                    space(),
                    Container(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Social(),
                            space(),
                            Social(),
                            space(),
                            Social(),
                            space(),
                            Social(),
                            space(),
                            Social(),
                            space(),
                            Social(),
                          ],
                        ),
                      ),
                    ),
                    space(),
                    Text(
                      "Projects",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                    space(),
                    Container(
                      color: Colors.grey,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Projects(),
                            space2(),
                            Projects(),
                            space2(),
                            Projects(),
                            space2(),
                            Projects(),
                            space2(),
                            Projects(),
                            space2(),
                            Projects(),
                            space2(),
                            Projects(),
                            space2(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget space() {
  return SizedBox(
    height: 30,
  );
}

Widget space2() {
  return SizedBox(
    height: 10,
  );
}
