import 'package:flutter/material.dart';

class BasketBallCounter extends StatefulWidget {
  const BasketBallCounter({Key? key}) : super(key: key);

  @override
  State<BasketBallCounter> createState() => _BasketBallCounterState();
}

class _BasketBallCounterState extends State<BasketBallCounter> {
  double countA = 0;
  double countB = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Points Counter"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      const Text(
                        "Team A",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Text("${countA.toInt()}", style: TextStyle(fontSize: countA>100?100:150)),
                      const SizedBox(
                        height: 40,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                countA += 1;
                              });
                            },
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.blue),
                                padding: MaterialStatePropertyAll(
                                    EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 13))),
                            child: const Text(
                              "Add 1 point",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                countA += 2;
                              });
                            },
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.blue),
                                padding: MaterialStatePropertyAll(
                                    EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 13))),
                            child: const Text(
                              "Add 2 point",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                countA += 3;
                              });
                            },
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.blue),
                                padding: MaterialStatePropertyAll(
                                    EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 13))),
                            child: const Text(
                              "Add 3 point",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: 390,
                  width: 1,
                  color: Colors.grey,
                  margin: const EdgeInsets.only(right: 10, left: 10),
                ),
                Expanded(
                  child: Column(
                    children: [
                      const Text(
                        "Team B",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Text("${countB.toInt()}", style: TextStyle(fontSize: countA>100?100:150)),
                      const SizedBox(
                        height: 40,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                countB += 1;
                              });
                            },
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.blue),
                                padding: MaterialStatePropertyAll(
                                    EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 13))),
                            child: const Text(
                              "Add 1 point",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                countB += 2;
                              });
                            },
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.blue),
                                padding: MaterialStatePropertyAll(
                                    EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 13))),
                            child: const Text(
                              "Add 2 point",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                countB += 3;
                              });
                            },
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.blue),
                                padding: MaterialStatePropertyAll(
                                    EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 13))),
                            child: const Text(
                              "Add 3 point",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  countA = 0;
                  countB = 0;
                });
              },
              style: const ButtonStyle(
                  padding: MaterialStatePropertyAll(
                      EdgeInsets.symmetric(horizontal: 40, vertical: 15))),
              child: const Text("Reset")),
          const Spacer(flex: 2),
        ],
      ),
    );
  }
}
