import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mi Musica"),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 150,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(
                  vertical: 50,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 45,
                    ),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red,
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "For",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                },
              ),
            ),
            Row(
              children: <Widget>[
                Text(
                  "Last added",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                const SizedBox(width: 20),
                ElevatedButton(onPressed: () {}, child: Text("Click"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
