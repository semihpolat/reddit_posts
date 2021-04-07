import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String title;
  final String desc;
  final String thumbnail;
  PostCard({this.title, this.desc, this.thumbnail});
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 100,
      child: Column(
        children: [
          Divider(
            thickness: 5,
          ),
          Row(
            children: [
              SizedBox(width: 10),
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(thumbnail ?? 'null'),
                backgroundColor: Colors.transparent,
              ),
              SizedBox(width: 10),
              Expanded(child: Text(title.toString() ?? 'asd')),
              SizedBox(width: 20),
            ],
          ),

          //Text(desc ?? 'asd'),
        ],
      ),
    );
  }
}
