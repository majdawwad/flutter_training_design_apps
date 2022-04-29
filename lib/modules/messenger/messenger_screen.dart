import 'package:flutter/material.dart';
import 'package:simple_designs/modules/messenger/build_messenger_screen.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Row(
          children: const [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                'https://media.istockphoto.com/photos/closeup-portrait-of-his-he-nice-attractive-funky-amazed-cheerful-guy-picture-id1212746471?s=612x612',
              ),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const CircleAvatar(
              child: Icon(
                Icons.camera_alt,
                size: 15.0,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const CircleAvatar(
              child: Icon(
                Icons.edit,
                size: 15.0,
              ),
            ),
          ),
        ],
      ),
      body: buildMessengerScreen(),
    );
  }


}
