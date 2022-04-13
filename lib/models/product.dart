import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Color(0xFF3D436F),
        body: Column(
      children: [
        ListTile(
          leading: Icon(
            Icons.arrow_back,
            color: Color(0xFF346BA1),
          ),
          title: Center(
            child: Text(
              "Product Detail",
              style: TextStyle(color: Color(0xFF346BA1), fontSize: 20),
            ),
          ),
        ),
        SizedBox(
          height: 10,
          width: double.infinity,
        ),
        Container(
          width: double.infinity,
          height: 510,
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage("sofa.jpg"), fit: BoxFit.cover),
          ),
        ),
        Container(
          height: 280,
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "Flex L-Shaped Living Room",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ListTile(
                title: Text(
                  "Monthly Rent",
                  style: TextStyle(fontSize: 19),
                ),
                subtitle: Text("Including delivery and setup",
                    style: TextStyle(fontSize: 15)),
                trailing: Text("Rs 830s"),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text(
                  "Delivery in 72 ours. Minimum rental tenure is 12 months",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  color: Color(0xFF346BA1),
                  width: 100,
                  height: 40,
                  child: Center(
                    child: Text(
                      "ADD TO CART",
                      style: TextStyle(
                          // backgroundColor: Color(0xFF3D436F),
                          color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
