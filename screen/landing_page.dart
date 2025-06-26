import 'package:flutter/material.dart';
import 'package:flutter_ui/sample_data.dart';
import 'package:flutter_ui/screen/detail_page.dart';
import 'package:flutter_ui/utils/constants.dart';
import 'package:flutter_ui/utils/custom_functions.dart';
import 'package:flutter_ui/utils/widget_functions.dart';
import 'package:flutter_ui/custom/border_box.dart'; // Correct import for BorderIcon

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: COLOR_WHITE,
      body: SafeArea(
        child: Container(
          width: size.width,
          height: size.height,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              addVerticalSpace(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BorderIcon(
                    width: 50,
                    height: 50,
                    child: Icon(Icons.menu, color: COLOR_BLACK),
                  ),
                  BorderIcon(
                    width: 50,
                    height: 50,
                    child: Icon(Icons.settings, color: COLOR_BLACK),
                  ),
                ],
              ),
              addVerticalSpace(10),
              Text("City", style: Theme.of(context).textTheme.bodyMedium),
              addVerticalSpace(5),
              Text(
                "San Francisco",
                style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 26),
              ),
              addVerticalSpace(20),
              Divider(height: 1, color: COLOR_GREY),
              addVerticalSpace(20),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search address, city, location",
                        prefixIcon: Icon(Icons.search, color: COLOR_GREY),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: COLOR_GREY,
                      ),
                    ),
                  ),
                  addHorizontalSpace(10),
                  BorderIcon(
                    width: 50,
                    height: 50,
                    child: Icon(Icons.tune, color: COLOR_BLACK),
                  ),
                ],
              ),
              addVerticalSpace(20),
              Expanded(
                child: ListView.builder(
                  itemCount: RE_DATA.length,
                  itemBuilder: (context, index) {
                    final Map<String, dynamic> data = RE_DATA[index]; // ✅ FIXED: explicit typing

                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => DetailPage(itemData: data),
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                data['image'],
                                width: size.width,
                                height: 400,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              left: 10,
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                color: Colors.black54,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      formatCurrency(data['amount']),
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      data['address'],
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
