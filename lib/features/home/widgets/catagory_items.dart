import 'package:flutter/material.dart';
import 'package:newsappnew/models/catagory_data.dart';

class CatagoryItems extends StatelessWidget {

  final CategoryData catagoryData;
  final int index;
  const CatagoryItems({super.key,
    required this.catagoryData,
    required this.index

  });


  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color:  catagoryData.categoryBackgroundColor,
        borderRadius:  BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
          //bottomRight: Radius.circular(25),
          bottomLeft: index %2==0 ? Radius.circular(25):Radius.circular(0),
          bottomRight: index %2==0 ? Radius.circular(0):Radius.circular(25),

        )
      ),
      child:Column(
        children: [
          Expanded(child: 
          Image.asset(catagoryData.categoryImage)
          ),
          Text(catagoryData.categoryName,
          style: theme.textTheme.bodySmall?.copyWith(
            fontSize: 25,
            color: Colors.white
          ),
          )
        ],
      ),


    );
  }
}
