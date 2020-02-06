import 'package:flutter/material.dart';

class HorizontalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Catagory(
            imgPath: 'images/cats/tshirt.png',
            imgCaption: 'shirts',
          ),
          Catagory(
            imgPath: 'images/cats/dress.png',
            imgCaption: 'dress',
          ),
          Catagory(
            imgPath: 'images/cats/formal.png',
            imgCaption: 'formal',
          ),
          Catagory(
            imgPath: 'images/cats/informal.png',
            imgCaption: 'informal',
          ),
          Catagory(
            imgPath: 'images/cats/jeans.png',
            imgCaption: 'jeans',
          ),
        ],
      ),
    );
  }
}

class Catagory extends StatelessWidget {
  final String imgPath;
  final String imgCaption;

  const Catagory({this.imgPath, this.imgCaption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              imgPath,
              height: 80.0,
              width: 100.0,
            ),
            subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(
                  imgCaption,
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
                )),
          ),
        ),
      ),
    );
  }
}
