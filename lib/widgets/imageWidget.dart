import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget(
      {super.key, this.assetImg = "haerin2.jpg", this.name = "haerin"});

  final String assetImg;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              ClipOval(
                child: Container(
                  width: 105,
                  height: 105,
                  color: Colors.purple,
                ),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: Colors.white, width: 2),
                  image: DecorationImage(image: AssetImage("assets/$assetImg")),
                ),
              )
            ],
          ),
          Text("$name")
        ],
      ),
    );
  }
}

class MyStoryWidget extends StatelessWidget {
  const MyStoryWidget(
      {super.key, this.assetImg = "haerin2.jpg", this.desc = "Your Story"});

  final String assetImg;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: Colors.white, width: 2),
                  image: DecorationImage(image: AssetImage("assets/$assetImg")),
                ),
              ),
              ClipOval(
                child: Container(
                  color: Colors.blueAccent,
                  child: Container(
                    width: 30,
                    height: 30,
                    child: IconButton(
                      iconSize: 11,
                      color: Colors.white,
                      onPressed: () {},
                      icon: Icon(Icons.add),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 2, color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
          Text("$desc")
        ],
      ),
    );
  }
}

class PostProfileWidget extends StatelessWidget {
  const PostProfileWidget(
      {super.key, this.assetImg = "haerin3.jpg", this.name = "haerin"});

  final String assetImg;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SizedBox(
              width: 5,
            ),
            ClipOval(
              child: Image(
                fit: BoxFit.fill,
                image: AssetImage("assets/haerin2.jpg"),
                width: 50,
                height: 50,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "Haerin",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
      ],
    );
  }
}

class PostActionWidget extends StatelessWidget {
  const PostActionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.favorite_border_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.chat_bubble_outline)),
          IconButton(onPressed: () {}, icon: Icon(Icons.send_outlined))
        ]),
        IconButton(onPressed: () {}, icon: Icon(Icons.bookmark_border_outlined))
      ],
    );
  }
}

class PostWidget extends StatelessWidget {
  const PostWidget(
      {super.key, this.assetImg = "haerin3.jpg", this.name = "haerin"});

  final String assetImg;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PostProfileWidget(),
        SizedBox(
          height: 5,
        ),
        Image(image: AssetImage("assets/haerin4.jpg")),
        PostActionWidget(),
        Padding(
          padding: EdgeInsets.fromLTRB(5, 0, 0, 10),
          child: Text(
            "100.000 likes",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
