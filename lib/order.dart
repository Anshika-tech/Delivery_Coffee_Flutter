import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/Payment.dart';
import 'package:grouped_buttons/grouped_buttons.dart';


class Order extends StatefulWidget {
  const Order({Key ?key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  DateTime today = DateTime.now();
  TimeOfDay todayTime = TimeOfDay.now();
  var _initialValue = 0.0;
  String Coffee = "";
  String Size = "";
  var total_price;
  var cost;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Text('What would you like to have?',
                style: TextStyle(
                  fontSize: 20,
                )),
            CheckboxGroup(
              labels: [
                "Java chip Frappuccino",
                "Espresso",
                "Flat White",
                "Signature Hot Chocolate",
                "Cappuccino",
                "Caffe Americano",
                "Cold Brew Black",
                "Caramel Mocha",
                "Vanilla Latte",
                "Strawberry Frappuccino",

              ],
              
              onSelected: (List<String> selected) {
                 print(selected);
                
                cost=selected.length*260;

               setState(() {
                  Coffee = selected.toString();
                });
              },
            ),
            const Text('Select Size',
                style: TextStyle(
                  fontSize: 20,
                )),
            RadioButtonGroup(
              labels: [
                "Tall",
                "Grande",
                "Venti",
              ],
              onSelected: (String selected) {
                // print(selected);
             
                setState(() {
                  Size = selected;
                });

                 if(selected=='Tall'){
                  cost+=15;
                }
                  if(selected=='Grande'){
                  cost+=35;
                }
                  if(selected=='Venti'){
                    cost+=55;
                }
                
              },
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Text(' Quantity: ',
                      style: TextStyle(
                        fontSize: 20,
                      )),
                  Expanded(child: Slider(
                    value: _initialValue,
                    onChanged: (newQty) {
                      setState(() {
                        _initialValue = newQty ;
                      });
                      total_price=cost*_initialValue;
                      // ignore: avoid_print
                       print('Quantity: $_initialValue');
                    },
                    min: 0,
                    max: 10,
                    divisions: 10,
                    label: '$_initialValue',
                     
                  )),
                  
                ],
              ),
            ),
          
           
              SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                
                  Text('Select Delivery Date: ',
                      style: TextStyle(
                        fontSize: 22,
                      )),
                  IconButton(
                      onPressed: () {
                        selectDate(context);
                      },
                      icon: const Icon(Icons.date_range)),
                  Text('${today.day}-${today.month}-${today.year}',
                      style: TextStyle(
                          color: Color.fromARGB(255, 129, 13, 120),
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                  
                ],
              
              ),
            
        ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Text('Select Delivery Time: ',
                      style: TextStyle(
                        fontSize: 22,
                      )),
                  IconButton(
                      onPressed: () {
                        selectTime(context);
                      },
                      icon: Icon(Icons.access_time)),
                  Text(
                    '${todayTime.hour}:${todayTime.minute} ',
                    style: TextStyle(
                        color: Color.fromARGB(255, 131, 11, 115),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  showPreview(context);
                },
                child: Text(
                  "CHECK ORDER",style: TextStyle(fontSize: 22,color:Colors.black),
                ),
                 style:ElevatedButton.styleFrom(primary:Colors.orangeAccent)
                )
          ],
        ),
      ),
    );
  }

  void selectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: today,
        firstDate: DateTime(2000),
        lastDate: DateTime(2025));

    // print(pickedDate);
    if (pickedDate != null && pickedDate != today) {
      setState(() {
        today = pickedDate;
      });
    }
  }

  void selectTime(BuildContext context) async {
    TimeOfDay? pickedTime =
        await showTimePicker(context: context, initialTime: todayTime);

    setState(() {
      todayTime = pickedTime!;
    });
  }

  void showPreview(BuildContext context) {
    var alertDialog = CupertinoAlertDialog(
      title: Text(
        'Order Status',
        style: TextStyle(
            color: Colors.deepOrange,
            fontWeight: FontWeight.bold,
            fontSize: 28),
      ),
      content: Text(
          'Drink: $Coffee \n Size: $Size\n  Quantity: $_initialValue\n Total Amount: $total_price' ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Payment_mode();

          }));
                },
                child: Text("Pay")
            ),
                 
                
            SizedBox(
              width: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Change Order")),   
                
          ],
        )
      ],
    );

    showDialog(
        context: context,
        builder: (context) {
          return alertDialog;
        });
  }
}