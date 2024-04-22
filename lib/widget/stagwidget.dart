import 'package:flutter/material.dart';

class StagWidget extends StatelessWidget {
  final String? image;
  final String? title;
  final String? date;
  final String? desc;
 
  StagWidget(
      {
      this.image,
      this.title,
      this.desc,
      this.date,
      });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
children: [
            Image.asset(image!,),
          Text(title!,style: TextStyle(color: Colors.black,fontSize: 20),),
          Text(date!,style: TextStyle(color: Colors.grey,fontSize: 10),),
           Text(desc!,style: TextStyle(color: Colors.grey,fontSize: 15),),
],
      ),
    );
  }
}
