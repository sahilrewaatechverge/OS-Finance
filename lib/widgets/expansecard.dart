import 'package:flutter/material.dart';

import '../expensegraph.dart';

class CardWidgets extends StatefulWidget {
  const CardWidgets({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CardWidgetsState();
}

class _CardWidgetsState extends State<CardWidgets> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0, left: 20.0, bottom: 20.0),
      child: Card(
        elevation: 20,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        child: Container(
          padding: const EdgeInsets.all(15),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 5,
                            height: MediaQuery.of(context).size.height * 0.05,
                            color: Colors.pink,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text("Income"),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.purple.shade100,
                                      shape: BoxShape.circle,
                                    ),
                                    height: 20,
                                    width: 20,
                                  ),
                                  const Text("10000",style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),)
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 5,
                            height: MediaQuery.of(context).size.height * 0.05,
                            color: Colors.blue,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text("Expense"),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.blue.shade100,
                                      shape: BoxShape.circle,
                                    ),
                                    height: 20,
                                    width: 20,
                                  ),
                                  const Text("-2000",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),)
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: const [
                            Text("9999\nSaved",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),),
                      SizedBox(
                        height: 100, width: 100,
                        child: ExpenseGraph(),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 3,
                color: Colors.grey.shade300,
                margin: const EdgeInsets.only(top: 13, bottom: 13),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Family Income",
                      style: TextStyle(
                        color: Colors.black,
                      ),),
                      const SizedBox(
                        height: 5,
                      ),
                      Stack(
                        children: [
                          Container(
                            color: Colors.blue.shade300,
                            height: 5,
                            width: MediaQuery.of(context).size.width * 0.22,
                          ),
                          Container(
                            color: Colors.blue,
                            height: 5,
                            width: MediaQuery.of(context).size.width * 0.18,
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Expense",style: TextStyle(
                    color: Colors.black,
                  ),),
                      const SizedBox(
                        height: 5,
                      ),
                      Stack(
                        children: [
                          Container(
                            color: Colors.pink.shade300,
                            height: 5,
                            width: MediaQuery.of(context).size.width * 0.22,
                          ),
                          Container(
                            color: Colors.pink,
                            height: 5,
                            width: MediaQuery.of(context).size.width * 0.18,
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Saved",style: TextStyle(
                    color: Colors.black,
                  ),),
                      const SizedBox(
                        height: 5,
                      ),
                      Stack(
                        children: [
                          Container(
                            color: Colors.yellow.shade300,
                            height: 5,
                            width: MediaQuery.of(context).size.width * 0.22,
                          ),
                          Container(
                            color: Colors.yellow,
                            height: 5,
                            width: MediaQuery.of(context).size.width * 0.18,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
