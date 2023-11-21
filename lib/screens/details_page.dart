import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int imageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
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
            Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                backgroundBlendMode: BlendMode.darken,
              ),
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
          ],
        ),
      ),
    );
  }
}
