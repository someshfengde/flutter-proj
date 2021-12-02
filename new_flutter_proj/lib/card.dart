import 'package:flutter/material.dart';
import 'package:flag/flag.dart';
class BCard extends StatelessWidget {
  const BCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xff282A2D),
      borderRadius: BorderRadius.circular(8)
      ),
      width: MediaQuery.of(context).size.width - 20,
      height: 150,
      padding: EdgeInsets.all(1),
      child: Card(
        color: Color(0xff282A2D),
        child: Column(
          children: [
            ListTile(
              title:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("ICC World championship | 21st March",style: TextStyle(color:Colors.white,fontSize: 14)),
                  Text('Live',style:TextStyle(color: Colors.red),textAlign: TextAlign.right,)
                ],
              ),
              subtitle: Text("11th march 2020 ",style: TextStyle(color:Colors.white,fontSize: 10)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children :[
                Container(
                  child: CircleAvatar(
                    child:Icon(Icons.flag),
                    backgroundColor: Colors.transparent,
                  )
                ),
                Text("Ind 155/7(20)" ,style:TextStyle(color:Colors.white)),
                Text("vs",style: TextStyle(color:Colors.white)),
                Text("67/0 AUS" ,style:TextStyle(color:Colors.white)),
                CircleAvatar(child: Icon(Icons.eighteen_mp),
                backgroundColor: Colors.transparent,)
              ],
            )

          ],
        ),
      )

      // child:Column(
      //   children: [
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         // ListTile(
      //         //   title: Text("ICC World championship | 21st March",style: TextStyle(color:Colors.white)),
      //         //   subtitle: Text("11th march 2020")
      //         // ),
      //         Text('Live',style:TextStyle(color: Colors.red))
      //       ],
      //     )
      //
      //   ],
      // ),

    );
  }
}
