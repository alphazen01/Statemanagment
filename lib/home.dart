import 'package:demo/logic_controller.dart';
import 'package:demo/screen_one.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeScreen extends StatelessWidget {
  
final logicController=Get.put(LogicController());
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer:  Drawer(
          child: Column(
            children: [
              ListTile(
                onTap: (){
                  Get.to(ScreenOne());
                //  Route route=MaterialPageRoute(
                //    builder: (ctx)=>ScreenOne()
                //   );
                //   Navigator.push(context, route);
                },
                leading: Obx(
                  ()=> Text("Count Number:${logicController.count}",
                  style: TextStyle(
                    fontSize: 24
                  ),),
                ),
                
               
                
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
             
              Obx(
                ()=> Text("Count Number:${logicController.count}",
                 style: TextStyle(
                    fontSize: 24
                  ),),
              ),
              Obx(
                  ()=> Text("Count Double Number:${logicController.countDouble}",
                  style: TextStyle(
                    fontSize: 24
                  ),),
                )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
           logicController.increaseCount();
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}