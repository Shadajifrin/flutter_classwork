import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomSheetClassWork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Flutter BottomSheet",
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 10),
        child: Center(
          child: Column(
            children: [
              GestureDetector(
                onLongPress: () => showSheet(context),
                child: Container(
                  color: Colors.blue,
                  padding: EdgeInsets.all(12),
                  child: Center(
                    child: Text(
                      "Select the Category",
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  // Handle 'Help' button tap here
                },
                child: Container(
                  color: Colors.blue,
                  padding: EdgeInsets.all(12),
                  child: Center(
                    child: Text(
                      "Help",
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
void showSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCategoryItem(context, FontAwesomeIcons.solidFolder, Colors.blue.shade200, 'Shopping'),
                  _buildCategoryItem(context, FontAwesomeIcons.solidFolder, Colors.purple.shade200, 'Education'),
                  _buildCategoryItem(context, FontAwesomeIcons.solidFolder, Colors.blue.shade600, 'Personal'),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildCategoryItem(context, FontAwesomeIcons.solidFolder, Colors.pink.shade500, 'Office'),
                _buildCategoryItem(context, FontAwesomeIcons.solidFolder, Colors.yellow.shade800, 'Part Time'),
                _buildCategoryItem(context, FontAwesomeIcons.solidFolder, Colors.grey.shade600, 'Other'),
              ],
            ),
            SizedBox(height: 10),
           Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5,right: 250),
                  child: _buildCategoryItem(context, FontAwesomeIcons.folderPlus, Colors.orange.shade400, 'New'),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}

Widget _buildCategoryItem(BuildContext context, IconData iconData, Color iconColor, String text) {
  return Column(
    children: [
      FaIcon(
        iconData,
        color: iconColor,
        size: 48, // Adjust icon size as needed
      ),
      SizedBox(height: 8),
      Text(
        text,
        style: TextStyle(fontSize: 16),
      ),
    ],
  );
}
