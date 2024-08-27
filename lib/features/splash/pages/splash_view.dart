import 'package:flutter/material.dart';
import 'package:newsappnew/core/config/page_routes_name.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}
//void initState() {
//   Future.delayed(
//   const Duration(seconds: 2),
//   () {
//   Navigator.pushReplacementNamed(
//   context,
//   PageRoutesName.homeView,
//   );
//   },
//   );
//   super.initState();
//void intiState(){
//     Future.delayed(
//         const Duration(seconds: 2),
//             (){
//               Navigator.pushReplacementNamed(
//                    context,
//                 PageRoutesName.homeView,
//                );
//     },
//     );
//     super.initState();
//   }
class _SplashViewState extends State<SplashView> {
  @override
  void initState(){
    Future.delayed(
        const Duration(seconds: 2),
            (){
              Navigator.pushReplacementNamed(
                   context,
                PageRoutesName.homeView,
               );
    },
    );
    super.initState();
  }
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
      child: Center(
          child: Image.asset("assets/imgs/splashlogo.png")),

    );
  }
  /*class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
  }

  class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
  Future.delayed(
  const Duration(seconds: 2),
  () {
  Navigator.pushReplacementNamed(
  context,
  PageRoutesName.homeView,
  );
  },
  );
  super.initState();
  }

  @override
  Widget build(BuildContext context) {
  return Container(
  decoration: const BoxDecoration(
  color: Colors.white,
  image: DecorationImage(
  image: AssetImage(
  "assets/images/pattern.png",
  ),
  )),
  child: Center(
  child: Image.asset(
  "assets/icons/logo.png",
  ),
  ),
  );
  }
  }*/
}
