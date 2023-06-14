import 'package:flutter/material.dart';

class TopBar extends StatefulWidget {
  const TopBar({super.key});

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Row(
          children: [
            const Text(
              'Hi, Arif',
              style: TextStyle(color: Colors.black),
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none),
                    suffix: Icon(Icons.search, color: Colors.black)),
              ),
            )
          ],
        ),
        leading: const Padding(
          padding: EdgeInsets.all(12),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/Profile.jpg'),
          ),
        ),
      ),
    );
  }
}
