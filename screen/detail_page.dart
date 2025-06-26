import 'package:flutter/material.dart';
import 'package:flutter_ui/utils/constants.dart';
import 'package:flutter_ui/utils/custom_functions.dart';
import 'package:flutter_ui/utils/widget_functions.dart';
import 'package:flutter_ui/custom/border_box.dart';

class DetailPage extends StatelessWidget {
  final Map<String, dynamic> itemData;

  DetailPage({required this.itemData});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: COLOR_WHITE,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: size.height * 0.4,
                  child: Image.asset(itemData['image'], fit: BoxFit.cover),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    width: size.width,
                    decoration: BoxDecoration(
                      color: COLOR_WHITE,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            formatCurrency(itemData['amount']),
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                          addVerticalSpace(10),
                          Text(
                            itemData['address'],
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          addVerticalSpace(20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _InfoTile(label: "Bedrooms", value: itemData['bedrooms'].toString()),
                              _InfoTile(label: "Bathrooms", value: itemData['bathrooms'].toString()),
                              _InfoTile(label: "Area", value: "${itemData['area']} sqft"),
                              _InfoTile(label: "Garage", value: itemData['garage'].toString()),
                            ],
                          ),
                          addVerticalSpace(20),
                          Text(
                            "Description",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          addVerticalSpace(10),
                          Text(
                            itemData['description'],
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          addVerticalSpace(100),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 10,
              left: 10,
              child: BorderIcon(
                width: 40,
                height: 40,
                child: IconButton(
                  icon: Icon(Icons.arrow_back, color: COLOR_BLACK),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoTile extends StatelessWidget {
  final String label;
  final String value;

  const _InfoTile({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(value, style: Theme.of(context).textTheme.titleLarge),
        Text(label, style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
