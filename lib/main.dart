import 'package:flutter/material.dart';
import 'package:slicing_ig/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
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
                padding: const EdgeInsets.only(right: 24),
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
                    Image.asset(
                      "assets/chat.png",
                      width: 25,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        body: HomePage()
      ),
    );
  }
}
