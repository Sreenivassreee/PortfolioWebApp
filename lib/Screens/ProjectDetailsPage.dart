import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Homepage.dart';

class ProjectDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return CupertinoPageScaffold(
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: Text(
                'Projects',
                style: TextStyle(fontFamily: "arial"),
              ),
            )
          ];
        },
        body: SingleChildScrollView(
          child: Material(
            child: Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Column(
                children: [
                  Container(
                      alignment: Alignment.topCenter,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Flexible(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                height: 200,
                                width: MediaQuery.of(context).size.width,
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
                          Flexible(
                            flex: 6,
                            child: Container(
                              // color: Colors.red,
                              height: 200,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "MathCrush",
                                    style: TextStyle(fontSize: 40),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    "Published",
                                    // style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Users : 1000 +",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Average Rating : 5.0",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  RaisedButton(
                                    onPressed: () {},
                                    color: Colors.green,
                                    textColor: Colors.white,
                                    child: Text("Download"),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                      // color: Colors.red,
                      ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 20,
                    height: 300,
                    color: Colors.green,
                    child: GridView.builder(
                      itemCount: 8,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 5),
                      // (orientation == Orientation.portrait) ? 2 : 3),
                      itemBuilder: (BuildContext context, int index) {
                        return new Card(
                          child: new GridTile(
                            footer: new Text('name'),
                            child: Image.network("src") //just for testing, will fill with image later
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 20,
                    // color: Colors.green,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        space(),
                        Table(
                            border: TableBorder.all(color: Colors.black),
                            children: [
                              TableRow(children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Platform "),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Android , IOS"),
                                ),
                              ]),
                              TableRow(children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Tools "),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Android Studio, Vs Code"),
                                ),
                              ]),
                              TableRow(children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Programming Languages"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Dart with Flutter"),
                                ),
                              ]),
                              TableRow(children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("DataBase"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("FireBase"),
                                ),
                              ]),
                              TableRow(children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("User Authentication"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Android Studio, Vs Code"),
                                ),
                              ]),
                              TableRow(children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Tools "),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("FireBase"),
                                ),
                              ]),
                            ]),
                        // Text(
                        //   "Platform : Android , IOS",
                        //   // style: TextStyle(fontSize: 20),
                        // ),
                        spa(),
                        spa(),
                        spa(),
                        spa(),

                        // Text(
                        //   "Tools : Android Studio, Vs Code",
                        //   // style: TextStyle(fontSize: 20),
                        // ),
                        // spa(),
                        // Text(
                        //   "Programming Languages : Dart with Flutter",
                        //   // style: TextStyle(fontSize: 20),
                        // ),
                        // spa(),
                        // Text(
                        //   "DataBase : FireBase",

                        //   // style: TextStyle(fontSize: 20),
                        // ),
                        // spa(),
                        // Row(
                        //   children: [
                        //     Text(
                        //       "User Authentication : ",
                        //       style: TextStyle(
                        //           fontSize: 17, fontWeight: FontWeight.bold),
                        //     ),
                        //     Text(
                        //       "FireBase",

                        //       // style: TextStyle(fontSize: 20),
                        //     ),
                        // ],
                        // ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

spa() {
  return SizedBox(
    height: 20,
  );
}
