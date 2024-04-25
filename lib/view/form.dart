import 'package:flutter/material.dart';
import 'package:poc_application/snackbar.dart';

class OrderDataForm extends StatefulWidget {
  final void Function(String,String,String,String,String,String,String,String) onSubmitClicked;

    OrderDataForm({super.key,required this.onSubmitClicked});

  @override
  State<OrderDataForm> createState() => _OrderDataFormState();
}

class _OrderDataFormState extends State<OrderDataForm> {

    List<String> selectTransactionType = ['BUY', 'SELL'];
  String? selectedTransactionType = 'BUY';
   List<String> selectExchangeSegment = ['NSE_EQ', 'NSE_FNO','NSE_CURRENCY', 'BSE_EQ','BSE_FNO', 'BSE_CURRENCY','MCX_COMM'];
  String? selectedExchangeSegment = 'NSE_EQ';

   List<String> selectProductType = [
      "CNC",
      "INTRADAY",
      "MARGIN",
      "MTF",
      "CO",
      "BO"];
  String? selectedProductType = 'CNC';
  
   List<String> selectOrderType = [	"LIMIT",
"MARKET",
"STOP_LOSS",
"STOP_LOSS_MARKET"];
  String? selectedOrderType = 'LIMIT';
  List<String> selectValidity =  [
    "DAY",
"IOC",
"GTC",
"GTD"
  ];
  String? selectedValidity = 'DAY';
  TextEditingController? securityIDController,tradingSymbolController;
 int  quantity=0;
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    securityIDController=TextEditingController();
    tradingSymbolController=TextEditingController();
  }
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    return   Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(16),
       decoration: BoxDecoration(
              // color: Colors.blue,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(
                color: Colors.black,
                width: .25,
              ),
            ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
      
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Transaction Type',style: TextStyle(
                color: Colors.black,
                fontSize: 16
              ),),
              SizedBox(
                height: 4,
              ),
               Container(
                             
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                color: Colors.black,
                width: 0.25,
              ),
                                  ),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: selectedTransactionType,
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectedTransactionType = newValue!;
                                    });
                                  },
                                  items: selectTransactionType.map((String language) {
                                    return DropdownMenuItem<String>(
                                      value: language,
                                      child: Text(language,
                                          style: const TextStyle(fontSize: 14,fontWeight: FontWeight.normal)),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Exchange Segment',style: TextStyle(
                color: Colors.black,
                fontSize: 16
              ),),
              SizedBox(
                height: 4,
              ),
               Container(
                             
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),

                                   border: Border.all(
                color: Colors.black,
                width: 0.25,)
                                  
                                  ),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: selectedExchangeSegment,
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectedExchangeSegment = newValue!;
                                    });
                                  },
                                  items: selectExchangeSegment.map((String language) {
                                    return DropdownMenuItem<String>(
                                      value: language,
                                      child: Text(language,
                                          style: const TextStyle(fontSize: 14,fontWeight: FontWeight.normal)),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
            ],
          ),
          ],),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Product Type',style: TextStyle(
                color: Colors.black,
                fontSize: 16
              ),),
              SizedBox(
                height: 4,
              ),
               Container(
                             
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                color: Colors.black,
                width: 0.25,)
                                  
                                  ),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: selectedProductType,
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectedProductType = newValue!;
                                    });
                                  },
                                  items: selectProductType.map((String language) {
                                    return DropdownMenuItem<String>(
                                      value: language,
                                      child: Text(language,
                                          style: const TextStyle(fontSize: 14,fontWeight: FontWeight.normal)),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Order Type',style: TextStyle(
                color: Colors.black,
                fontSize: 16
              ),),
              SizedBox(
                height: 4,
              ),
               Container(
                             
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                   border: Border.all(
                color: Colors.black,
                width: 0.25,)
                                  
                                  ),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: selectedOrderType,
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectedOrderType = newValue!;
                                    });
                                  },
                                  items: selectOrderType.map((String language) {
                                    return DropdownMenuItem<String>(
                                      value: language,
                                      child: Text(language,
                                          style: const TextStyle(fontSize: 14,fontWeight: FontWeight.normal)),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
            ],
          ),
          ],),
          
           SizedBox(
            height: 12,
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Row(
            children: [
              Text('Validity : ',style: TextStyle(
                color: Colors.black,
                fontSize: 16
              ),),
              SizedBox(
                width: 4,
              ),
               Container(
                             
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                color: Colors.black,
                width: 0.25,)
                                 
                                 ),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: selectedValidity,
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectedValidity = newValue!;
                                    });
                                  },
                                  items: selectValidity.map((String language) {
                                    return DropdownMenuItem<String>(
                                      value: language,
                                      child: Text(language,
                                          style: const TextStyle(fontSize: 14,fontWeight: FontWeight.normal)),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
            ],
          ),
              Row(
            children: [
              Text('Quantity : ',style: TextStyle(
                color: Colors.black,
                fontSize: 16
              ),),

              SizedBox(
                height: 4,
              ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(
                              color: Colors.black,
                              icon: Icon(Icons.remove),
                              onPressed: () {
                                if(quantity>0)
                                {
                                  setState(() {
                                   quantity--;
                                 });
      
                                }
                                
                              },
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text('${quantity}'),
                             SizedBox(
                              width: 2,
                            ),
                            IconButton(
                              color: Colors.black,
      
                              icon: Icon(Icons.add),
                              onPressed: () {
                                 setState(() {
                                   quantity++;
                                 });
                              },
                            ),
                          ],
                        ),
            ],
          ),
         
          ],),
           
            SizedBox(
            height: 12,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Container(
                width: width/2-25,
        margin: EdgeInsets.fromLTRB(0,8,0,8),
      
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), // Adjust this value for roundness
          color: Colors.grey[200], // Background color of the input box
        ),
        child: TextField(
          controller: tradingSymbolController,
          decoration: InputDecoration(
            hintText: 'Trading Symbol',
            contentPadding: EdgeInsets.all(15.0), // Adjust padding as needed
            border: InputBorder.none, // Hide the default border
          ),
        ),
      ),

        Container(
                              width: width/2-50,


        margin: EdgeInsets.fromLTRB(0,8,0,16),
      
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), // Adjust this value for roundness
          color: Colors.grey[200], // Background color of the input box
        ),
        child: TextField(
          controller: securityIDController,
          decoration: InputDecoration(
            hintText: 'Security ID',
            contentPadding: EdgeInsets.all(15.0), // Adjust padding as needed
            border: InputBorder.none, // Hide the default border
          ),
        ),
      ),
         
          ],),

           ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.blue, 
      
      ),
      onPressed: ()=>
        widget.onSubmitClicked(selectedTransactionType!,selectedExchangeSegment!,selectedProductType!,selectedOrderType!,selectedValidity!,tradingSymbolController!.text,securityIDController!.text,quantity.toString())
      ,
      child: Text('Submit',style: TextStyle(
        color: Colors.white
      ),),
    )
          
     
                         
        ],
      ),
    );
  }
}