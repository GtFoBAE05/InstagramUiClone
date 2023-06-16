import 'package:flutter/material.dart';

import './pages/addPage.dart';
import './pages/chatsPage.dart';
import './pages/homePage.dart';
import './pages/likesPage.dart';
import './pages/profilePage.dart';
import './pages/reelsPage.dart';
import './pages/searchPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var listPage = [
    HomePage(),
    SearchPage(),
    AddPage(),
    ReelsPage(),
    ProfilePage()
  ];

  late int index;

  @override
  void initState() {
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget appBar;
    if (index == 0) {
      appBar = MyAppBar();
    } else if (index == 1) {
      appBar = SearchAppBar();
    } else if (index == 4) {
      appBar = ProfileAppBar();
    } else {
      appBar = MyAppBar();
    }

    return MaterialApp(
        home: Scaffold(
      appBar: appBar,
      body: listPage[index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        currentIndex: index,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_a_photo_outlined), label: "Add"),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_camera_front), label: "Reels"),
          BottomNavigationBarItem(
              icon: Icon(Icons.emoji_emotions), label: "Profile"),
        ],
        selectedItemColor: Colors.blue, // Mengatur warna item yang dipilih
        unselectedItemColor:
            Colors.grey, // Mengatur warna item yang tidak dipilih
        showSelectedLabels: false,
      ),
    ));
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
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
        "Instagram",
      ),
      actions: [
        IconButton(
            onPressed: () {
              Navigator.of(context).push(PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    LikesPage(),
              ));
            },
            icon: Icon(Icons.favorite_border_outlined)),
        IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ChatsPage(),
              ));
            },
            icon: Icon(Icons.add_comment_outlined)),
      ],
    );
  }
}
