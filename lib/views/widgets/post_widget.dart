import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});
  @required
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
      height: 200,
      width: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        children: [
          //header
          Container(
            height: 40,
            decoration: BoxDecoration(
              color: Color(0xffB9314F),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Topic', style: TextStyle(fontSize: 20)),
                SizedBox(width: 230),
                Text('Date'),
              ],
            ),
          ),
          // post text
          SizedBox(height: 130),
          //footer
          Container(
            alignment: Alignment.centerRight,
            height: 30,
            width: double.infinity,
            padding: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: Color(0xFFFFD697),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
            ),
            child: Text('Author', style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
    );
  }
}
