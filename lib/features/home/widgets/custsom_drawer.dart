import 'package:flutter/material.dart';
import 'package:newsappnew/core/theme/color_palette.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery=MediaQuery.of(context);
    return Container(
      width: mediaQuery.size.width*0.7,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            alignment: AlignmentDirectional.center,
            height: mediaQuery.size.height*0.22,
            width: double.infinity,
            color: ColorPalette.primaryColor,
            child: Text("News App",
            style: TextStyle(
              fontFamily: "Exo",
              fontSize: 24,
              fontWeight:FontWeight.bold,
              color: Colors.white,
            ),
            ),

          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){

              },
              child: Row(
                children: [
                  Icon(
                    Icons.list,
                    size: 40,
                    color:Colors.black ,),
                  const SizedBox(width: 4,),
                  Text("Categories",
                    style: TextStyle(
                      fontFamily: "Exo",
                      fontSize: 24,
                      fontWeight:FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){

              },
              child: Row(
                children: [
                  Icon(
                    Icons.settings,
                    size: 40,
                    color:Colors.black ,),
                  const SizedBox(width: 4,),
                  Text("Settings",
                    style: TextStyle(
                      fontFamily: "Exo",
                      fontSize: 24,
                      fontWeight:FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
