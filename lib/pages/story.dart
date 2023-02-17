import 'package:flutter/material.dart';

class StoryPage extends StatelessWidget {
  String name;
  bool read;

  StoryPage({required this.name, required this.read});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(
                    color: read ? Colors.grey : Colors.pink,
                    width: read ? 3 : 4)),
            child: Center(
              child: Container(
                height: 80,
                width: 80,
                decoration:
                    BoxDecoration(color: Colors.amber, shape: BoxShape.circle),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1780&q=80",
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(name)
        ],
      ),
    );
  }
}
