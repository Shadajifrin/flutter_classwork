import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GridView_assignment extends StatelessWidget {
final List<String> imageList=[
  'assets/images/usa.jpeg',
  'assets/images/england.jpeg',
  'assets/images/france.jpeg',
  'assets/images/russia.jpeg',
  'assets/images/canada.jpeg'
];
final List<String> names = [
    'USA',
    'England',
    'France',
    'Russia',
    'Canada'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("GridView()",style: TextStyle(color: Colors.white),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
        body: Padding(
          padding: EdgeInsets.only(top: 6,left: 6),
          child: GridView.builder(gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,childAspectRatio: 1,mainAxisSpacing: 6,crossAxisSpacing: 6,
            ), itemBuilder: (BuildContext context ,index){
                  return Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2 - 12, 
                    height: MediaQuery.of(context).size.width / 2 - 12, 
                    child: Image.asset(
                      imageList[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  left: 6,
                  bottom: 9,
                  child: Text(
                    names[index],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            );
          
            },
            itemCount: imageList.length,),
        )
    );
  }
}