import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Container(
        margin:const EdgeInsets.only(left: 10),
        child:const Text('Explore')),),
    body:SingleChildScrollView(
      child: Container(
        //color: Colors.red,
        margin:const EdgeInsets.only(right: 16,left: 16,top: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  searchbar(),
                 const SizedBox(height: 10),
                  ccategories(),
                  const SizedBox(height: 10),
                 const  Text('This Weeks Trending Articels',
                  style: TextStyle(fontSize: 17,
                  fontWeight: FontWeight.bold),),
                 const Divider(color: Colors.grey,thickness: 1,),
                 listview (),
                ],
              ),
        ),
          ),
    )

    );
  }
}

Widget listview (){
  return Container(
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: list_1.length,itemBuilder: (context,index){
        return Container(
          height: 140,
          color: Colors.white54,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(children: [
                Row(children: [
                  CircleAvatar(backgroundImage: AssetImage(list_1[index].source_brand),),
                  Text(list_1[index].source_name),
                  ],),
                  Text(list_1[index].title),
                  Row(children: [
                  Text(list_1[index].time),
                  Text(list_1[index].length),
                  ],),
              ],),
              Column(
                children: [
                  Container(
                    
                    alignment: Alignment.bottomCenter,
                    height: 130,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber,image: DecorationImage(
                      image: AssetImage(list_1[index].img),fit: BoxFit.fill)),
                    child: Container(
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber,),
                      padding: EdgeInsets.all(3),
                      
                      child: Text('Most Viewed'),),
                  )
                ],
              ),
             ],
          ),
        );
      },),
    );
}

Widget searchbar (){
  return Container(
    width: double.infinity,
    height: 50,
    child: CupertinoSearchTextField(
      prefixIcon: Icon(Icons.search),
      placeholder: 'Search',),
  );
}