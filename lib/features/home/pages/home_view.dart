
import 'package:flutter/material.dart';
import 'package:savings_app/features/home/widgets/saving_details_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello, StarGirl",
            style: TextStyle(
              fontWeight: FontWeight.bold
            ) ,
            ),
            Text("Do More With Your Finance",
            style: TextStyle(
              fontSize: 17,
              // fontStyle: FontStyle.italic
            ),
            )
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon:
          Icon(Icons.account_circle,
            color: Colors.blue,
            size: 50
          ))
        ],
      ),

      body: ListView(
          padding: EdgeInsets.all(16.0),
        children: [
          SavingDetailCard(),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text("Suggestions for you",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black38
                )

              ),
                Image.asset("assets/images/rent.png")
            ]
            ),
          )
        ],
      ),



      floatingActionButton: FloatingActionButton(

        child: Icon(Icons.add),
        shape: CircleBorder(),
        onPressed: (){

        },
      ),
    );

  }
}

