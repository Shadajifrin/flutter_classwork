import 'package:flutter/material.dart';
import 'package:flutter_classwork/widget/stagwidget.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StagGrid extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 131, 248, 192),
        title: Center(child: Text("XYZreader",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),)),
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(crossAxisCount: 4,
        children: [
          StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount:2 , child: StagWidget(
            image:"assets/images/first.jpeg",
            title: "Mysteries of United",
            date: "20 Jun 2013",
            desc: "Carl Sagan",
          )
          ),
          StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount:4 , child: StagWidget(
            image:"assets/images/second.jpeg",
            title: "An Empire State of...",
            date: "19 Jun 2013",
            desc: "Ernest Hemingway",
          )
          ),
          StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount:2 , child: StagWidget(
            image:"assets/images/third.jpeg",
            title: "10 Tips for Hisper T..",
            date: "10 May 2013",
            desc: "Vincent Van Gogh",
          )
          ),
          StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount:3 , child: StagWidget(
            image:"assets/images/fifth.jpeg",
            title: "My story of Pets",
            date: "20 jun 2013",
            desc: "Carl Sagan",
          )
          ),
          StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount:2 , child: StagWidget(
            image:"assets/images/four.jpeg",
            title: "My story of climbing",
            date: "20 jun 2013",
            desc: "Carl Sagan",
          )
          ),
        ],),
      ),
    );
  }
}