import 'dart:convert';

List<OrdersData> OrdersDataFromJson(String str) => List<OrdersData>.from(json.decode(str).map((x) => OrdersData.fromJson(x)));


class OrdersData {
    String dhanClientId;
    String orderId;
    String exchangeOrderId;
    String correlationId;
    String orderStatus;
    String transactionType;
    String exchangeSegment;
    String productType;
    String orderType;
    String validity;
    String tradingSymbol;
    String securityId;
    int quantity;
    int disclosedQuantity;
    double price;
    double triggerPrice;
    bool afterMarketOrder;
    double boProfitValue;
    double boStopLossValue;
    String legName;
    String createTime;
    String updateTime;
    String exchangeTime;
    String drvExpiryDate;
    String drvOptionType;
    double drvStrikePrice;
    String omsErrorCode;
    String omsErrorDescription;
    int filledQty;
    String algoId;

    OrdersData({
        required this.dhanClientId,
        required this.orderId,
        required this.exchangeOrderId,
        required this.correlationId,
        required this.orderStatus,
        required this.transactionType,
        required this.exchangeSegment,
        required this.productType,
        required this.orderType,
        required this.validity,
        required this.tradingSymbol,
        required this.securityId,
        required this.quantity,
        required this.disclosedQuantity,
        required this.price,
        required this.triggerPrice,
        required this.afterMarketOrder,
        required this.boProfitValue,
        required this.boStopLossValue,
        required this.legName,
        required this.createTime,
        required this.updateTime,
        required this.exchangeTime,
        required this.drvExpiryDate,
        required this.drvOptionType,
        required this.drvStrikePrice,
        required this.omsErrorCode,
        required this.omsErrorDescription,
        required this.filledQty,
        required this.algoId,
    });

    factory OrdersData.fromJson(Map<String, dynamic> json) => OrdersData(
        dhanClientId: json["dhanClientId"],
        orderId: json["orderId"],
        exchangeOrderId: json["exchangeOrderId"],
        correlationId: json["correlationId"],
        orderStatus: json["orderStatus"],
        transactionType: json["transactionType"],
        exchangeSegment: json["exchangeSegment"],
        productType: json["productType"],
        orderType: json["orderType"],
        validity: json["validity"],
        tradingSymbol: json["tradingSymbol"],
        securityId: json["securityId"],
        quantity: json["quantity"],
        disclosedQuantity: json["disclosedQuantity"],
        price: json["price"],
        triggerPrice: json["triggerPrice"],
        afterMarketOrder: json["afterMarketOrder"],
        boProfitValue: json["boProfitValue"],
        boStopLossValue: json["boStopLossValue"],
        legName: json["legName"],
        createTime: json["createTime"],
        updateTime: json["updateTime"],
        exchangeTime: json["exchangeTime"],
        drvExpiryDate: json["drvExpiryDate"],
        drvOptionType: json["drvOptionType"],
        drvStrikePrice: json["drvStrikePrice"],
        omsErrorCode: json["omsErrorCode"],
        omsErrorDescription: json["omsErrorDescription"],
        filledQty: json["filled_qty"],
        algoId: json["algoId"],
    );

     
}
