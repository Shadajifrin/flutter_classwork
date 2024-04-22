import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridView_custom extends StatelessWidget {
  List<Map<String, dynamic>> data = [
  {
    "image": "assets/images/iphone13pro.jpeg",
    "name": 'iPhone 13 Pro',
    "stringdata": 'Mobile',
    "originalPrice": 1299,
    "discountedPrice": 999,
    "discountPercentage": 20,
  },
  {
    "image": "assets/images/iphone se.jpeg",
    "name": 'iPhone SE',
    "stringdata": 'Mobile',
    "originalPrice": 429,
    "discountedPrice": 399,
    "discountPercentage": 15,
  },
  {
    "image": "assets/images/appleserie7.jpeg",
    "name": 'Apple Watch Series 7',
    "stringdata": 'Watch',
    "originalPrice": 399,
    "discountedPrice": 199,
    "discountPercentage": 50,
  },
  {
    "image": "assets/images/watchse.jpeg",
    "name": 'Apple Watch SE',
    "stringdata": 'Watch',
    "originalPrice": 1299,
    "discountedPrice": 749,
    "discountPercentage": 50,
  },
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu, color: Colors.white),
        backgroundColor: Color.fromRGBO(4, 105, 78, 1),
        title: Text(
          "Catalog apps",
          style: GoogleFonts.poppins(fontSize: 30, color: Colors.white),
        ),
      ),
      body: GridView.custom(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.5,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10
          
        ),
        childrenDelegate: SliverChildBuilderDelegate(
          (context, index) {
            if (index < data.length) {
              return Container(
                child: Column(
                  children: [
                    Expanded(child: Image.asset(data[index]["image"]!)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data[index]["name"]!,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          data[index]["stringdata"]!,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: Colors.grey
                          ),
                        ),
                       RichText(
  text: TextSpan(
    text: "\$${data[index]["originalPrice"]}",
    style: TextStyle(
      decoration: TextDecoration.lineThrough,
      color: Colors.grey,
      fontSize: 18,
    ),
    children: [
      TextSpan(
        text: " \$${data[index]["discountedPrice"]}",
        style: TextStyle(
          decoration: TextDecoration.none,
          fontWeight: FontWeight.bold,
          color: Color.fromRGBO(4, 105, 78, 1),
           fontSize: 18,
        ),
      ),
      TextSpan(
        text: " ${data[index]["discountPercentage"]}% off",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
          color: Colors.red,
           fontSize: 18,
        ),
      )
    ],
  ),
),
SizedBox(height: 10,),
                      ],
                    ),
                 MaterialButton(
  minWidth: 60,
  height: 40,
  color: Color.fromRGBO(4, 105, 78, 1),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(5), ),
  onPressed: () {},
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(Icons.shopping_cart, color: Colors.white, size: 19),
      SizedBox(width: 10),
                    Text("Add to Cart",style: GoogleFonts.robotoMono(fontSize:19,color:Colors.white),),]))
                  ],
                ),
              );
            } else {
              return null;
            }
          },
        ),
      ),
    );
  }
}
