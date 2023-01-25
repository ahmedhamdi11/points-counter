import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int teameAPoints = 0;

  int teameBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('points counter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Spacer(
              flex: 1,
            ),
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //team A points and points control
                  Column(
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      //numbe of points in team A
                      SizedBox(
                        height: 180,
                        width: 150,
                        child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              '$teameAPoints',
                              style: const TextStyle(fontSize: 150),
                            )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      //add 1 point
                      MaterialButton(
                        color: Colors.orange,
                        onPressed: () {
                          setState(() {
                            teameAPoints++;
                          });
                        },
                        child: const Text('add 1 point'),
                      ),

                      //add 2 points
                      MaterialButton(
                        color: Colors.orange,
                        onPressed: () {
                          setState(() {
                            teameAPoints += 2;
                          });
                        },
                        child: const Text('add 2 point'),
                      ),

                      //add 3 points
                      MaterialButton(
                        color: Colors.orange,
                        onPressed: () {
                          setState(() {
                            teameAPoints += 3;
                          });
                        },
                        child: const Text('add 3 point'),
                      ),
                    ],
                  ),

                  //my divider
                  const VerticalDivider(
                    color: Colors.grey,
                    thickness: 1.0,
                  ),

                  //team B points and points controll
                  Column(
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      //numbe of points in team B
                      SizedBox(
                        height: 180,
                        width: 150,
                        child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              '$teameBPoints',
                              style: const TextStyle(fontSize: 150),
                            )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      //add 1 point
                      MaterialButton(
                        color: Colors.orange,
                        onPressed: () {
                          setState(() {
                            teameBPoints++;
                          });
                        },
                        child: const Text('add 1 point'),
                      ),

                      //add 2 points
                      MaterialButton(
                        color: Colors.orange,
                        onPressed: () {
                          setState(() {
                            teameBPoints += 2;
                          });
                        },
                        child: const Text('add 2 point'),
                      ),

                      //add 3 points
                      MaterialButton(
                        color: Colors.orange,
                        onPressed: () {
                          setState(() {
                            teameBPoints += 3;
                          });
                        },
                        child: const Text('add 3 point'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 3,
            ),

            //reset points to zero
            SizedBox(
              width: 150,
              child: MaterialButton(
                color: Colors.orange,
                onPressed: () {
                  setState(() {
                    teameAPoints = 0;
                    teameBPoints = 0;
                  });
                },
                child: const Text('reset'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
