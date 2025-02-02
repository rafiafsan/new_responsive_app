import "package:flutter/material.dart";

class mediaquery extends StatelessWidget {
  const mediaquery({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Responsive App",
          style: TextStyle(
              fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Center(
        child: Container(
          // height: screenHeight * 0.8,
          // width: screenWidth * 0.8,

          height: screenHeight,
          width: screenWidth,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
          ),
          child: Center(
            child: Text(
              "This is Responsive App",
              style: TextStyle(
                  fontSize: screenWidth * 0.09,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}

class WarpExample extends StatelessWidget {
  final List<String> categories = [
    "fruits",
    "vegetables",
    "cakes",
    "Meat",
    "Eggs",
    "Snacks",
    "Drinks",
    "Frozen Items"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WarpExample",
            style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
                spacing: 10,
                children: categories.map((category) {
                  return Chip(
                    label: Text(
                      category,
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    backgroundColor: Colors.blueAccent.shade100,
                  );
                }).toList()),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: List.generate(
                    15,
                    (index) => Container(
                          color: Colors.blueAccent,
                        )),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class LayoutBuilder1 extends StatelessWidget {
  const LayoutBuilder1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "LayOutBuilder",
          style: TextStyle(
              fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: LayoutBuilder(builder:(context, con){
        if(con.maxWidth >600){
          return Center(
            child:Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                ),
                SizedBox(width: 10,),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                ),
                SizedBox(width: 10,),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                ),
                SizedBox(width: 10,),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                ),
              ],
            )
          );
        }else{
          return Center(
              child:Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.red,
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.red,
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.red,
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.red,
                  ),
                ],
              )
          );
        }
      }
      )
    );
  }
}
