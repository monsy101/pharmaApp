import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Placeholder Home Screen"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: SizedBox(width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text("Welcome",style: TextStyle(fontSize: 56,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),

          ],
        ),
      ),
    );
  }
}
