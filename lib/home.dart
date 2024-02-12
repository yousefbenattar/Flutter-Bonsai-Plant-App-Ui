import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          margin: EdgeInsets.only(left: 10),
          child: Row(
            children: [
              Text('Trending',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
              SizedBox(width: 15),
              Text('Latest',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.grey),),
            ],
          ),
        ),
        actions: [
          Container(
          margin: EdgeInsets.only(right: 26),
            child: Icon(Icons.notifications))
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(right: 18,left: 18),
        child: SingleChildScrollView(
          child: Column(children: [
            ccategories(),
            SizedBox(height: 15),
            NewsList ()
            ],),
        ),
      ),
      bottomNavigationBar:bottombar(),
    );
  }
}


List<String> categories = [
  'Design',
  'Tech',
  'Music',
  'Sports',
  'Design',
  'Tech',
  'Music',
  'Sports'
];

List<News> list_1 = [
   News(
   img: 'assets/3.png',
   source_brand: 'assets/1.png',
   source_name: 'Meduim',
   time: '17 hour ago',
   title: '10 Auto Design treck in\nfigma every Designer\nShould Know',
   length: '5 min read'),
   News(
   img: 'assets/4.png',
   source_brand: 'assets/2.png',
   source_name: 'Design Week',
   time: '17 hours ago',
   title: 'How JKR Designed a\nglobal identety that\ngived fanta its pop',
   length: '5 min read'),
   News(
   img: 'assets/3.png',
   source_brand: 'assets/1.png',
   source_name: 'Meduim',
   time: 'time',
   title: '10 Auto Design treck\nin figma every\nDesigner Should Know',
   length: 'length'),
   News(
   img: 'assets/4.png',
   source_brand: 'assets/2.png',
   source_name: 'Design Week',
   time: '17 hours ago',
   title: 'How JKR Designed a global\nidentety that gived\nfanta its pop',
   length: '5 min read'),
];

class News{
  String img ;
  String source_brand ;
  String source_name ;
  String title ;
  String time ;
  String length ;
  News({
  required this.img,
  required this.source_brand,
  required this.source_name,
  required this.time,
  required this.title ,
  required this.length,
  });
}

Widget bottombar (){
  return BottomNavigationBar(items:const [
    BottomNavigationBarItem(label: '',icon: Icon(Icons.home,color: Colors.black,)),
    BottomNavigationBarItem(label: '',icon: Icon(Icons.search,color: Colors.black)),
    BottomNavigationBarItem(label: '',icon: Icon(Icons.add,color: Colors.black)),
    BottomNavigationBarItem(label: '',icon: Icon(Icons.bookmark_add,color: Colors.black)),
    BottomNavigationBarItem(label: '',icon: Icon(Icons.account_circle_outlined,color: Colors.black)),
  ]);
}

Widget NewsList (){
  return Card(
    child: Container(
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: list_1.length,itemBuilder: (context,index){
        return Container(
          height: 350,
          color: Colors.white54,
          width: double.infinity,
          child: Column(
            children: [
              Container(
                height: 200,
               width: double.infinity,
                child: Image(image: AssetImage(list_1[index].img),fit: BoxFit.cover,)),
              Row(
    
                
              children: [ CircleAvatar(backgroundImage: AssetImage(list_1[index].source_brand),),
              Text(list_1[index].source_name),],),
              Text(list_1[index].title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Row(children: [ Text(list_1[index].time),
                SizedBox(width: 10),
                Text(list_1[index].length),],),
                Icon(Icons.menu)
                ],),
            ],
          ),
        );
      },),
    ),
  );
}

Widget ccategories (){
  return Container(
    //color: Colors.amber,
    height: 30,
    width: double.infinity,
    child: ListView.builder(
      shrinkWrap: true,
      //physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (context,index){
      return Container(
        margin: EdgeInsets.only(right: 10),
        alignment: Alignment.center,
        width: 60,
        decoration: BoxDecoration(
          color: Color.fromARGB(97, 238, 234, 234),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Text(categories[index]),
      );
    }),
  );
}