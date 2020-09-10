import 'package:flutter/material.dart';
import 'package:hello_world/login.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Baos App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(), //app首页
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   List<Post> posts = [];

//   void newPost(String text) {
//     this.setState(() {
//       posts.add(new Post(text, "bbh"));
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: Text("Hello World")),
//         body: Column(
//           children: [
//             Expanded(child: PostList(this.posts)),
//             TextInputWidget(this.newPost),
//           ],
//         ));
//   }
// }

// class TextInputWidget extends StatefulWidget {
//   final Function(String) callback; //定义抽象方法，实现异步更新
//   TextInputWidget(this.callback);

//   @override
//   _TextInputWidgetState createState() => _TextInputWidgetState();
// }

// class _TextInputWidgetState extends State<TextInputWidget> {
//   final controller = TextEditingController();

//   @override
//   void dispose() {
//     super.dispose();
//     controller.dispose();
//   }

//   void click() {
//     FocusScope.of(context).unfocus(); //使当前组件失去焦点
//     widget.callback(controller.text);
//     controller.clear();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       controller: this.controller,
//       decoration: InputDecoration(
//           prefixIcon: Icon(Icons.message),
//           labelText: "Type a message",
//           suffixIcon: IconButton(
//             icon: Icon(Icons.send),
//             splashColor: Colors.green, //点击时的颜色
//             tooltip: "tooltip", //长按按钮时的提示
//             onPressed: this.click,
//           )),
//     );
//   }
// }

// class PostList extends StatefulWidget {
//   final List<Post> listItems;
//   PostList(this.listItems);

//   @override
//   _PostListState createState() => _PostListState();
// }

// class _PostListState extends State<PostList> {
//   void like(Function callBack) {
//     this.setState(() {//内容有变化就要使用这个方法
//       callBack();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: this.widget.listItems.length,
//       itemBuilder: (context, index) {
//         //定义如何显示指定的item
//         var post = this.widget.listItems[index];
//         return Card(
//           child: Row(
//             children: [
//               Expanded(
//                 child: ListTile(
//                     title: Text(post.body), subtitle: Text(post.author)),
//               ),
//               Row(
//                 children: [
//                   Container(
//                     child: Text(
//                       post.likes.toString(),
//                       style: TextStyle(fontSize: 20, color: Colors.orange),
//                     ),
//                     padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
//                   ),
//                   IconButton(
//                     icon: Icon(Icons.thumb_up),
//                     onPressed: () => this.like(post.likePost),
//                     color: post.userLiked ? Colors.pink : Colors.grey,
//                   )
//                 ],
//               )
//             ],
//           ),
//         );
//       },
//     );
//   }
// }

// class TestWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Text('ha ha ha');
//   }
// }
