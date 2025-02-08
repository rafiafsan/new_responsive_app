import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class CityWidget extends StatelessWidget {
  final String image,catname,cat_description;
  const CityWidget({
    super.key, required this.image, required this.catname, required this.cat_description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 25.h,
        width: 50.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(image),
            Text(catname,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Text(cat_description,style: TextStyle(fontSize: 10,),),

          ],
        )
    );
  }
}