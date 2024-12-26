import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/widget/widget_support.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a = 1;

  @override
  Widget build(BuildContext context) {
    // MediaQuery data for easier access to screen dimensions
    final screenWidth = MediaQuery.of(context).size.width; // Responsive width
    final screenHeight = MediaQuery.of(context).size.height; // Responsive height

    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.black,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Back",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ),
            // Responsive Image: Uses screenWidth and screenHeight
            Image.asset(
              "images/beyti-wrapped-kebab-topped-with-tomato-sauce-served-with-tomato-pepper-yoghurt.jpg",
              width: screenWidth, // Dynamic width based on screen size
              height: screenHeight / 2.5, // Proportional height
              fit: BoxFit.cover, // Changed to cover for better scaling
            ),
            const SizedBox(height: 20),

            // Row with dynamic spacing and flexible layout
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Flexible Column for long texts to prevent overflow
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Fried Chicken",
                        style: Appwidget.headlineTextFieldStyle(),
                      ),
                      Text(
                        "Our customer satisfaction is our priority",
                        style: Appwidget.semiBoldTextFieldStyle(),
                        overflow: TextOverflow.ellipsis, // Prevents overflow
                        maxLines: 1, // Limit text to one line
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                // Quantity control buttons with spacing and responsiveness
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (a > 1) {
                          --a;
                        }
                        setState(() {});
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Text(
                      a.toString(),
                      style: Appwidget.boldTextFieldStyle(),
                    ),
                    const SizedBox(width: 10.0),
                    GestureDetector(
                      onTap: () {
                        ++a;
                        setState(() {});
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20.0),

            // Wrapping text to fit smaller screens
            Text(
              "If you want to use the CurvedNavigationBar component, you need to ensure that the required package is added to your project. Here's how you can fix and use CurvedNavigationBar",
              style: Appwidget.lightTextFieldStyle(),
              maxLines: 3, // Restricts the number of lines
              overflow: TextOverflow.ellipsis, // Adds ellipsis for overflow
            ),
            const SizedBox(height: 15.0),

            // Responsive Row for Delivery Time
            Row(
              children: [
                Text(
                  "Delivery Time",
                  style: Appwidget.currentBoldTextFieldStyle(),
                ),
                const SizedBox(width: 10.0),
                const Icon(
                  Icons.alarm,
                  color: Colors.black,
                ),
                const SizedBox(width: 10.0),
                Text(
                  "30 min",
                  style: Appwidget.currentBoldTextFieldStyle(),
                ),
              ],
            ),
            const Spacer(),

            // Footer Section with Responsive Layout
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Flexible column for total price information
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total Price",
                        style: Appwidget.semiBoldTextFieldStyle(),
                      ),
                      Text(
                        "\$25",
                        style: Appwidget.boldTextFieldStyle(),
                      ),
                    ],
                  ),
                  // Add to cart button with proportional width
                  Flexible(
                    child: Container(
                      width: screenWidth / 2, // Scales with screen width
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            "Add to cart",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          const SizedBox(width: 30.0),
                          Container(
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 10.0),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
