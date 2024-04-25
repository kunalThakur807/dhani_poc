import 'dart:convert';

import 'package:http/http.dart';
import 'package:poc_application/controller/login_session/session_manager.dart';
import 'package:poc_application/model/ordersData.dart';


class ApiService{



  static String  url="https://api.dhan.co/orders";

   static Future<List<OrdersData>> getOrders() async
  {
    String accessTokenKey=await SessionManager.getAccessToken();

       final headers = {
    'Accept': 'application/json',
    'access-token': accessTokenKey,
  };

  final uri = Uri.parse(url);

  final res = await get(uri, headers: headers);
  final status = res.statusCode;
  if (status != 200) throw Exception('http.get error: statusCode= $status');
    final ordersData = OrdersDataFromJson(res.body);
    
    return ordersData;
  }
 


static Future<String> postOrder(transactionType,exchangeSegment,productType,orderType,validity,tradingSymbol,securityId,quantity) async{
    String accessTokenKey=await SessionManager.getAccessToken();

    final headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'access-token': accessTokenKey,
  };

  final data = '{\n        "transactionType": "$transactionType",\n        "exchangeSegment": "$exchangeSegment",\n        "productType": "$productType",\n        "orderType": "$orderType",\n        "validity": "$validity",\n        "tradingSymbol": "$tradingSymbol",\n        "securityId": "$securityId",\n        "quantity": $quantity\n    }';

  final uri = Uri.parse(url);

  final res = await post(uri, headers: headers, body: data);
  // final status = res.statusCode;
  
  // if (status != 200) throw Exception('http.post error: statusCode= $status');
  
  return res.body;
}
}