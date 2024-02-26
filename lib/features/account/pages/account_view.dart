
import 'package:flutter/material.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Single Screen UI'),
          ),
          body: Center(
            child: Container(
              child: Column(
                children: [
                  // Grid View
                  GridView.count(
                    shrinkWrap: true, // Wrap content vertically
                    crossAxisCount: 2, // Two items per row
                    children: List.generate(4, (index) => Text('Item $index')),
                  ),
                  SizedBox(height: 15), // Add some spacing
                  // Text Button
                  TextButton(
                    onPressed: () => print('Button Pressed'),
                    child: Text('Click Me'),
                  ),
                ],
              ),
              padding: EdgeInsets.all(10), // Add padding to container
            ),
          ),
        ),
      );
    }
  }

