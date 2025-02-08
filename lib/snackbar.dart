import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Widget/CityWidget.dart';

class Module11class1 extends StatefulWidget {
  const Module11class1({super.key});
  @override
  State<Module11class1> createState() => _Module11class1State();
}

class _Module11class1State extends State<Module11class1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Snackbar",
          style: TextStyle(
              fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
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
          SizedBox(height: 20,),
          ElevatedButton(
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
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            showDialog(context: context, builder: (context){
              return AlertDialog(
                title: Text("Are you sure ?"),
                content: Text("Are you sure about delete ?"),
                actions: [
                  TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text("ok")),
                  TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text("Cancel")),
                ],
              );
            });

          },child: Text("Alert Dialog",style: TextStyle(fontSize: 25),)),
          SizedBox(height: 20,),
          Text("For Adoption:",style: TextStyle(fontSize: 25,),),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CityWidget(catname: 'Kitty', cat_description: 'Kitty is currently available on Mipur-2.', image: 'https://vetmarlborough.co.nz/wp-content/uploads/cat-facts.jpg',),
                SizedBox(width: 5.w,),
                CityWidget(image: 'https://bestfriends.org/sites/default/files/styles/hero_dashboard_650/public/hero-dash/Asana3808_Dashboard_Standard.jpg?h=ebad9ecf&itok=kS7Pm7EQ', catname: 'Billu', cat_description: 'Im Billu, I live in Banani, Im looking for my Owner.',),
                SizedBox(width: 5.w,),
                CityWidget(image: 'https://image.petmd.com/files/styles/978x550/public/2023-09/how-smart-are-cats.jpg?w=1080&q=75', catname: 'Oggy', cat_description: 'I live in USA, Looking for my Brother Jack.',),
                SizedBox(width: 5.w,),
                CityWidget(image: 'https://media-be.chewy.com/wp-content/uploads/2024/10/17130011/cat-crying-1024x615.jpg', catname: 'Jack', cat_description: 'Im JAck, Looking for my brother Oggy.',),
              ],

            ),
          )
        ],
      ),
    );
  }
}


