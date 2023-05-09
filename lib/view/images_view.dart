import 'package:flutter/material.dart';

class ImageView extends StatefulWidget {
  const ImageView({super.key});

  @override
  State<ImageView> createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {
  var gap = const SizedBox(height: 20);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/images/images.jpg'),
              ),
              Image.network(
                  'https://media.istockphoto.com/id/1399611777/photo/portrait-of-a-smiling-little-brown-haired-boy-looking-at-the-camera-happy-kid-with-good.jpg?b=1&s=170667a&w=0&k=20&c=_vhKiD4p9X8X5BBJ5gKiWasG95XFvwVa8nq6Ogbpn9k='),
              // Image.asset('assets/images/images.jpg'),
              ElevatedButton(
                onPressed: () {
                  // Navigator.pushNamed(context, "/tigerRoute");
                },
                child: const Text("Click me"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
