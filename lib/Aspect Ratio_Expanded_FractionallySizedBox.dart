import 'package:flutter/material.dart';

class ModuleNine extends StatelessWidget {
  const ModuleNine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Aspect Ratio",
          style: TextStyle(
              fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              child: AspectRatio(
                  aspectRatio: 16/9,
                child: Container(
                  color: Colors.amber,
                ),
              ),
            ),
            Center(
              child: SizedBox(
                height: 150,
                width: 250,
                child: ColoredBox(
                    color:Colors.red),
              ),
            ),
            SizedBox(height: 20,),
        
            Container(
              height: 400,
              width: 250,
              color: Colors.blue,

              child: FractionallySizedBox(
                widthFactor: 0.5,
                heightFactor: 0.5,
                alignment: Alignment.bottomRight,
                child: Container(
                  color: Colors.green,
                  child: Center(child: Text("50% width and Height"),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
        
        
            SizedBox(
              height: 600,
              width: 400,
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      // height: 100,
                      // width: 100,
                      color: Colors.red,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      // height: 100,
                      // width: 100,
                      color: Colors.blue,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      // height: 100,
                      // width: 100,
                      color: Colors.green,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      // height: 100,
                      // width: 100,
                      color: Colors.yellow,
                    ),
                  ),
                ],
              ),
            ),
        
            SizedBox(height: 20,),
        
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 250,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Positioned(
                    top: 50,
                    bottom: 50,
                    left: 70,
                    right: 70,
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50),

                      ),
                    ),
                  )
                ],
              ),
            )
        
          ],
        ),
      ),
    );
  }
}
