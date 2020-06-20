import 'package:antopolis_first/models/dumyy_data.dart';
import 'package:antopolis_first/models/info_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExpandInside extends StatelessWidget {
  int id;

  ExpandInside(this.id);
  @override
  Widget build(BuildContext context) {
    InfoModel info = DATA.firstWhere((element) => element.id == id);

    List<String> keys = info.subCategories.keys.toList();
    List<String> values = info.subCategories.values.toList();

    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        padding: EdgeInsets.all(10),
        itemBuilder: (ctx, index) {
          return Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        keys[index],
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        FontAwesomeIcons.pencilAlt,
                        size: 15,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    values[index],
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Divider(),
                




              ],
            ),
          );
        },
        itemCount: info.subCategories.length,
      ),
    );
  }
}
