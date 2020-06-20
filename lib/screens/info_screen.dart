import 'package:antopolis_first/models/dummy_user_data.dart';
import 'package:antopolis_first/models/dumyy_data.dart';
import 'package:antopolis_first/models/info_model.dart';
import 'package:antopolis_first/models/info_user.dart';
import 'package:antopolis_first/widgets/main_header.dart';
import 'package:antopolis_first/widgets/single_child_expand.dart';
import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
 

  InfoUser user1 = USER_DATA.firstWhere((element) => element.id == 0);
  List<InfoModel> allitems = DATA;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      color: Colors.white,
      child: ListView.builder(
        
        scrollDirection: Axis.vertical,
        shrinkWrap: true,

        //padding: EdgeInsets.all(10),
        itemBuilder: (ctx, index) {
          return index == 0 ?  MainHeader(user1) :
            SingleChildExpand(allitems[index-1].id);
        },
        itemCount: allitems.length+1,
      ),
    ),
      
    );
  }
}