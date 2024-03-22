import 'package:flutter/material.dart';
import 'package:mecha/screens/main_page.dart';

class SelectCars extends StatefulWidget {
  @override
  State<SelectCars> createState() => _SelectCarsState();
}

class _SelectCarsState extends State<SelectCars> {
  List<String> imageUrls = [
    'https://logosandtypes.com/wp-content/uploads/2020/10/Toyota-old.png',
    'https://imgs.search.brave.com/LsElmEq-wb9_FSlszpCm9D5eCw_VaQrUB_h5kaBQVxc/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9jZG4u/bG9nb2pveS5jb20v/d3AtY29udGVudC91/cGxvYWRzLzIwMTgv/MDUvMzAxNTAzMzcv/NjIyLTc2OHg1OTEu/cG5n',
    'https://imgs.search.brave.com/q3GDsg910clBXLukfYfM5bE1snqjL6TFJAUadreYuNA/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9mYWJy/aWticmFuZHMuY29t/L3dwLWNvbnRlbnQv/dXBsb2Fkcy9GYW1v/dXMtY2FyLWxvZ29z/LTMwLTEtODY0eDU0/MC5wbmc',
    'https://logosandtypes.com/wp-content/uploads/2020/10/Toyota-old.png',
    'https://imgs.search.brave.com/LsElmEq-wb9_FSlszpCm9D5eCw_VaQrUB_h5kaBQVxc/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9jZG4u/bG9nb2pveS5jb20v/d3AtY29udGVudC91/cGxvYWRzLzIwMTgv/MDUvMzAxNTAzMzcv/NjIyLTc2OHg1OTEu/cG5n',
    'https://imgs.search.brave.com/q3GDsg910clBXLukfYfM5bE1snqjL6TFJAUadreYuNA/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9mYWJy/aWticmFuZHMuY29t/L3dwLWNvbnRlbnQv/dXBsb2Fkcy9GYW1v/dXMtY2FyLWxvZ29z/LTMwLTEtODY0eDU0/MC5wbmc',
    'https://logosandtypes.com/wp-content/uploads/2020/10/Toyota-old.png',
    'https://imgs.search.brave.com/LsElmEq-wb9_FSlszpCm9D5eCw_VaQrUB_h5kaBQVxc/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9jZG4u/bG9nb2pveS5jb20v/d3AtY29udGVudC91/cGxvYWRzLzIwMTgv/MDUvMzAxNTAzMzcv/NjIyLTc2OHg1OTEu/cG5n',
    'https://imgs.search.brave.com/q3GDsg910clBXLukfYfM5bE1snqjL6TFJAUadreYuNA/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9mYWJy/aWticmFuZHMuY29t/L3dwLWNvbnRlbnQv/dXBsb2Fkcy9GYW1v/dXMtY2FyLWxvZ29z/LTMwLTEtODY0eDU0/MC5wbmc',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          size: 18,
        ),
        title: Text(
          'Select Your Car',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        bottom: PreferredSize(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
            child: SizedBox(
              height: 29,
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    hintText: 'Search By Car Model Or Brand',
                    hintStyle:
                        TextStyle(fontSize: 15.0, color: Colors.redAccent),
                    prefixIcon: Icon(Icons.car_rental, color: Colors.red),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.zero),
              ),
            ),
          ),
          preferredSize: Size.fromHeight(25),
        ),
      ),
      body: GridView.builder(
        itemCount: imageUrls.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 30.0,
          mainAxisSpacing: 30.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => MainPage()));
            },
            child: Image.network(
              imageUrls[index],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
