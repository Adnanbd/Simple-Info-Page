import 'package:antopolis_first/models/dumyy_data.dart';
import 'package:antopolis_first/models/info_model.dart';
import 'package:antopolis_first/widgets/expand_inside.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SingleChildExpand extends StatefulWidget {
  int id;

  SingleChildExpand(this.id);

  @override
  _SingleChildExpandState createState() => _SingleChildExpandState();
}

class _SingleChildExpandState extends State<SingleChildExpand> {
  bool expand_track = false;

  @override
  Widget build(BuildContext context) {
    InfoModel info = DATA.firstWhere((element) => element.id == widget.id);

    return Container(
      padding: EdgeInsets.only(bottom: 5),
      color: Colors.white,
      //height: 20,
      child: Card(
        elevation: 3,
        child: ExpansionTile(
          onExpansionChanged: (value) {
            if (value != expand_track) {
              setState(() {
                expand_track = value;
              });
              
            }
          },
          title: expand_track
              ? Text(
                  info.categoryName,
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )
              : Text(
                  info.categoryName,
                  style: TextStyle(fontSize: 20,color: Colors.black,),
                ),
          trailing: expand_track ? Icon(FontAwesomeIcons.chevronUp,size: 15,color: Colors.black,) : Icon(FontAwesomeIcons.chevronDown,size: 15,color: Colors.black,) ,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                border: Border.all(color: Colors.grey[350], width: 1),
              ),
              child: ExpandInside(info.id),
            ),
          ],
        ),
      ),
    );
  }
}
