import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:poject_clone1/models/category_model.dart';

 class HomePage extends StatelessWidget {
   HomePage({super.key}); // Add const here

  List<CategoryModel> categories = [];

  void _getCategories () {
      categories =  CategoryModel.getCategories();
  }


  @override
  Widget build(BuildContext context) {
    _getCategories();
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
                   backgroundColor: Colors.white,
          title: Text("Break fast", style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),),
          centerTitle: true,
          leading: GestureDetector(
            onTap: (){},
            child: Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 247, 245, 245),
              borderRadius: BorderRadius.circular(8.8)
            ),
              child: SvgPicture.asset(
              'dots.svg',
              width: 20,
              height: 20,
            ),
          ),
        ),
          actions: [
        GestureDetector(
          onTap: () {},
          child:Container(
            width: 37,  
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 247, 245, 245),
              borderRadius: BorderRadius.circular(8.8)
            ),
              child: SvgPicture.asset(
              'dots.svg',
              width: 20,
              height: 20,
            ),
          ),
              )
            ],
        ),
        body: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    // ignore: deprecated_member_use
                    color: Color.fromARGB(255, 24, 19, 20).withOpacity(0.11),
                    blurRadius: 40,
                    spreadRadius: 0.0
                  )
                ]
              ),
             child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.all(15),
                hintText: "Search for the item",
                hintStyle: TextStyle(
                  color: Color(0xfffDDDADA),
                  fontSize: 14
                ),
                prefixIcon: Padding(
                  padding: EdgeInsets.all(15),
                  child: SvgPicture.asset('dots.svg',
                   width: 12,
                   height: 12,
                  ),
                  ),
              suffixIcon: Container(
               width: 100, 
              child:  IntrinsicHeight(
               child:  Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    VerticalDivider(
                      color: Colors.black,
                      indent: 10,
                      endIndent: 10,
                      thickness: 0.1,
                    ),
                  Padding(
                  padding: EdgeInsets.all(15),
                  child: SvgPicture.asset('dots.svg',
                   width: 12,
                   height: 12,
                   ) ,
                  ), 
                  ],
                ),
              ),
              ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                )
              ),
            ),
            )
          ],
        ),
            SizedBox(height: 14,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Padding(
               padding: EdgeInsets.only(left: 20),
               child:  Text(
                 "Category",
                 style:TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                 ),
                 ),
            ),
            SizedBox(height: 15,),
            Container(
              height: 150,
              color: Colors.transparent,
              child: ListView.separated(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (content, index) => SizedBox(width: 25,),
                itemBuilder: (context, index) {
                    return Container(
                      width: 100,
                      decoration: BoxDecoration(
                        // color: ((categories[index].boxColor)),
                        color: categories[index].boxColor
                      ),
                    );
                }
                ),
            )
              ],
            )
          ],
        )
      );
  }

  double get Opacity => 0.11;
}

// AppBar appBar() {
//   return AppBar (
//           backgroundColor: Colors.white,
//           title: Text("Break fast", style: TextStyle(
//             color: Colors.black,
//             fontSize: 18,
//             fontWeight: FontWeight.bold
//           ),),
//           centerTitle: true,
//           leading: GestureDetector(
//             onTap: (){},
//             child: Container(
//             margin: EdgeInsets.all(10),
//             alignment: Alignment.center,
//             decoration: BoxDecoration(
//               color: const Color.fromARGB(255, 247, 245, 245),
//               borderRadius: BorderRadius.circular(8.8)
//             ),
//               child: SvgPicture.asset(
//               'dots.svg',
//               width: 20,
//               height: 20,
//             ),
//           ),
//         ),
//           actions: [
//         GestureDetector(
//           onTap: () {},
//           child:Container(
//             width: 37,  
//             margin: EdgeInsets.all(10),
//             alignment: Alignment.center,
//             decoration: BoxDecoration(
//               color: const Color.fromARGB(255, 247, 245, 245),
//               borderRadius: BorderRadius.circular(8.8)
//             ),
//               child: SvgPicture.asset(
//               'dots.svg',
//               width: 20,
//               height: 20,
//             ),
//           ),
//               )
//             ],
// );
// }