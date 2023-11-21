import 'package:flutter/material.dart';
import 'package:flutter_reddit_ui_test/screens/details_page.dart';
import 'package:get/get.dart';

class ListPost extends StatelessWidget {
  const ListPost({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailsPage(),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: BorderDirectional(
            bottom: BorderSide(
              width: 0.5,
              color: context.isDarkMode ? Colors.white : Colors.black,
            ),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
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
                              foregroundImage:
                                  AssetImage('assets/images/camera.jpg'),
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
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: context.width > 500 ? 10 : 0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.arrow_circle_up),
                            Text('123'),
                            Icon(Icons.arrow_circle_down),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.message),
                            Text('23'),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.reply),
                            Text('share'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/camera.jpg',
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
