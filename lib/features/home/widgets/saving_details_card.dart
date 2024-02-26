import 'package:flutter/material.dart';

class SavingDetailCard extends StatelessWidget {
  const SavingDetailCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(15)
        ),

        padding: EdgeInsets.all(30.0),
        height: 160,
        child: Stack(
          children: [
            ElevatedButton.icon(
              onPressed: (){},
              icon: Icon(Icons.add),
              label: Text("Quick Save"),
              style: ElevatedButton.styleFrom(
                // maximumSize: Size(150, 30)
                  padding: EdgeInsets.symmetric(vertical: 0,
                      horizontal: 8)
              ),
            ),

            Positioned(
              top: 0,
              right: 0,
              child: ElevatedButton(
                onPressed: (){},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("View Savings"),
                    Icon(Icons.arrow_forward)
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  // maximumSize: Size(150, 30)
                    padding: EdgeInsets.symmetric(vertical: 0,
                        horizontal: 8)
                ),
              ),
            ),

            Positioned(
              // top: 40,
                bottom: 0,
                left: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("My Savings"),
                    Text("*****",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),
                    )

                  ],
                )
            )
          ],
        )


    );
  }
}