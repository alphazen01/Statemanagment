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
  DateTime ?_dateTime;
  TimeOfDay?_timeOfDay;
 final themeController=Get.put(ThemeController());

final logicController=Get.put(LogicController());


getDate()async{
  DateTime? date = await showDatePicker(
    context: context, 
    initialDate: DateTime(DateTime.now().year ), 
    firstDate:  DateTime(DateTime.now().year -30), 
    lastDate: DateTime(DateTime.now().year +30), );
    setState(() {
      _dateTime=date;
    });
}
getTime()async{
  TimeOfDay? time=await showTimePicker(
    context: context, 
    initialTime: TimeOfDay.now());
    setState(() {
      _timeOfDay=time;
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
            // backgroundColor: Colors.red,
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
              _dateTime==null?Text("chose date"):
              Text("Date: ${_dateTime?.year}/${_dateTime?.month}/${_dateTime?.day}",
              style: TextStyle(fontSize: 40),
              ),
              
             ElevatedButton(
               onPressed: (){
                 getDate();
               }, 
               child: Text("Date")
               ),
               _timeOfDay==null?Text("chose time"):
              Text("Time: ${_timeOfDay?.hour}  : ${_timeOfDay?.minute}",
              style: TextStyle(fontSize: 40),
              ),
              
                 ElevatedButton(
               onPressed: (){
                 getTime();
               }, 
               child: Text("Time")
               ),
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