import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PostUpload(),
    );
  }
}

class PostUpload extends StatelessWidget {
  const PostUpload({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 43,
                  width: 43,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/user_photo.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 12.0,
                ),
                Container(
                  width: 290,
                  height: 38.0,
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      border: Border.all(
                        color: Colors.black,
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(20.0)),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'What are you up to?',
                      border: InputBorder.none,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              width: 20,
              height: 20,
              child: Image.asset('assets/icons/picture.png'),
            )
          ],
        ),
      ),
    );
  }
}
