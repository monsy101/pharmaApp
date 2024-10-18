import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    print(screenWidth);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Placeholder Home Screen"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Welcome",
                    style: TextStyle(fontSize: 56, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "PLACE HOLDER W${screenWidth.round()},H${screenHeight.round()}",
              style: const TextStyle(fontSize: 56, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
