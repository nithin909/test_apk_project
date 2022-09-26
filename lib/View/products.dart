import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/controller/datacontroller.dart';

class Products extends StatelessWidget{

  final controller = Get.put(Datacontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
      ),
      body: Obx(() {
        return GridView.builder(
          itemCount: controller.datamodels.length ,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (context, index){
            final data = controller.datamodels[index];
            return Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade100, //New
                    blurRadius: 2.0,
                  )
                ],
              ),
              child: Column(
                children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                width: 100,
                decoration: new BoxDecoration(
                image: new DecorationImage(
                image: new NetworkImage(
                data.image.toString()),
                  fit: BoxFit.cover))),
              ),
                  Text('Product ID: ${data.id.toString()}'),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text(data.title.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),)),
                  ),
                  Text(data.price.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18))
                ],
              ),
            );
            }
        );
      }),
    );
  }

}