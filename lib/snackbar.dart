import 'package:flutter/material.dart';

class module11class1 extends StatefulWidget {
  const module11class1({super.key});

  @override
  State<module11class1> createState() => _module11class1State();
}

class _module11class1State extends State<module11class1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Snackbar",
          style: TextStyle(
              fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("This is Snackbar",style: TextStyle(fontSize: 20),),
                      duration: Duration(seconds: 2),
                        action: SnackBarAction(label: 'Undo', onPressed: (){

                        }),
                      ));
                },
                child: Text("Snackbar",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black45,
                      // backgroundColor: Colors.blue,
                    ))),
          ),
          SizedBox(height: 20,),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                      isDismissible: false,
                      context: context, builder: (context){
                    return Column(
                      children: [
                        Center(child: Text("This is BottomSheet.",style: TextStyle(fontSize: 40),),
                        ),
                        Container(
                          height: 400,
                          width: 500,
                          color: Colors.blue,
                        )
                      ],
                    );
                  });
                },
                child: Text("BottomSheet",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black45,
                      // backgroundColor: Colors.blue,
                    ))),
          )
        ],
      ),
    );
  }
}
