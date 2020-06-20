import 'package:antopolis_first/models/dumyy_data.dart';
import 'package:antopolis_first/models/info_model.dart';
import 'package:antopolis_first/widgets/single_child_expand.dart';
import 'package:flutter/material.dart';

class AllInfoList extends StatelessWidget {
  List<InfoModel> allitems = DATA;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        
        padding: EdgeInsets.all(10),
        itemBuilder: (ctx, index) {
          return SingleChildExpand(allitems[index].id);
        },
        itemCount: allitems.length,
      ),
    );
  }
}
