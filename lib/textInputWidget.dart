import 'package:flutter/material.dart';

class TextInputWidget extends StatefulWidget {
  final Function(String) callback; //定义抽象方法，实现异步更新
  TextInputWidget(this.callback);

  @override
  _TextInputWidgetState createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  final controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  void click() {
    FocusScope.of(context).unfocus(); //使当前组件失去焦点
    widget.callback(controller.text);
    controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: this.controller,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.message),
          labelText: "Type a message",
          suffixIcon: IconButton(
            icon: Icon(Icons.send),
            splashColor: Colors.green, //点击时的颜色
            tooltip: "tooltip", //长按按钮时的提示
            onPressed: this.click,
          )),
    );
  }
}
