
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:horizontal_card_pager/card_item.dart';
import 'package:horizontal_card_pager/horizontal_card_pager.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'card.dart';
class HomePage extends StatelessWidget {

  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    int _current = 0;
    // final CarouselController _controller = CarouselController();
    return Scaffold(
      appBar: AppBar(title:Center(child: Text("Sport-Street", style : TextStyle(color: Colors.white))),backgroundColor: Colors.black54,),
      backgroundColor: Colors.black,
      drawer: const Drawer(
        child:  Text("Drawer box"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children:[
           const Card(
             child:ListTile(
             selectedTileColor: Colors.black,
             title:  Text('My networth'),
           ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Matches",style: TextStyle(
                color: Colors.white,
                )
              ),
              Text("See all",style: TextStyle(
                color: Colors.red,
              )
              )
            ],
          ),
          SizedBox(height:20),
          BCard(),
          // CarouselSlider(
          //   options: CarouselOptions(height: 400.0),
          //   items: [1,2,3,4,5].map((i) {
          //     return Builder(
          //       builder: (BuildContext context) {
          //         return Container(
          //             width: MediaQuery.of(context).size.width,
          //             margin: EdgeInsets.symmetric(horizontal: 5.0),
          //             decoration: BoxDecoration(
          //                 color: Colors.amber
          //             ),
          //             child: Text('text $i', style: TextStyle(fontSize: 16.0),)
          //         );
          //       },
          //     );
          //   }).toList(),
          // )
          SizedBox(height: 20,),
          Row(
            children: const [
              Expanded(child:
              Text("Players", style: TextStyle(fontSize: 20,color: Colors.white),),

              ), Text("See all", style:TextStyle(fontSize:15, color :Colors.red))
            ],
          ),
          SizedBox(height:20),
          SizedBox(width: 10),
          Row(

              children:const [Chip(
            label: Text('All'),
                backgroundColor: Colors.black54,
                labelStyle: TextStyle(color: Colors.white),
          ),
               SizedBox(width: 10),
                Chip(
                label: Text('Top tracked'),
                backgroundColor: Colors.black54,
                  labelStyle: TextStyle(color: Colors.white),
              ),SizedBox(width: 10), Chip(
                label: Text('Gainers'),
                backgroundColor: Colors.black54,
                labelStyle: TextStyle(color: Colors.white),
              ),SizedBox(width: 10), Chip(
                label: Text('Losers'),
                backgroundColor: Colors.black54,
                labelStyle: TextStyle(color: Colors.white),
              )]),
          SizedBox(height:10),
          Container(
            child: SingleChildScrollView(
              child: Column(
                children:const [
                  CustomTile(),
                  CustomTile(),
                  CustomTile(),
                  CustomTile(),
                  CustomTile(),
                  CustomTile(),
                  CustomTile(),

                ],

              ),
            ),
          )

    // Row(
    //         children: [  ListTile(title:Text("AB de vilers",style:TextStyle(color:Colors.white))),
    //           ListTile(title:Text("AB de vilers",style:TextStyle(color:Colors.white))),
    //          ListTile(title:Text("AB de vilers",style:TextStyle(color:Colors.white))),
    //           ListTile(title:Text("AB de vilers",style:TextStyle(color:Colors.white))),
    //           ListTile(title:Text("AB de vilers",style:TextStyle(color:Colors.white)))
    //         ],
    //       )


        ]
      ),


    );
  }
}

class CustomTile extends StatelessWidget {
  const CustomTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(title:Text("Action seuence", style:TextStyle(color:Colors.white)),
      subtitle: Text("working", style: TextStyle(color:Colors.white)),
                 trailing: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
     children: [Text("Price", style:TextStyle(color: Colors.white)),
     Text("Previous close", style: TextStyle(color: Colors.white)),
     Text("Chanage", style: TextStyle(color: Colors.red))],),
    );
  }
}
