import 'package:flutter/material.dart';

class CardPost extends StatelessWidget {
  const CardPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 2, color: Colors.grey.withAlpha(100)),
        ),
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 20,
                    height: 20,
                    child: CircleAvatar(
                      radius: 100,
                      foregroundImage: AssetImage('assets/images/camera.jpg'),
                    ),
                  ),
                  Text("r/subreddit name"),
                  Text(' . '),
                  Text('time'),
                ],
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
            ],
          ),
          Align(alignment: Alignment.topLeft, child: Text('title')),
          ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 200, maxWidth: 600),
            child: Image.asset(
              'assets/images/camera.jpg',
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(2),
                  child: Row(
                    children: [
                      Icon(Icons.arrow_circle_up),
                      Text('123'),
                      Icon(Icons.arrow_circle_down),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(2),
                  child: Row(
                    children: [
                      Icon(Icons.message),
                      Text('23'),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(2),
                  child: Row(
                    children: [
                      Icon(Icons.reply),
                      Text('Share'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
