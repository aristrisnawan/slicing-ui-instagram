import 'package:flutter/material.dart';
import 'package:slicing_ig/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  final condition = true;
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBar(
            elevation: 0,
            leading: Padding(
              padding: const EdgeInsets.only(left: 34),
              child: Transform.scale(
                  scale: 4,
                  child: Center(
                    child: Image.asset(
                      "assets/text-icon.png",
                      width: 20,
                    ),
                  )),
            ),
            backgroundColor: Colors.white,
            // title: Text("cek"),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 23),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/heart.png",
                      width: 25,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Stack(
                      children: [
                        Image.asset(
                          "assets/chat.png",
                          width: 25,
                        ),
                        condition
                            ? Container()
                            : Positioned(
                                right: -4,
                                top: -6,
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      shape: BoxShape.circle),
                                  child: Center(
                                    child: Text(
                                      "2",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        body: HomePage(),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/video.png",
                  width: 20,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.amber,
                    ),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1780&q=80"),
                    )),
                label: ""),
          ],
        ),
      ),
    );
  }
}
