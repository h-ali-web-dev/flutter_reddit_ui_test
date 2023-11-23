import 'package:flutter/material.dart';
import 'package:flutter_reddit_ui_test/common/my_end_drawer.dart';
import 'package:flutter_reddit_ui_test/screens/search_page.dart';
import 'package:get/get.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }

  int imageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SearchPage(),
                ),
              );
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.settings_applications_sharp),
          ),
          IconButton(onPressed: null, icon: Icon(Icons.more_vert)),
          IconButton(
            onPressed: () {
              _openEndDrawer();
            },
            icon: Icon(Icons.person),
          ),
        ],
      ),
      endDrawer: myEndDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                foregroundImage: AssetImage('assets/images/camera.jpg'),
              ),
              title: Text("r/subreddit"),
              subtitle: Text("u/username - time"),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                alignment: Alignment.topLeft,
                child: Text("Title", style: TextStyle(fontSize: 30))),
            Container(
              padding: EdgeInsets.all(8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  height: context.height / 2,
                  width: context.width,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      PageView.builder(
                        onPageChanged: (page) {
                          setState(() {
                            imageIndex = page;
                          });
                        },
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            'assets/images/camera.jpg',
                            fit: BoxFit.cover,
                          );
                        },
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text("${imageIndex + 1}/10"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                        Icon(Icons.share),
                        Text('Share'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            CommentWidget(childNum: 0),
            CommentWidget(childNum: 1),
            CommentWidget(childNum: 2),
            CommentWidget(childNum: 3),
            CommentWidget(childNum: 4),
            CommentWidget(childNum: 5),
            CommentWidget(childNum: 0),
            CommentWidget(childNum: 1),
            CommentWidget(childNum: 2),
          ],
        ),
      ),
    );
  }
}

class CommentWidget extends StatelessWidget {
  CommentWidget({
    this.childNum = 0,
    super.key,
  });
  int childNum;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border(left: BorderSide(width: 2))),
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.only(
        left: childNum * 20,
      ),
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.green,
            ),
            title: Text("u/username - time"),
            dense: true,
            visualDensity: VisualDensity.compact,
          ),
          Text(
            "CommentCommentCommentCommentCommentCommentCommentCommentCommentCommentCommentCommentCommentCommentCommentCommentCommentCommentCommentCommentCommentCommentCommentCommentCommentCommentCommentCommentCommentCommentCommentCommentCommentCommentCommentCommentCommentCommentCommentCommentCommentCommentCommentCommentCommentComment",
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.all(2),
                  child: Icon(Icons.more_vert),
                ),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
