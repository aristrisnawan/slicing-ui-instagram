import 'package:flutter/material.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //NOTE : Header
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80"),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text("asep20")
                      ],
                    ),
                    Icon(Icons.more_vert_rounded)
                  ],
                ),
              ),
              // NOTE : Media
              Container(
                  height: 350,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    "https://images.unsplash.com/photo-1611329532992-0b7ba27d85fb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                    height: 350,
                    fit: BoxFit.contain,
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/heart.png",
                          width: 25,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          "assets/comment.png",
                          width: 25,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          "assets/send.png",
                          width: 25,
                        ),
                      ],
                    ),
                    Image.asset(
                      "assets/bookmark.png",
                      width: 25,
                    )
                  ],
                ),
              ),
              //comment
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "1.023 suka",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          "asep20",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Beautifull nature")
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "24 menit yang lalu",
                      style: TextStyle(fontSize: 10),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              )
            ],
          ),
        );
  }
}