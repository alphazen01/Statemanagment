import 'package:demo/screen_one.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count=0;
  increaseCount(){
    setState(() {
      count++;
    });
    
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer:  Drawer(
          child: Column(
            children: [
              ListTile(
                onTap: (){
                 Route route=MaterialPageRoute(
                   builder: (ctx)=>ScreenOne()
                  );
                  Navigator.push(context, route);
                },
                leading: Text("Count Number:")
               
                
              )
            ],
          ),
        ), 
          appBar: AppBar(
            title: Text("Statemanagment"),
          ),
       body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             
              Text("Count Number:$count")
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
           increaseCount();
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}