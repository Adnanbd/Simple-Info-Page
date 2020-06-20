import 'package:antopolis_first/widgets/all_info_list.dart';
import 'package:antopolis_first/widgets/info_header.dart';
import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  String profile_pic_url = 'images/42.jpg';
  String name = 'Erza Scarlet';
  String position = 'Sofware Engineer';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
              child: Container(
          child: Column(

            children: <Widget>[
              Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                 Container(
                child: Image.asset(profile_pic_url,fit: BoxFit.cover,),
                height: 400,
                width: double.infinity,
              ),
              Container(
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                  Text(name,style: TextStyle(fontSize: 35),),
                 
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
                child: InfoHeader(position: 'Software Engineer',gender: 'Female',number: '+8801681234232',mail: 'erza@antopolis.com',bloodgroup: 'O+',),

              ),
              
              AllInfoList(),

              
             

            ],
          ),
        ),
      ),
      
    );
  }
}