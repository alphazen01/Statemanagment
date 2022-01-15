import 'package:demo/logic_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenOne extends StatelessWidget {
final logicController=Get.put(LogicController());

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen One"),
      ),
      body: Center(
        child: Column(
          children: [
            Obx(
              ()=> Text("Count Number:${logicController.count}",
               style: TextStyle(
                    fontSize: 24
                  ),),
            ),
            Obx(
              () =>Text("Count Double Number:${logicController.countDouble}",
               style: TextStyle(
                    fontSize: 24
                  ),),
            ),
            ElevatedButton(
              onPressed: (){
                logicController.increment();
              }, 
              child: Text("Click")
            )
          ],
        ),
      ),
    );
  }
}