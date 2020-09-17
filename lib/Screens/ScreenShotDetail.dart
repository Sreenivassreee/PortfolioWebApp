import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenShotDetail extends StatelessWidget {
  String data;
  ScreenShotDetail({this.data});
  @override
  Widget build(BuildContext context) {
    print(data);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Preview",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Container(
          // color: Colors.red,
          height: MediaQuery.of(context).size.height - 10,
          width: 350,
          // child: Hero(
          // tag: "a",
          child: CachedNetworkImage(
            imageUrl: data ?? " ",
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                CupertinoActivityIndicator(
                    // value: downloadProgress.progress,
                    ),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
          // ),
        ),
      ),
    );
  }
}
