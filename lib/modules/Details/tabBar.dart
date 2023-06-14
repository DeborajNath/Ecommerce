import 'package:flutter/material.dart';

class SizeBar extends StatefulWidget {
  const SizeBar({super.key});

  @override
  State<SizeBar> createState() => _SizeBarState();
}

class _SizeBarState extends State<SizeBar> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 0),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          child: TabBar(
            padding: const EdgeInsets.all(2),
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Colors.black),
            controller: _tabController,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            tabs: const [
              Tab(
                child: Text(
                  'S',
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.w900),
                ),
              ),
              Tab(
                child: Text(
                  'M',
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.w900),
                ),
              ),
              Tab(
                child: Text(
                  'L',
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.w900),
                ),
              ),
              Tab(
                child: Text(
                  'XL',
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
