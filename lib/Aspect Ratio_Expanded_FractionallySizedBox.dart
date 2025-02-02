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
      body: Column(
        children: [
          // Container(
          //   color: Colors.blue,
          //   child: AspectRatio(
          //       aspectRatio: 16/9,
          //     child: Container(
          //       color: Colors.amber,
          //     ),
          //   ),
          // ),
          Center(
            child: SizedBox(
              height: 150,
              width: 250,
              child: ColoredBox(
                  color:Colors.red),
            ),
          ),
          SizedBox(height: 20,),

          // Container(
          //   height: 400,
          //   width: 250,
          //   color: Colors.blue,
          //
          //   child: FractionallySizedBox(
          //     widthFactor: 0.5,
          //     heightFactor: 0.5,
          //     alignment: Alignment.bottomRight,
          //     child: Container(
          //       color: Colors.green,
          //       child: Center(child: Text("50% width and Height"),
          //       ),
          //     ),
          //   ),
          // ),


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
          )
        ],
      ),
    );
  }
}
