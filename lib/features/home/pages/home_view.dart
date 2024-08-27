import 'package:flutter/material.dart';
import 'package:newsappnew/core/theme/color_palette.dart';
import 'package:newsappnew/features/home/widgets/custsom_drawer.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          image:  DecorationImage(image: AssetImage (
              "assets/imgs/splashbackground.png"
          )
          )
      ),
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 90,
          title: Text("News App ",textAlign: TextAlign.center,),
               //leading: Icon(Icons.add),


        ),
        drawer: CustomDrawer(),


      ),
    );
  }
}
