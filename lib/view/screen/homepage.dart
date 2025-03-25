import 'package:ecommerceapp/view/widget/homepage/mysearch_wd.dart';
import 'package:ecommerceapp/view/widget/homepage/offerimage_wd.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            children: [
              MySearch(),
              SizedBox(height: 13),
              OfferImage(),
            ]),
      ),
    );
  }
}
