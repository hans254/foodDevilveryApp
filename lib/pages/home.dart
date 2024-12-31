import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/widget/widget_support.dart';
import 'package:fooddeliveryapp/pages/details.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool icecream=false, pizza=false, salad=false, burger=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50.0, left: 10.0,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // Correct usage
              children: [
                Text(
                  "Hello Hansel,",
                  style: Appwidget.boldTextFieldStyle(), // Fixed method call
                ),
                Container(
                  margin: const EdgeInsets.only(right: 20.0),
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(Icons.shopping_cart, color: Colors.white,),
                )
              ],
            ),
            const SizedBox(height: 20.0),
            Text(
              "Delicious Food",
              style: Appwidget.headlineTextFieldStyle(), // Fixed method call
            ),
            Text(
              "Discover and Get Great Food",
              style: Appwidget.lightTextFieldStyle(), // Fixed method call
            ),
            
            Container(
              margin: const EdgeInsets.only(right: 20.0),
              
              child: showItem(),
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 30.0),
            SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => const Details()),
                    );
                  },
                  child: Container(
                  margin: const EdgeInsets.all(5),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: const EdgeInsets.all(14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "images/beyti-wrapped-kebab-topped-with-tomato-sauce-served-with-tomato-pepper-yoghurt.jpg",
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            "Fried Chicken",
                            style: Appwidget.semiBoldTextFieldStyle(),
                          ),
                          const SizedBox(height: 5.0),
                          Text(
                            "Enjoy the Meal",
                            style: Appwidget.lightTextFieldStyle(),
                          ),
                          const SizedBox(height: 5.0),
                          Text(
                            "\$25",
                            style: Appwidget.semiBoldTextFieldStyle(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                ),

                const SizedBox(width: 20.0,),
                Container(
                  margin: const EdgeInsets.all(5),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: const EdgeInsets.all(14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "images/beyti-wrapped-kebab-topped-with-tomato-sauce-served-with-tomato-pepper-yoghurt.jpg",
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            "Fried Chicken",
                            style: Appwidget.semiBoldTextFieldStyle(),
                          ),
                          const SizedBox(height: 5.0),
                          Text(
                            "Enjoy the Meal",
                            style: Appwidget.lightTextFieldStyle(),
                          ),
                          const SizedBox(height: 5.0),
                          Text(
                            "\$25",
                            style: Appwidget.semiBoldTextFieldStyle(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30.0,),
          
          Container(
            margin: const EdgeInsets.only(right: 15.0),
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                padding: const EdgeInsets.all(5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "images/chicken-skewers-with-slices-sweet-peppers-dill.jpg",
                      height: 120,
                      width: 120,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 20.0),
                    Column(children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2, // Set width here
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start
                          children: [
                            Text(
                              "Delicious Sea Food",
                              style: Appwidget.semiBoldTextFieldStyle(),
                            ),
                          ],
                        ),
                      ),
                        const SizedBox(height: 5.0,),
                      Container(
                        width: MediaQuery.of(context).size.width / 2, // Set width here
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start
                          children: [
                            Text(
                              "Your happiness is our priority",
                              style: Appwidget.lightTextFieldStyle(),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 5.0,),
                      Container(
                        width: MediaQuery.of(context).size.width / 2, // Set width here
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start
                          children: [
                            Text(
                              "\$30",
                              style: Appwidget.semiBoldTextFieldStyle(),
                            ),
                          ],
                        ),
                      ),
                  ],)
                  
                ],
              ),
            ),
            ),
          )

            
          ],
        ),
      ),
    );
  }

  Widget showItem(){
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // Correct placement
              children: [
                GestureDetector(
                  onTap: (){
                    icecream=true;
                    pizza=false;
                    salad=false;
                    burger=false;
                    setState(() {
                      
                    });
                  },
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      decoration: BoxDecoration(color: icecream ? Colors.black: Colors.white, borderRadius: BorderRadius.circular(8)),
                      padding: const EdgeInsets.all(8),
                      child: Image.asset(
                        "images/beyti-wrapped-kebab-topped-with-tomato-sauce-served-with-tomato-pepper-yoghurt.jpg",
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                        color: icecream ? Colors.white: Colors.black,//image styling
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    icecream=false;
                    pizza=true;
                    salad=false;
                    burger=false;
                    setState(() {
                      
                    });
                  },
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      decoration: BoxDecoration(color: pizza ? Colors.black: Colors.white, borderRadius: BorderRadius.circular(8)),
                      padding: const EdgeInsets.all(8),
                      child: Image.asset(
                        "images/chicken-skewers-with-slices-sweet-peppers-dill.jpg",
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                        color: pizza ? Colors.white: Colors.black,//image styling
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    icecream=false;
                    pizza=false;
                    salad=true;
                    burger=false;
                    setState(() {
                      
                    });
                  },
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      decoration: BoxDecoration(color: salad ? Colors.black: Colors.white, borderRadius: BorderRadius.circular(8)),
                      padding: const EdgeInsets.all(8),
                      child: Image.asset(
                        "images/fried-chicken-with-grilled-potatoes-eggplants-tomatoes-peppers.jpg",
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                        color: salad ? Colors.white: Colors.black,//image styling
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    icecream=false;
                    pizza=false;
                    salad=false;
                    burger=true;
                    setState(() {
                      
                    });
                  },
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      decoration: BoxDecoration(color: burger ? Colors.black: Colors.white, borderRadius: BorderRadius.circular(8)),
                      padding: const EdgeInsets.all(8),
                      child: Image.asset(
                        "images/side-view-pita-with-meat-vegetables-wooden-board.jpg",
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                        color: burger ? Colors.white: Colors.black,//image styling
                      ),
                    ),
                  ),
                ),
              ],
            );
  }
}
