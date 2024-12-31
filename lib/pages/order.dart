import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/widget/widget_support.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 60.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Material(
              elevation: 5.0,
              child: Container(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Center(
                  child: Text(
                    "Food Cart",
                    style: Appwidget.headlineTextFieldStyle(),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0,),
            Container(
              margin: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Material(
              elevation: 10.0,
              borderRadius: BorderRadius.circular(10),
              child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(10),
              child: Row(
                
                children: [
                Container(
                  height: 70,
                  width: 30,
                  decoration: BoxDecoration(
                    border: Border.all(), 
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: const Center(child: Text("2"),),
                ),
                const SizedBox(width: 20.0),
                ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Image.asset("images/fried-chicken-with-grilled-potatoes-eggplants-tomatoes-peppers.jpg",
                    height: 90, width: 90, fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 20.0,),
                Column(
                  children: [
                    Text("Pizza", style: Appwidget.semiBoldTextFieldStyle(),),
                    Text("\$40", style: Appwidget.semiBoldTextFieldStyle(),)
                  ],
                )
              ],),
            ),
            ),
            ),
            Spacer(),
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total Price", style: Appwidget.boldTextFieldStyle(),),
                Text("\$50", style: Appwidget.semiBoldTextFieldStyle(),)
              ],
            ),
            ),
            const SizedBox(height: 20.0,),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10)),
              margin: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: 
                const Center(
                  child: Text("CheckOut", 
                  style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                )
            ),
            const SizedBox(height: 20.0,),
            
          ],
        ),

      ),
    );
  }
}
