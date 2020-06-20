import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InfoHeader extends StatelessWidget {
  String position;
  String gender;
  String number;
  String mail;
  String bloodgroup;

  InfoHeader(
      {this.position, this.gender, this.number, this.mail, this.bloodgroup});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 50, top: 20),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              
              Icon(FontAwesomeIcons.graduationCap),
              Text(
                "   " + position,
                style: TextStyle(fontSize: 20),
              ),
              
            ],
          ),
          SizedBox(height: 12,),
          Row(
            children: <Widget>[
              
              Icon(FontAwesomeIcons.user),
              Text(
                "   " + gender,
                style: TextStyle(fontSize: 20),
              ),
              
            ],
          ),
          SizedBox(height: 12,),
          Row(
            children: <Widget>[
              
              Icon(FontAwesomeIcons.phone),
              Text(
                "   " + number,
                style: TextStyle(fontSize: 20),
              ),
              
            ],
          ),
          SizedBox(height: 12,),
          Row(
            children: <Widget>[
              
              Icon(FontAwesomeIcons.envelope),
              Text(
                "   " + mail,
                style: TextStyle(fontSize: 20),
              ),
              
            ],
          ),
          SizedBox(height: 12,),
          Row(
            children: <Widget>[
              
              Icon(FontAwesomeIcons.tint,color: Colors.red,),
              Text(
                "   " + bloodgroup,
                style: TextStyle(fontSize: 20),
              ),
              
            ],
          ),
          SizedBox(height: 12,),
          





        ],
      ),
    );
  }
}
