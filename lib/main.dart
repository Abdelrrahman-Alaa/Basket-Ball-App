import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const BasketBall());
}

class BasketBall extends StatefulWidget {
  const BasketBall({Key? key}) : super(key: key);

  @override
  State<BasketBall> createState() => _BasketBallState();
}

class _BasketBallState extends State<BasketBall> {
  int teamApoints = 0;

  int teamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Points Counter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 400,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text("Team A", style: TextStyle(fontSize: 40)),
                      Text("$teamApoints",
                          style: const TextStyle(fontSize: 150)),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamApoints++;
                          });
                        },
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.orange)),
                        child: const Text("Add 1 point",
                            style:
                                TextStyle(fontSize: 16, color: Colors.black)),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamApoints += 2;
                          });
                        },
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.orange)),
                        child: const Text("Add 2 point",
                            style:
                                TextStyle(fontSize: 16, color: Colors.black)),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamApoints += 3;
                          });
                        },
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.orange)),
                        child: const Text("Add 3 point",
                            style:
                                TextStyle(fontSize: 16, color: Colors.black)),
                      ),
                    ],
                  ),
                  const VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  Column(
                    children: [
                      const Text("Team B", style: TextStyle(fontSize: 40)),
                      Text("$teamBpoints",
                          style: const TextStyle(fontSize: 150)),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBpoints++;
                          });
                        },
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.orange)),
                        child: const Text("Add 1 point",
                            style:
                                TextStyle(fontSize: 16, color: Colors.black)),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBpoints += 2;
                          });
                        },
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.orange)),
                        child: const Text("Add 2 point",
                            style:
                                TextStyle(fontSize: 16, color: Colors.black)),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBpoints += 3;
                          });
                        },
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.orange)),
                        child: const Text("Add 3 point",
                            style:
                                TextStyle(fontSize: 16, color: Colors.black)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  teamApoints = 0;
                  teamBpoints = 0;
                });
              },
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.orange)),
              child: const Text("Reset",
                  style: TextStyle(fontSize: 16, color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
