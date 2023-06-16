import 'package:flutter/material.dart';
import '../main.dart';

class LikesPage extends StatelessWidget {
  const LikesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          foregroundColor: Colors.black,
          title: Text("Notifications"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "This Month",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  FollowerLikesImageWidget(),
                  SizedBox(
                    width: 10,
                  ),
                  Text("John and 100 others liked your story",
                      style: TextStyle(fontSize: 16))
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              Text(
                "Earlier",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  FollowerLikesImageWidget(),
                  SizedBox(
                    width: 8,
                  ),
                  Flexible(
                    child:
                        Text("John and 100 others mentioned you in comment: <3",
                            overflow: TextOverflow.visible,
                            style: TextStyle(
                              fontSize: 16,
                            )),
                  )
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Container(
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                          image: AssetImage("assets/haerin2.jpg")),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Flexible(
                    child:
                        Text("Haerin, john and others started share 15 photos.",
                            overflow: TextOverflow.visible,
                            style: TextStyle(
                              fontSize: 16,
                            )),
                  )
                ],
              )
            ],
          ),
        ));
  }
}

class FollowerLikesImageWidget extends StatelessWidget {
  const FollowerLikesImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75,
      height: 75,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(image: AssetImage("assets/haerin3.jpg")),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: ClipOval(
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image:
                      DecorationImage(image: AssetImage("assets/haerin2.jpg")),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
