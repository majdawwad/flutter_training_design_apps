import 'package:flutter/material.dart';

class ListMessengerScreen extends StatelessWidget {
  const ListMessengerScreen({Key? key}) : super(key: key);

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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.search,
                      ),
                      Text(
                        'Search',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 110.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildStoryItem(),
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 20.0,
                  ),
                  itemCount: 10,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => buildChatsItem(),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 20.0,
                ),
                itemCount: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildStoryItem() => SizedBox(
        width: 60.0,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: const [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                    'https://media.istockphoto.com/photos/closeup-portrait-of-his-he-nice-attractive-funky-amazed-cheerful-guy-picture-id1212746471?s=612x612',
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    end: 5.0,
                    bottom: 5.0,
                  ),
                  child: CircleAvatar(
                    radius: 6.0,
                    backgroundColor: Colors.red,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Majd Weal Awwad',
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      );

  Widget buildChatsItem() => Row(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: const [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                  'https://media.istockphoto.com/photos/closeup-portrait-of-his-he-nice-attractive-funky-amazed-cheerful-guy-picture-id1212746471?s=612x612',
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  end: 5.0,
                  bottom: 5.0,
                ),
                child: CircleAvatar(
                  radius: 6.0,
                  backgroundColor: Colors.red,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Column(
              children: [
                const Text(
                  'Majd wael Shams AlDed Awwad Majd wael Shams AlDed Awwad Majd wael Shams AlDed Awwad',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 6.0,
                ),
                Row(
                  children: const [
                    Expanded(
                      child: Text(
                        'hello my name is hussam wael shams alden awwad',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.0,
                      ),
                      child: CircleAvatar(
                        radius: 5.0,
                        backgroundColor: Colors.blue,
                      ),
                    ),
                    Text(
                      '03:12 pm',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
}
