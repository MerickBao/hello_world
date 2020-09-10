import 'package:flutter/material.dart';

import 'post.dart';

class PostList extends StatefulWidget {
  final List<Post> listItems;
  PostList(this.listItems);

  @override
  _PostListState createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  void like(Function callBack) {
    this.setState(() {
      //内容有变化就要使用这个方法
      callBack();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.widget.listItems.length,
      itemBuilder: (context, index) {
        //定义如何显示指定的item
        var post = this.widget.listItems[index];
        return Card(
          child: Row(
            children: [
              Expanded(
                child: ListTile(
                    title: Text(post.body), subtitle: Text(post.author)),
              ),
              Row(
                children: [
                  Container(
                    child: Text(
                      post.likes.toString(),
                      style: TextStyle(fontSize: 20, color: Colors.orange),
                    ),
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                  ),
                  IconButton(
                    icon: Icon(Icons.thumb_up),
                    onPressed: () => this.like(post.likePost),
                    color: post.userLiked ? Colors.pink : Colors.grey,
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
