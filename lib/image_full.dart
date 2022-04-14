import 'package:flutter/material.dart';

class ShowFullImage extends StatefulWidget {
  String imageLink;
  String name;
   ShowFullImage({Key? key,
   required this.imageLink,
     required this.name
  }) : super(key: key);

  @override
  _ShowFullImageState createState() => _ShowFullImageState();
}

class _ShowFullImageState extends State<ShowFullImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height-80,
              child: Image.network(widget.imageLink,
                fit: BoxFit.cover,)),
          Text(widget.name)
        ],
      ),
    );
  }
}
