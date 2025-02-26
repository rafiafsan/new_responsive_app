import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ModuleNine3 extends StatelessWidget {
  const ModuleNine3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Module Nine",
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.network(
                    height: 400,
                    width: 400,
                    "https://img.decrypt.co/insecure/rs:fit:1920:0:0:0/plain/https://cdn.decrypt.co/wp-content/uploads/2024/05/doge-dogecoin-meme-kabosu-gID_7.jpg@webp"),
          
                Image.asset('asset/logo.png'),
          
                Container(
                  height: 40.h,
                  width: 40.w,
                  color: Colors.blue,
                ),

                Text("Rafi Afsan",style: TextStyle(
                  fontSize: 35.sp,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),)
              ],
            ),
          ),
        ));
  }
}
