import 'package:flutter/material.dart';

class GridDua extends StatelessWidget {
  const GridDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: FlutterLogo(),
          title: Text("Judul Grid"),
          centerTitle: false,
          actions: [
            IconButton(
                onPressed: () {
                  print("klik more");
                },
                icon: Icon(Icons.more_vert)),
          ],
        ),
        body: ListView.builder(
          padding: EdgeInsets.all(20),
          itemCount: 50,
          itemBuilder: (context, index) {
            if (index % 2 == 0) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 23),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 150,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Hello ${index + 1}",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    )
                  ],
                ),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.only(bottom: 23),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(height: 150, color: Colors.blueGrey),
                    SizedBox(height: 10),
                    Text(
                      "hello ${index + 1}",
                      style: TextStyle(fontSize: 25),
                    )
                  ],
                ),
              );
            }
          },
        ));
  }
}
