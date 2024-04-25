import 'package:flutter/material.dart';
import 'package:poc_application/controller/api/api_service.dart';
import 'package:poc_application/model/ordersData.dart';
import 'package:poc_application/snackbar.dart';
import 'package:poc_application/view/form.dart';
import 'package:poc_application/view/orders_list.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

    List<OrdersData>? orders;
    bool isLoading=true;

void getOrdersList()async{
  List<OrdersData>? ordersList;
  setState(() {
    isLoading=true;
  });


    ordersList=await ApiService.getOrders();

    setState(() {
      orders=ordersList;
      isLoading=false;
    });
  }

  void postOrderData(transactionType,exchangeSegment,productType,orderType,validity,tradingSymbol,securityId,quantity)async{

      final response=await ApiService.postOrder(transactionType, exchangeSegment, productType, orderType, validity, tradingSymbol, securityId, quantity);
     getOrdersList();
         SnackBarModel(
      message: response,
      backgroundColor: Colors.green,
      onActionPressed: () {},
    ).showSnackBar(context);


  }
  @override
  void initState() {
    super.initState();
  getOrdersList();
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold
    (
      appBar: AppBar(
        title: Text('Orders List'),
      ),
      body:  
       Column(
        children: [
        OrdersList(orders: orders,isLoading: isLoading,),

        OrderDataForm(onSubmitClicked: postOrderData),
 
        ],
      )
    );
  }
}
 