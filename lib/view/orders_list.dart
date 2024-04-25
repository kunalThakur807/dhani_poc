import 'package:flutter/material.dart';
import 'package:poc_application/controller/api/api_service.dart';
import 'package:poc_application/model/ordersData.dart';



class OrdersList extends StatelessWidget {
  List<OrdersData>? orders;
  bool isLoading;

     OrdersList({super.key,required this.orders,required this.isLoading});


  @override
  Widget build(BuildContext context) {
   return Flexible(
            child: Container(
              margin: EdgeInsets.fromLTRB(8,0,8,8),
               decoration: BoxDecoration(
              // color: Colors.blue,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(
                color: Colors.black,
                width: .25,
              ),
            ),
              child: 
              
               isLoading?
    Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
          child: CircularProgressIndicator(),
      ),
    )
    : 
              ListView.builder(itemBuilder: (context, index) {
                return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Text("${index+1}",style: TextStyle(
                        color: Colors.white
                      ),),
              
                    ),
                    title: Text(orders![index].tradingSymbol),
                    trailing: Text(orders![index].orderStatus),
                    subtitle: Text(orders![index].orderId),
              
                );
              },
              itemCount: orders!.length,
              ),
            ),
          );
  }
}
 