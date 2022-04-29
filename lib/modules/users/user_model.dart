import 'package:flutter/material.dart';
import 'package:simple_designs/models/user/user_model.dart';

List<UserInfo> users = [
  UserInfo(
    1,
    'Majd Awwad',
    '+963996458123',
  ),
  UserInfo(
    2,
    'Hussam Awwad',
    '+963996409923',
  ),
  UserInfo(
    3,
    'Wael Awwad',
    '+963996401123',
  ),
  UserInfo(
    4,
    'Thair Awwad',
    '+963996490623',
  ),
  UserInfo(
    5,
    'Ahmed Awwad',
    '+963996400923',
  ),
  UserInfo(
    6,
    'Souad Awwad',
    '+963996440123',
  ),
  UserInfo(
    7,
    'Intesar Awwad',
    '+963996460523',
  ),
  UserInfo(
    8,
    'Thoura Awwad',
    '+963996430923',
  ),
  UserInfo(
    9,
    'Waffa Awwad',
    '+963996010123',
  ),
  UserInfo(
    10,
    'Hafeth Awwad',
    '+963996401423',
  ),
  UserInfo(
    11,
    'Nafeth Awwad',
    '+963996478123',
  ),
  UserInfo(
    12,
    'Omar Awwad',
    '+963996398123',
  ),
  UserInfo(
    13,
    'Saad Awwad',
    '+963996713123',
  ),
  UserInfo(
    14,
    'Samer Awwad',
    '+963996458923',
  ),
  UserInfo(
    15,
    'Ali Awwad',
    '+963994128123',
  ),
  UserInfo(
    16,
    'Tarek Awwad',
    '+96399987g123',
  ),
];

class UserModel extends StatelessWidget {
  const UserModel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contacts',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => buildUserContacts(users[index]),
        separatorBuilder: (context, index) => Padding(
          padding: const EdgeInsetsDirectional.only(
            start: 25.0,
          ),
          child: Container(
            height: 1.0,
            color: Colors.grey[300],
          ),
        ),
        itemCount: users.length,
      ),
    );
  }

  Widget buildUserContacts(UserInfo user) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                const CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.blue,
                ),
                Text(
                  '${user.id}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 20.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  user.name,
                  style: const TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  user.phone,
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
