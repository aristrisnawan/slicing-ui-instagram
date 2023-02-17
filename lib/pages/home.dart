import 'package:flutter/material.dart';
import 'package:slicing_ig/pages/story.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
      // NOTE : STORY
        Container(
          width: MediaQuery.of(context).size.width,
          height: 130,
          color: Colors.white,
          child:ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 10),
              children: [
                StoryPage(name: "Cerita Anda", read: true),
                StoryPage(name: "asep__", read: true),
                StoryPage(name: "nana20", read: false),
                StoryPage(name: "iniDadan", read: false),
                StoryPage(name: "arshi", read: false),
              ],
            ),
          ),
      ],
    );
  }
}