import 'package:flutter/material.dart';

import '../../model/product.dart';
import '../Details/SecondScreen.dart';
import 'ItemCard.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  List<Product> display_list = List.from(products);
  void updateList(String value) {
    setState(() {
      display_list = products
          .where((element) =>
              element.title.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Row(
            children: [
              const Text(
                'Hi, Arif',
                style: TextStyle(color: Colors.black),
              ),
              Expanded(
                child: TextField(
                  onChanged: (value) => updateList(value),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Search",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none),
                  ),
                ),
              )
            ],
          ),
          leading: const Padding(
            padding: EdgeInsets.all(12),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/Profile.jpg'),
            ),
          ),
          actions: [
            // IconButton(
            //   icon: const Icon(Icons.search, color: Colors.black),
            //   onPressed: () {},
            // ),
            IconButton(
              icon:
                  const Icon(Icons.shopping_bag_outlined, color: Colors.black),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, bottom: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      'Explore the',
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        height: 50,
                        width: 200,
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                            border: Border.all(),
                            color: Colors.black,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                        child: const FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            'collections',
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 110,
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                          border: Border.all(),
                          color: Colors.black,
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              topLeft: Radius.circular(20))),
                      child: const FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text('Best',
                            style:
                                TextStyle(color: Colors.white, fontSize: 25)),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text('for you',
                        style: TextStyle(fontWeight: FontWeight.w900)),
                  ],
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(5),
            child: Text(
              "Categories",
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TabBar(
            padding: const EdgeInsets.all(2),
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Colors.black),
            controller: _tabController,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            tabs: const [
              Tab(
                child: Text(
                  'All',
                  style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Poppins',
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.w900),
                ),
              ),
              Tab(
                child: Text(
                  'Mens',
                  style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Poppins',
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.w900),
                ),
              ),
              Tab(
                child: Text(
                  'Womens',
                  style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Poppins',
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.w900),
                ),
              ),
              Tab(
                child: Text(
                  'Kids',
                  style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Poppins',
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ],
          ),
          Expanded(
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => ItemCard(
                product: products[index],
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SecondScreen(
                              product: products[index],
                            ))),
              ),
            ),
          ),
        ]));
  }
}
