import 'package:flutter/material.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  var count = 0;
  var favColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE79C98),
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                '$count',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 100, fontWeight: FontWeight.bold, color: Colors.pink),
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(
                        () {
                          count++;
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffE7D587),
                    ),
                    child: const Text(
                      'سبح',
                      style: TextStyle(fontSize: 64),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  if (favColor == Colors.white) {
                    setState(() {
                      favColor = Colors.red;
                    });
                  } else {
                    setState(() {
                      favColor = Colors.white;
                    });
                  }
                },
                child: Icon(
                  Icons.favorite,
                  size: 150,
                  color: favColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
