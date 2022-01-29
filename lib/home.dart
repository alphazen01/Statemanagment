import 'package:demo/logic_controller.dart';
import 'package:demo/screen_one.dart';
import 'package:demo/theme_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';


class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 final themeController=Get.put(ThemeController());

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
            backgroundColor: Colors.red,
            title: Text("Statemanagment"),
            actions: [
             ObxValue(
               (data)=> Switch(
                 value: themeController.isDark.value, 
                 onChanged: (Value){
                   themeController.isDark.value=Value;
                   themeController.changeAppTheme(themeController.isDark.value);
                 },
                ),
                false.obs
             )
             
            ],
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