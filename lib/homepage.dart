import 'package:flutter/material.dart';
import 'package:osfinance/overview.dart';
import 'package:osfinance/widgets/balancecard.dart';
import 'package:osfinance/widgets/expansecard.dart';
import 'package:osfinance/widgets/recent.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.calendar_today)),
          const Center(
            child: Text(
              "Tue,28,Jun 2022",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          const SizedBox(
            width: 8,
          )
        ],
        backgroundColor: Colors.white,
        title: const Text("OverView"),
      ),
      drawer: const Drawer(),
      body: Recent(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Container(
          height: 60,
          width: 60,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.blue],
            ),
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: IconButton(
                icon: const Icon(Icons.laptop),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: IconButton(
                icon: const Icon(Icons.calendar_today),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: IconButton(
                icon: const Icon(Icons.bar_chart),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: IconButton(
                icon: const Icon(Icons.person),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
