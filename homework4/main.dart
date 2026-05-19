import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Layout Demo', home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String selectedBrand = "Apple";

  List<String> brands = ["Apple", "Samsung", "Huawei"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product Listing')),
      body: Column(
        children: [
          DropdownButton<String>(
            value: selectedBrand,
            items: brands.map((String brand) {
              return DropdownMenuItem<String>(value: brand, child: Text(brand));
            }).toList(),
            onChanged: (value) {
              setState(() {
                selectedBrand = value!;
              });
            },
          ),

          Expanded(
            child: ListView(
              children: <Widget>[
                ProductBox(
                  name: "Ali",
                  description: "طالب تقنية",
                  brand: selectedBrand,
                  image: "person.png",
                ),
                ProductBox(
                  name: "Sara",
                  description: "طالبة برمجة",
                  brand: selectedBrand,
                  image: "person.png",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  final String name;
  final String description;
  final String brand;
  final String image;

  ProductBox({
    required this.name,
    required this.description,
    required this.brand,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          children: <Widget>[
            Image.asset("assets/$image", width: 100),

            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(description + " - الماركة: " + brand),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
