import 'package:flutter/material.dart';
import 'package:social_app_design/model/user_model.dart';

class ItemWidget extends StatelessWidget {
  final UserModel user;
  final int count;
  final String title;

  ItemWidget({
    @required this.user,
    @required this.count,
    @required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count.toString(),
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        Text(
          '${title}',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
