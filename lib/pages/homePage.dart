import 'package:flutter/material.dart';
import '../widgets/imageWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return (MyStoryWidget());
                } else {
                  return (StoryWidget());
                }
              },
            ),
          ),
          ListView.builder(
            physics: PageScrollPhysics(),
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) => PostWidget(),
          )
        ],
      ),
    );
  }
}
