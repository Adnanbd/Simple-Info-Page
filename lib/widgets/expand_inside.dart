import 'package:antopolis_first/models/dumyy_data.dart';
import 'package:antopolis_first/models/info_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExpandInside extends StatefulWidget {
  int id;

  ExpandInside(this.id);

  @override
  _ExpandInsideState createState() => _ExpandInsideState();
}

class _ExpandInsideState extends State<ExpandInside> {
  bool edit = true;
  String temp;

  @override
  Widget build(BuildContext context) {
    InfoModel info = DATA.firstWhere((element) => element.id == widget.id);

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
                      child: index == 0 ? IconButton(
                        onPressed: () {
                          setState(() {
                            edit = !edit;
                          });
                        },
                        icon: Icon(
                          FontAwesomeIcons.pencilAlt,
                          size: 15,
                        ),
                      ) : Text(''),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  child: edit
                      ? Text(
                          values[index],
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      : TextFormField(
                          initialValue: values[index],
                          onChanged: (value) {
                            setState(() {
                              
                              values[index] = value;
                              info.subCategories[keys[index]] = value;
                              keys = info.subCategories.keys.toList();
                              values = info.subCategories.values.toList();

                            });
                          },
                          // onFieldSubmitted: (value) {
                          //   setState(() {
                              
                          //     values[index] = value;
                          //     info.subCategories[keys[index]] = value;
                          //     keys = info.subCategories.keys.toList();
                          //     values = info.subCategories.values.toList();

                          //   });
                          // },
                          // onSaved: (value) {
                          //   setState(() {
                              
                          //     values[index] = value;
                          //     info.subCategories[keys[index]] = value;
                          //     keys = info.subCategories.keys.toList();
                          //     values = info.subCategories.values.toList();

                          //   });
                          // },
                          

                          keyboardType: TextInputType.text,
                          style: TextStyle(fontSize: 16,),
                          decoration: new InputDecoration(
                            
                            fillColor: Colors.grey[300],
                            filled: true,
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(5.0),
                              borderSide: new BorderSide(color: Colors.white),
                            ),
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
