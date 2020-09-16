import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Homepage.dart';
import 'package:portfolio/Screens/ScreenShotDetail.dart';

class ProjectDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    final height = MediaQuery.of(context).size.height / 2;
    final width = MediaQuery.of(context).size.width / 4.5;

    List data = [
      'https://firebasestorage.googleapis.com/v0/b/portfolio-web-33015.appspot.com/o/ScreenShots%2FMathCrush%2FFrentpage%2Fmaths%20solutions%20for%20any%20question%2C%20maths%20games%2C%20math%20solution%20app%2C%20math%20games%2C%20math%20app%2C%20math%20answer%20app%2C%20a%20math%20solution%20app%2C%20a%20maths%20solving%20app%2C%20math%20book%2010th%20class%20ncert%2C%20math%20editor%2C%20math%20hindi%2C%20mathcrush%2Cstevebrains%2C1.png?alt=media&token=7385e481-ea12-459b-937c-a6f7ce275a87',
      'https://firebasestorage.googleapis.com/v0/b/portfolio-web-33015.appspot.com/o/ScreenShots%2FMathCrush%2FFrentpage%2Fmaths%20solutions%20for%20any%20question%2C%20maths%20games%2C%20math%20solution%20app%2C%20math%20games%2C%20math%20app%2C%20math%20answer%20app%2C%20a%20math%20solution%20app%2C%20a%20maths%20solving%20app%2C%20math%20book%2010th%20class%20ncert%2C%20math%20editor%2C%20math%20hindi%2C%20mathcrush%2Cstevebrains%2C2.png?alt=media&token=77772374-718a-4b2f-bd27-d82c9e3b2bda',
      'https://firebasestorage.googleapis.com/v0/b/portfolio-web-33015.appspot.com/o/ScreenShots%2FMathCrush%2FFrentpage%2Fmaths%20solutions%20for%20any%20question%2C%20maths%20games%2C%20math%20solution%20app%2C%20math%20games%2C%20math%20app%2C%20math%20answer%20app%2C%20a%20math%20solution%20app%2C%20a%20maths%20solving%20app%2C%20math%20book%2010th%20class%20ncert%2C%20math%20editor%2C%20math%20hindi%2C%20mathcrush%2Cstevebrains%2C1.png?alt=media&token=7385e481-ea12-459b-937c-a6f7ce275a87',
      'https://firebasestorage.googleapis.com/v0/b/portfolio-web-33015.appspot.com/o/ScreenShots%2FMathCrush%2FFrentpage%2Fmaths%20solutions%20for%20any%20question%2C%20maths%20games%2C%20math%20solution%20app%2C%20math%20games%2C%20math%20app%2C%20math%20answer%20app%2C%20a%20math%20solution%20app%2C%20a%20maths%20solving%20app%2C%20math%20book%2010th%20class%20ncert%2C%20math%20editor%2C%20math%20hindi%2C%20mathcrush%2Cstevebrains%2C1.png?alt=media&token=7385e481-ea12-459b-937c-a6f7ce275a87',
      'https://firebasestorage.googleapis.com/v0/b/portfolio-web-33015.appspot.com/o/ScreenShots%2FMathCrush%2FFrentpage%2Fmaths%20solutions%20for%20any%20question%2C%20maths%20games%2C%20math%20solution%20app%2C%20math%20games%2C%20math%20app%2C%20math%20answer%20app%2C%20a%20math%20solution%20app%2C%20a%20maths%20solving%20app%2C%20math%20book%2010th%20class%20ncert%2C%20math%20editor%2C%20math%20hindi%2C%20mathcrush%2Cstevebrains%2C1.png?alt=media&token=7385e481-ea12-459b-937c-a6f7ce275a87',
      'https://firebasestorage.googleapis.com/v0/b/portfolio-web-33015.appspot.com/o/ScreenShots%2FMathCrush%2FFrentpage%2Fmaths%20solutions%20for%20any%20question%2C%20maths%20games%2C%20math%20solution%20app%2C%20math%20games%2C%20math%20app%2C%20math%20answer%20app%2C%20a%20math%20solution%20app%2C%20a%20maths%20solving%20app%2C%20math%20book%2010th%20class%20ncert%2C%20math%20editor%2C%20math%20hindi%2C%20mathcrush%2Cstevebrains%2C1.png?alt=media&token=7385e481-ea12-459b-937c-a6f7ce275a87',
      'https://firebasestorage.googleapis.com/v0/b/portfolio-web-33015.appspot.com/o/ScreenShots%2FMathCrush%2FFrentpage%2Fmaths%20solutions%20for%20any%20question%2C%20maths%20games%2C%20math%20solution%20app%2C%20math%20games%2C%20math%20app%2C%20math%20answer%20app%2C%20a%20math%20solution%20app%2C%20a%20maths%20solving%20app%2C%20math%20book%2010th%20class%20ncert%2C%20math%20editor%2C%20math%20hindi%2C%20mathcrush%2Cstevebrains%2C1.png?alt=media&token=7385e481-ea12-459b-937c-a6f7ce275a87',
      'https://firebasestorage.googleapis.com/v0/b/portfolio-web-33015.appspot.com/o/ScreenShots%2FMathCrush%2FFrentpage%2Fmaths%20solutions%20for%20any%20question%2C%20maths%20games%2C%20math%20solution%20app%2C%20math%20games%2C%20math%20app%2C%20math%20answer%20app%2C%20a%20math%20solution%20app%2C%20a%20maths%20solving%20app%2C%20math%20book%2010th%20class%20ncert%2C%20math%20editor%2C%20math%20hindi%2C%20mathcrush%2Cstevebrains%2C1.png?alt=media&token=7385e481-ea12-459b-937c-a6f7ce275a87',
    ];
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
                mainAxisAlignment: MainAxisAlignment.start,
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
                    height: 10,
                  ),
                  Container(
                    // width: MediaQuery.of(context).size.width - 20,
                    // height: 350,
                    // color: Colors.green,
                    child: Center(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Screen(data[0], 200 + (height * 0.4), width,
                                      context),
                                  Screen(data[0], 200 + (height * 0.4), width,
                                      context),
                                  Screen(data[0], 200 + (height * 0.4), width,
                                      context),
                                  Screen(data[0], 200 + (height * 0.4), width,
                                      context),
                                  Screen(data[0], 200 + (height * 0.4), width,
                                      context),
                                  Screen(data[0], 200 + (height * 0.4), width,
                                      context),
                                  Screen(data[0], 200 + (height * 0.4), width,
                                      context),
                                  Screen(data[0], 200 + (height * 0.4), width,
                                      context),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [],
                            ),
                          ],
                        ),
                      ),
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
                                  child: Text("FireBase"),
                                ),
                              ]),
                              TableRow(children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("  "),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(" "),
                                ),
                              ]),
                            ]),
                        spa(),
                        spa(),
                        spa(),
                        spa(),

                        // Text(
                        //   "Platform : Android , IOS",
                        //   // style: TextStyle(fontSize: 20),
                        // ),

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

Screen(String data, height, width, context) {
  return Center(
    child: Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
        height: height,
        width: width,
        child: GestureDetector(
          onTap: () {
            // print(data);
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ScreenShotDetail(data: data)),
            );
          },
          child: Hero(
            tag: "a",
            child: CachedNetworkImage(
              imageUrl: data,
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  CupertinoActivityIndicator(
                      // value: downloadProgress.progress,
                      ),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
        ),
      ),
    ),
  );
}
