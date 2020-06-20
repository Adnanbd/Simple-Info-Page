import 'package:antopolis_first/models/info_user.dart';
import 'package:antopolis_first/widgets/info_header.dart';
import 'package:flutter/material.dart';

class MainHeader extends StatelessWidget {

  InfoUser user1;

  MainHeader(this.user1);



  @override
  Widget build(BuildContext context) {
    return Column(

            children: <Widget>[
              Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                 Container(
                child: Image.asset(user1.profilePicUrl,fit: BoxFit.cover,),
                height: MediaQuery.of(context).size.height/2,
                width: double.infinity,
              ),
              Container(
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                  Text(user1.userName,style: TextStyle(fontSize: 35),),
                 
                ],),
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(80)),
                ),

              ),
              


              ],),
              Container(
                color: Colors.white,
                child: InfoHeader(position: user1.position,gender: user1.gender,number: user1.phoneNo,mail: user1.email,bloodgroup: user1.bloodGroup,),

              ),
              SizedBox(height: 25,),
              
            ],
          );
  }
}