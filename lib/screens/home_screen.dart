
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hypertransit/screens/busmap.dart';
import 'package:hypertransit/screens/epass.dart';
import 'package:hypertransit/screens/profile_page.dart';
//import 'login_screen.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({Key? key}) : super(key: key);
  

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  Future<bool?> _onBackPressed() async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Do you want to exit?'),
            actions: <Widget>[
              TextButton(
                child: Text('No'),
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
              ),
              TextButton(
                child: Text('Yes'),
                onPressed: () {
                  Navigator.of(context).pop(true);
                  SystemNavigator.pop();
                },
              ),
            ],
          );
        });
  }
//this keep track of the current page to display
  int _selectedIndex =0;
 
  // }
  final List _pages = [
    
  //   //home page-1
     Epass(),
     Busmap(),

  //   //profile page
     ProfilePage(),
  //   //bus tracking page2
     
  ];
  

  @override
  Widget build(BuildContext context) {
    
   
    return WillPopScope(
      onWillPop: () async {
        bool? result = await _onBackPressed();
        if (result == null) {
          result = false;
        }
        return result;
      },
      child: new Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              _onBackPressed();
            },
          ),
        ),
        body:
        
        _pages[_selectedIndex],
        
        
        
        
        
         
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index){
            setState(() {
              _selectedIndex = index;
            });
          }, 
          
          items:[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              
              ),
              
            BottomNavigationBarItem(
              icon: Icon(Icons.bus_alert),
              label: 'Bus'),

              
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile'),
          ]),
      )
    );
  }
}

