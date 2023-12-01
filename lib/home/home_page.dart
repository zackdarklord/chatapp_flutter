import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(
                  child: Text("A"),
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: const Center(child: Text("message de A"))),
              ],
            ),
            Spacer(),
            Row(children: [
              CircleAvatar(
                child: Text("A"),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          print("tapped");
                        },
                        icon: Icon(Icons.send)),
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
