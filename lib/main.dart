import 'package:flutter/material.dart';
 
void main() {
  runApp(MyApp());
}
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 225, 215, 128),
        appBar: AppBar(
          title: const Text('CLARDE & WABINA'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,  // Distribute space evenlyc
            children: <Widget>[
              SizedBox(
              width:400.0,  // Set the desired width for the card
              height: 450,
              child: Card(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Image.network(
                      'https://th.bing.com/th/id/OIP.boD9jM_3sXhpulA3zqnTAgHaE8?rs=1&pid=ImgDetMain',  // Replace with a valid image URL
                      height: 150.0,
                      fit: BoxFit.cover,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Expanded(
                          child: ListTile(
                            title: Text(
                              'Avocado Sandwich',
                              style: TextStyle(
                                fontWeight: FontWeight.bold, // Make the text bold
                                fontSize: 18.0, // Set the font size to your desired value
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 30.0, right: 20.0), // Set the bottom margin here
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white, // Border color
                              width: 0.5, // Border width
                            ),
                            color: Colors.white, // Background color of the circle
                          ),
                          child: CircleAvatar(
                            backgroundColor: Colors.white, // Background color of the circle
                            radius: 24.0, // Size of the circle
                            child: IconButton(
                              icon: const Icon(
                                Icons.favorite, // Filled heart icon
                                color: Colors.red, // Icon color
                                size: 24.0, // Icon size
                              ),
                              onPressed: () {
                                // Handle the favorite button press
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Add a row with three buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.green, // Background color of the button
                            minimumSize: const Size(80, 40), // Set width and height here
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0), // Optional: set border radius
                            ),
                          ),
                          onPressed: () {
                            // Handle Button action
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.food_bank, // Use any icon you prefer
                                color: Colors.black, // Icon color
                                size: 16.0, // Adjust the icon size here
                              ),
                              SizedBox(width: 8.0), // Space between icon and text
                              Text(
                                'Avocado',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 12.0, // Set the font size to be smaller
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 8.0),  // Space between buttons
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.brown, // Background color of the button
                            minimumSize: const Size(80, 40), // Set width and height here
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0), // Optional: set border radius
                            ),
                          ),
                          onPressed: () {
                            // Handle Button action
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.food_bank_rounded, // Use any icon you prefer
                                color: Colors.black, // Icon color
                                size: 16.0, // Adjust the icon size here
                              ),
                              SizedBox(width: 8.0), // Space between icon and text
                              Text(
                                'Garlic',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black, // Text color
                                  fontSize: 12.0, // Set the font size to be smaller
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 8.0),  // Space between buttons
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: const Color.fromARGB(255, 213, 204, 122), // Background color of the button
                            minimumSize: const Size(80, 40), // Set width and height here
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0), // Optional: set border radius
                            ),
                          ),
                          onPressed: () {
                            // Handle Button action
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.local_grocery_store, // Use any icon you prefer
                                color: Colors.white, // Icon color
                                size: 16.0, // Adjust the icon size here
                              ),
                              SizedBox(width: 8.0), // Space between icon and text
                              Text(
                                'Sour Bread',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold, 
                                  color: Colors.black, // Make text bold
                                  fontSize: 12.0, // Set the font size to be smaller
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'The top choice among our customers, delicious, healthy and a part of an amazing breakfast!',
                        style: TextStyle(
                          fontWeight: FontWeight.bold, // Make the text bold
                          fontSize: 16.0, // Set the font size here
                        ),
                      ),
                    ),
 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 16.0), // Margin on the left of the Container
                          padding: const EdgeInsets.all(8.0), // Padding inside the Container
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.green, // Border color
                              width: 3.0, // Border width (make it bold by increasing the value)
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: const Text(
                            '\$15', // Your bordered text here
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8.0, height: 10,),
                        Container(
                          margin: const EdgeInsets.only(right: 16.0),
                          child: ElevatedButton(
                            onPressed: () {
                              // Handle add to cart action
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.green, // Button background color
                              minimumSize: const Size(150, 50), // Set width and height here
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0), // Adjust the radius here
                              ),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(width: 8.0), // Space between icon and text
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0), // Adjust horizontal padding as needed
                                  child: Text(
                                    'Add to cart',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold, // Make text bold
                                      color: Colors.black,
                                      fontSize: 18.0, // Adjust font size as needed
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_rounded, // Use any icon you prefer
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        )
 
 
 
                      ],
                    ),
                  ],
                ),
              ),
            ),
              SizedBox(
              width:400.0,  // Set the desired width for the card
              height: 450,
              child: Card(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Image.network(
                      'https://th.bing.com/th/id/R.abb18eea3fe18e97c4d5e3e7aae91e23?rik=9N1y%2fBlx%2f%2bouIA&riu=http%3a%2f%2fwww.pngplay.com%2fwp-content%2fuploads%2f2%2fBurger-Transparent-PNG.png&ehk=drgm8npLkJfZksaTsM6sBwVLjyeuvAIvzzx6Cuf6k5I%3d&risl=&pid=ImgRaw&r=0',  // Replace with a valid image URL
                      height: 150.0,
                      fit: BoxFit.cover,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Expanded(
                          child: ListTile(
                            title: Text(
                              'Avocado Sandwich',
                              style: TextStyle(
                                fontWeight: FontWeight.bold, // Make the text bold
                                fontSize: 18.0, // Set the font size to your desired value
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 30.0, right: 20.0), // Set the bottom margin here
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white, // Border color
                              width: 0.5, // Border width
                            ),
                            color: Colors.white, // Background color of the circle
                          ),
                          child: CircleAvatar(
                            backgroundColor: Colors.white, // Background color of the circle
                            radius: 24.0, // Size of the circle
                            child: IconButton(
                              icon: const Icon(
                                Icons.favorite, // Filled heart icon
                                color: Colors.red, // Icon color
                                size: 24.0, // Icon size
                              ),
                              onPressed: () {
                                // Handle the favorite button press
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Add a row with three buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.green, // Background color of the button
                            minimumSize: const Size(80, 40), // Set width and height here
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0), // Optional: set border radius
                            ),
                          ),
                          onPressed: () {
                            // Handle Button action
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.food_bank, // Use any icon you prefer
                                color: Colors.black, // Icon color
                                size: 16.0, // Adjust the icon size here
                              ),
                              SizedBox(width: 8.0), // Space between icon and text
                              Text(
                                'Avocado',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 12.0, // Set the font size to be smaller
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 8.0),  // Space between buttons
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.brown, // Background color of the button
                            minimumSize: const Size(80, 40), // Set width and height here
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0), // Optional: set border radius
                            ),
                          ),
                          onPressed: () {
                            // Handle Button action
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.food_bank_rounded, // Use any icon you prefer
                                color: Colors.black, // Icon color
                                size: 16.0, // Adjust the icon size here
                              ),
                              SizedBox(width: 8.0), // Space between icon and text
                              Text(
                                'Garlic',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black, // Text color
                                  fontSize: 12.0, // Set the font size to be smaller
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 8.0),  // Space between buttons
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: const Color.fromARGB(255, 213, 204, 122), // Background color of the button
                            minimumSize: const Size(80, 40), // Set width and height here
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0), // Optional: set border radius
                            ),
                          ),
                          onPressed: () {
                            // Handle Button action
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.local_grocery_store, // Use any icon you prefer
                                color: Colors.white, // Icon color
                                size: 16.0, // Adjust the icon size here
                              ),
                              SizedBox(width: 8.0), // Space between icon and text
                              Text(
                                'Sour Bread',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold, 
                                  color: Colors.black, // Make text bold
                                  fontSize: 12.0, // Set the font size to be smaller
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'The top choice among our customers, delicious, healthy and a part of an amazing breakfast!',
                        style: TextStyle(
                          fontWeight: FontWeight.bold, // Make the text bold
                          fontSize: 16.0, // Set the font size here
                        ),
                      ),
                    ),
 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 16.0), // Margin on the left of the Container
                          padding: const EdgeInsets.all(8.0), // Padding inside the Container
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.green, // Border color
                              width: 3.0, // Border width (make it bold by increasing the value)
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: const Text(
                            '\$15', // Your bordered text here
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8.0, height: 10,),
                        Container(
                          margin: const EdgeInsets.only(right: 16.0),
                          child: ElevatedButton(
                            onPressed: () {
                              // Handle add to cart action
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.green, // Button background color
                              minimumSize: const Size(150, 50), // Set width and height here
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0), // Adjust the radius here
                              ),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(width: 8.0), // Space between icon and text
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0), // Adjust horizontal padding as needed
                                  child: Text(
                                    'Add to cart',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold, // Make text bold
                                      color: Colors.black,
                                      fontSize: 18.0, // Adjust font size as needed
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_rounded, // Use any icon you prefer
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        )
 
 
 
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}