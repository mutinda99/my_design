import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PostCard(),
    );
  }
}

class PostCard extends StatelessWidget {
  const PostCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      margin: const EdgeInsets.only(top: 10.0),
      //padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 46, // specify the desired width
                      height: 46, // specify the desired height
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        //color: Colors.blue, // specify the desired color
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/woman.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Rose, 23',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            '1 hour ago',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Icon(Icons.more_horiz_rounded),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 12, right: 12, bottom: 12),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Faucibus purus in massa tempor nec feugiat nisl.',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.grey,
                  width: 0.4,
                ),
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 0.4,
                ),
              ),
            ),
            child: Container(
              padding: const EdgeInsets.only(top: 1.0, bottom: 1.0),
              constraints: const BoxConstraints(
                maxHeight: 600,
              ),
              width: double.infinity,
              child: Image.asset('assets/images/arsenal.jpg'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 17.0, right: 17.0, top: 12.0, bottom: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Icon(Icons.thumb_up_outlined),
                    SizedBox(width: 17),
                    Icon(Icons.chat_bubble_outline),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 17, // specify the desired width
                      height: 17, // specify the desired height
                      child: Image.asset('assets/icons/like_icon.png'),
                    ),
                    const SizedBox(
                      width: 4, // specify the desired width
                    ),
                    const Text('323'),
                    const SizedBox(
                      width: 8, // specify the desired width
                    ),
                    Container(
                      width: 3,
                      height: 3,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey, // specify the desired color
                      ),
                    ),
                    const SizedBox(
                      width: 8, // specify the desired width
                    ),
                    const Text('32 comments'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
