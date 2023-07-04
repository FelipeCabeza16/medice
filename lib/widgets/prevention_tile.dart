import 'package:flutter/material.dart';

Widget buildPreventionTile(
    String imageAsset, String title, String subtitle, BuildContext context, double height, double width) {
  return Container(
    height: height * 0.132,
    margin: EdgeInsets.symmetric(horizontal: width * 0.02),
    decoration: BoxDecoration(
      color: Colors.white
    ),
    child: Row(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Image.asset(imageAsset, fit: BoxFit.cover, semanticLabel: imageAsset.substring(14, imageAsset.indexOf('.')),),
        ),
        Expanded(
          flex: 7,
          child: _buildText(title, subtitle, context, height, width),
        ),
      ],
    ),
  );
}

Column _buildText(String title, String subtitle, BuildContext context, double height, double width) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Text(
        title,
        style: Theme.of(context).textTheme.bodyText1,
      ),
      Text(
        subtitle,
        style: Theme.of(context).textTheme.bodyText2,
      )
    ],
  );
}
