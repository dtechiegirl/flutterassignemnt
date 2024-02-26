// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:savings_app/features/account/pages/account_view.dart';
import 'package:savings_app/features/home/pages/home_view.dart';
// import 'package:savings_app/home_view.dart';
import 'package:savings_app/features/invest/pages/invest_view.dart';
import 'package:savings_app/features/savings/pages/savings_view.dart';


class Homepage extends StatefulWidget {

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var listOfPages = [
    HomeView(),
    SavingsView(),
    InvestView(),
    AccountView()

  ];
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(


        body: listOfPages[selectedIndex],
      floatingActionButton: FloatingActionButton(

        child: Icon(Icons.add),
        shape: CircleBorder(),
        onPressed: (){

        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.blue,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (value){
          setState(() {
            selectedIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),
              label: "Home"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.savings),
              label: "Savings"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.rocket),
              label: "Invest"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle),
              label: "Account"
          ),
        ],
      ),
    );
  }
}



