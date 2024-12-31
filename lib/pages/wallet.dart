import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/widget/widget_support.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 30), // Added 'const' for optimization
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Material(
              elevation: 2.0,
              child: Container(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Column(
                  children: [
                    const Center(
                      child: Text(
                        'Wallet',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 30.0), // Corrected invalid const syntax
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(color: Color(0xfff2f2f2)),
                      child: Row(
                        children: [
                          Image.asset(
                            "images/fried-chicken-with-grilled-potatoes-eggplants-tomatoes-peppers.jpg",
                            height: 60,
                            width: 60,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(width: 3.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Your Wallet",
                                style: Appwidget.lightTextFieldStyle(),
                              ),
                              const SizedBox(height: 5.0),
                              Text(
                                "\$100",
                                style: Appwidget.boldTextFieldStyle(),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        "Add Money",
                        style: Appwidget.boldTextFieldStyle(),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xfff2f2f2)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            "\$100",
                            style: Appwidget.boldTextFieldStyle(),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xfff2f2f2)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            "\$500",
                            style: Appwidget.boldTextFieldStyle(),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xfff2f2f2)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            "\$1000",
                            style: Appwidget.boldTextFieldStyle(),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xfff2f2f2)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            "\$2000",
                            style: Appwidget.boldTextFieldStyle(),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 50.0),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20.0),
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 9, 117, 27),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Center(
                        child: Text(
                          "Add Money",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}