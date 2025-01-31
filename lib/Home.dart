import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:poject_clone1/models/category_model.dart';
import 'package:poject_clone1/models/diet_model.dart';

 class HomePage extends StatelessWidget {
   HomePage({super.key}); // Add const here

  List<CategoryModel> categories = [];
  List<DietModel> diets = [];

  void _getCategories () {
      categories =  CategoryModel.getCategories();
  }

  void _getDiets () {
      diets = DietModel.getDietModel();
  }


  @override
  Widget build(BuildContext context) {
    _getCategories();
    _getDiets();
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
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20
                ),
                separatorBuilder: (content, index) => SizedBox(width: 25,),
                itemBuilder: (context, index) {
                    return Container(
                      width: 100,
                      // height: 20,
                      decoration: BoxDecoration(
                        // color: ((categories[index].boxColor)),
                        color: categories[index].boxColor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle
                            ),
                            child: Padding(
                               padding: EdgeInsets.all(8.0),
                              //  child: SvgPicture.asset(categories[index].iconPath),
                               ),
                          ),
                          Text(
                            categories[index].name,
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                              fontSize: 14,

                            ),
                          )
                        ],
                      ),
                    );
                }
                ),
            ),
            SizedBox(height: 14,),
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                   child: Text(
                  'Recommendations\n for diets',
                  style:TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                 ),
                ),
                  ),
                  SizedBox(height: 4),
                  Container(
                    color: Colors.blue,
                    height: 240,
                    child: ListView.separated(
                      itemBuilder: (content, index){
                        return Container(
                          width: 210,
                          decoration: BoxDecoration(
                            color: diets[index].boxColor,
                            borderRadius: BorderRadius.circular(4)
                          ),
                        );
                      }, 
                      separatorBuilder: (content, index) =>  SizedBox(width: 15), 
                      itemCount: diets.length,
                      scrollDirection: Axis.horizontal,
                      ),
                  )
               ],
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