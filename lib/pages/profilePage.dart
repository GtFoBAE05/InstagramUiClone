import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/imageWidget.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      foregroundColor: Colors.black,
      title: Text(
        "Haerin",
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.history)),
        IconButton(onPressed: () {}, icon: Icon(Icons.person_add_outlined)),
        IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
      ],
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [ProfileTopContainer(), ProfileTabBar()],
      ),
    );
  }
}

class ProfileTopContainer extends StatelessWidget {
  const ProfileTopContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            MyStoryWidget(desc: ""),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ProfileNumber(number: "100", text: "Post"),
                      ProfileNumber(number: "99k", text: "Followers"),
                      ProfileNumber(number: "6", text: "Following")
                    ],
                  ),
                  Container(
                    width: 220,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text("Edit Profile",
                          style: TextStyle(color: Colors.black)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              "Haerin",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text("Actor"),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text("Haerin/NewJeans")
          ],
        ),
      ],
    );
  }
}

class ProfileNumber extends StatelessWidget {
  const ProfileNumber({super.key, required this.number, required this.text});

  final String number;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text("$number"), Text("$text")],
    );
  }
}

class ProfileTabBar extends StatefulWidget {
  const ProfileTabBar({super.key});

  @override
  State<ProfileTabBar> createState() => _ProfileTabBarState();
}

class _ProfileTabBarState extends State<ProfileTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: <Widget>[
          Container(
            child: TabBar(labelColor: Colors.black, tabs: [
              Tab(
                icon: Icon(Icons.grid_view),
              ),
              Tab(icon: Icon(Icons.photo_camera_front_outlined)),
            ]),
          ),
          Container(
            height: MediaQuery.of(context).size.shortestSide,
            child: TabBarView(
              children: [
                Container(
                    child: GridView.builder(
                  physics: ScrollPhysics(),
                  itemCount: 8,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 3,
                      crossAxisSpacing: 3),
                  itemBuilder: (context, index) =>
                      Image.asset("assets/haerin3.jpg"),
                )),
                Container(
                    child: GridView.builder(
                  physics: ScrollPhysics(),
                  itemCount: 3,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 3,
                      crossAxisSpacing: 3),
                  itemBuilder: (context, index) =>
                      Image.asset("assets/haerin3.jpg"),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
