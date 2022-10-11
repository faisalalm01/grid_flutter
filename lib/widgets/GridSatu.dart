import 'package:flutter/material.dart';

class GridSatu extends StatelessWidget {
  const GridSatu({super.key});

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
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        itemCount: 50,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        itemBuilder: (context, index) {
          if(index %2 == 0) {
            return Container(
              
              width: 150,
              height: 150,
              color: Color.fromARGB(255, 30, 82, 124),
              child: Center(
                child: Text(
                  "hellow bro",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            );
          }else{
            return Container(
              // margin: EdgeInsets.all(10),
              width: 150,
              height: 150,
              color: Color.fromARGB(255, 82, 73, 206),
              child: Center(
                child: Text(
                  "hmmm",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
