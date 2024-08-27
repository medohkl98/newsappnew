import 'package:flutter/material.dart';
import 'package:newsappnew/features/home/widgets/catagory_items.dart';
import 'package:newsappnew/features/home/widgets/custsom_drawer.dart';
import 'package:newsappnew/models/catagory_data.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  final List<CategoryData> catagoriesDataList =[
    CategoryData(
      categoryID: "sports",
      categoryName: "Sport",
      categoryImage: "assets/icns/sports_icn.png",
      categoryBackgroundColor: const Color(0xFFC91C22),
    ),
    CategoryData(
      categoryID: "general",
      categoryName: "Politics",
      categoryImage: "assets/icns/politics_icn.png",
      categoryBackgroundColor: const Color(0xFF003E90),
    ),
    CategoryData(
      categoryID: "health",
      categoryName: "Health",
      categoryImage: "assets/icns/health_icn.png",
      categoryBackgroundColor: const Color(0xFFED1E79),
    ),
    CategoryData(
      categoryID: "business",
      categoryName: "Business",
      categoryImage: "assets/icns/bussines_icn.png",
      categoryBackgroundColor: const Color(0xFFCF7E48),
    ),
    CategoryData(
      categoryID: "environment",
      categoryName: "Environment",
      categoryImage: "assets/icns/environment_icn.png",
      categoryBackgroundColor: const Color(0xFF4882CF),
    ),
    CategoryData(
      categoryID: "science",
      categoryName: "Science",
      categoryImage: "assets/icns/science_icn.png",
      categoryBackgroundColor: const Color(0xFFF2D352),
    ),

  ];
  @override
  Widget build(BuildContext context) {
    var theme =Theme.of(context);
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
          centerTitle: true,
          toolbarHeight: 90,
          title: Text("News App ",textAlign: TextAlign.center,),
               //leading: Icon(Icons.add),


        ),
        drawer: CustomDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Pick your category \n of interest !",
                style: theme.textTheme.bodyLarge?.copyWith(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
              // TextStyle(
              //   fontFamily: "Exo",
              //   fontSize: 24,
              //   fontWeight:FontWeight.bold,
              //   color: Colors.black,
              // ),
              ),
              Expanded(
                child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  childAspectRatio: 0.9,
                ),
                    itemBuilder: (context, index) => CatagoryItems(
                      index:  index,catagoryData: catagoriesDataList[index],
                    ),itemCount: catagoriesDataList.length,
                ),
              ),
            ],
          ),
        ) ,


      ),
    );
  }
}
