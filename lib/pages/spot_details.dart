import 'package:flutter/material.dart';
import 'package:travel_guaid/widgets/appbardecoration.dart';

class SpotDetails extends StatefulWidget {
  String? spotname;
  String? image;
  String? description;
  String? latitude;
  String? longitude;

  SpotDetails({
    this.spotname,
    this.image,
    this.description,
    this.latitude,
    this.longitude,
  });

  @override
  _SpotDetailsState createState() => _SpotDetailsState();
}

class _SpotDetailsState extends State<SpotDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarDecoration(context, 'Spot Details'),
      body: _bodyUI(),
        floatingActionButton: new FloatingActionButton(
            elevation: 0.0,
            child: new Icon(Icons.check),
            backgroundColor: new Color(0xFFE57373),
            onPressed: (){}
        )
    );
  }

  Widget _bodyUI() {
    return ListView(
      children: [
        ClipRRect(
          // borderRadius: BorderRadius.only(
          //   topLeft: Radius.circular(15),
          //   topRight: Radius.circular(15),
          // ),
          child: Image.network(
            '${widget.image}',
            height: 200,
            width: double.maxFinite,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 10),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                '${widget.spotname}',
                style: TextStyle(color: Colors.grey[700], fontSize: 30),
              ),
                  SizedBox(height: 5),
                  Text(
                '${widget.latitude}',
                style: TextStyle(color: Colors.grey[700], fontSize: 30),
              ),
                  SizedBox(height: 5),
                  Text(
                '${widget.longitude}',
                style: TextStyle(color: Colors.grey[700], fontSize: 30),
              ),
              SizedBox(height: 5),
              Text(
                '${widget.description}',
                textAlign: TextAlign.justify,
              ),
            ]))
      ],
    );
  }
}
