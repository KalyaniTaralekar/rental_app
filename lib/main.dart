import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> optns = [
    "Pro",
    "TakeAway",
    "Great Offers",
    "Rating 4.0+",
    "New Arrival",
    "Max Safety",
    "Fastest Delivery"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            header(),
            spacing(),
            bannerA(),
            spacing(),
            offers(),
            spacing(),
            // heading(),
            bannerB(),
            spacing(),
            grid(),
            spacing(),
            heading2(),
            spacing(),
            productDisp(),
            heading1(),
            heading3(),
            infoDisp()
          ],
        ),
      ),
    );
  }

  Widget spacing() {
    return SizedBox(
      height: 5,
    );
  }

  Widget heading() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "BROWSE COLLECTION",
            textAlign: TextAlign.left,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Widget heading1() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "WHY YOU SHOULD RENT",
            textAlign: TextAlign.left,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Widget heading3() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "RENTING IS AWESOME!",
            textAlign: TextAlign.left,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Widget heading2() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "EXPLORE PRODUCTS",
            // optns[index],
            textAlign: TextAlign.left,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Widget header() {
    return ListTile(
      trailing: Icon(
        Icons.search,
        color: Color(0xFF346BA1),
        size: 30,
      ),
      leading: Image.asset("furlenco_icon.png"),
      title: Text(
        "FURLENCO",
        style: TextStyle(fontSize: 20),
      ),
    );
  }

  Widget bannerA() {
    return Container(
      height: 280,
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(
            "banner.jpg",
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget offers() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 5,
        child: ListTile(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
          leading: Icon(
            Icons.local_offer,
            color: Color(0xFF346BA1),
            size: 30,
          ),
          title: Center(
            child: Text(
                "Get flat Rs. 400 off on your rent.Hurry! Offer ends soon.T&C Apply*"),
          ),
        ),
      ),
    );
  }

  Widget bannerB() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(
              "banner2.jpg",
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }

  Widget gridElements(String imageVal, String Name) {
    return Container(
      height: 30,
      width: 130,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.0),
            topRight: Radius.circular(15.0),
          ),
        ),
        elevation: 0,
        child: Wrap(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                imageVal,
                height: 70,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            //Sized Text(Name)
            ListTile(
              title: Center(
                child: Text(
                  Name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget grid() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.count(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        crossAxisCount: 3,
        childAspectRatio: 1,
        children: [
          gridElements("LR.jpg", "Living"),
          gridElements("DR.jpg", "Dining "),
          gridElements("KR.jpg", "Kids Room"),
          gridElements("BR.jpg", "Bedroom"),
          gridElements("K.jpg", "Kitchen"),
          gridElements("balcony.jpg", "Balcony"),
          // gridElements("storage.jpg", "Storage"),
          // gridElements("SR.jpg", "Study Room"),
        ],
      ),
    );
  }

  Widget infoDisp() {
    return Container(
      height: 270,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          info(
            "Live Better Now",
            "With our award-winning furniture,create your dream home today.Without waiting for that elusive tomorrow.Be it your dining,bedroom or living room.",
          ),
          SizedBox(
            height: 150,
            width: 10,
          ),
          info(
            "Have Everything.",
            "Bed or Sofa?Its not a choice anymore.With our wallet-friendly packages,you can have that perfect home.",
          ),
          SizedBox(
            height: 150,
            width: 10,
          ),
          info(
            "Change,as your needs evolve",
            "Keep your furniture as your needs change,We carefully put together our combos to enhance your home.",
          ),
          SizedBox(
            height: 150,
            width: 10,
          ),
        ],
      ),
    );
  }

  Widget info(String title, String description) {
    return Container(
      height: 150,
      width: 190,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              spacing(),
              Container(
                child: Center(
                  child: Text(
                    title,
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ),
              spacing(),
              Container(
                child: Center(
                  child: Text(
                    description,
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ),
              spacing(),
              spacing(),
              Container(
                // width: double.infinity,
                child: Center(
                  child: Text(
                    "Explore Products",
                    style: TextStyle(
                      color: Color(0xFF346BA1),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget product(String imageVal, String heading, String subHeading) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => ProductPage()));
      },
      child: Container(
        height: 200,
        width: 190,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 5,
          child: Wrap(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  imageVal,
                  height: 170,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
              ListTile(
                title: Text(
                  heading,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Container(child: Text(subHeading)),
              ),
              Container(
                width: double.infinity,
                child: Center(
                  child: Text(
                    "See More",
                    style: TextStyle(
                      color: Color(0xFF346BA1),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget productDisp() {
    return Container(
      height: 270,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          product(
            "sofa.jpg",
            "Stylish Sofa",
            "Rent Rs 460/month",
          ),
          SizedBox(
            height: 150,
            width: 10,
          ),
          product(
            "bed.jpg",
            " Mili Dvi Queen",
            " Rent Rs 459/month",
          ),
          SizedBox(
            height: 150,
            width: 10,
          ),
          product(
            "studytable.jpg",
            "Stuart Study Table",
            " Rent Rs 140/month",
          ),
          SizedBox(
            height: 150,
            width: 10,
          ),
        ],
      ),
    );
  }
}
