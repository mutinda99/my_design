import 'package:flutter/material.dart';
import 'package:pacaya_app/homepage/widgets/post.dart';
import 'package:pacaya_app/homepage/widgets/post_card.dart';

class HelloWidget extends StatelessWidget {
  const HelloWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Post(),
    );
  }
}

class Post extends StatelessWidget {
  const Post({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          PostUpload(),
          PostCard(),
        ],
      ),
    );
  }
}

// children: <Widget>[
//           const Text(
//             'You have pushed the button this many times:',
//           ),
//           Text(
//             '$_counter',
//             style: Theme.of(context).textTheme.headlineMedium,
//           ),
//           Post()
//         ],
