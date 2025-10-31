import 'package:flutter/material.dart';
import 'package:groww_app_design/screens/utils/app_colors.dart';
import 'package:icons_plus/icons_plus.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: appBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(
              height: 55,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  indexsummery(
                    title: "NIFTY 50",
                    price: '25,877.85',
                    percentagechange: '-176.05(0.68%)',
                  ),
                  SizedBox(width: 18),
                  indexsummery(
                    title: 'SENSEX',
                    price: '84,404.46',
                    percentagechange: '-592.67(-592.67)',
                  ),
                  SizedBox(width: 18),
                  indexsummery(
                    title: 'BANK NIFTY',
                    price: '58,031.10',
                    percentagechange: '-354.15(0.61%)',
                  ),
                  SizedBox(width: 18),
                  indexsummery(
                    title: 'ALL Indices',
                    price: '50',
                    percentagechange: '543(1%)',
                  ),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: AppColors.white,
      title: Row(
        children: [
          Brand(Brands.google),
          SizedBox(width: 13),
          Text(
            'Stocks',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ],
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.search, size: 21)),
        IconButton(onPressed: () {}, icon: Icon(Icons.qr_code, size: 21)),
        CircleAvatar(child: Icon(Icons.person)),
      ],
    );
  }

  Widget indexsummery({
    required String title,
    required String price,
    required String percentagechange,
  }) {
    return Container(
      padding: EdgeInsets.all(11),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w600,
              color: AppColors.blackMedium,
            ),
          ),
          SizedBox(height: 3),
          Row(
            spacing: 10,
            children: [
              Text(
                price,
                style: TextStyle(color: AppColors.blackMedium, fontSize: 9),
              ),

              Text(
                percentagechange,
                style: TextStyle(color: AppColors.redMedium, fontSize: 9),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
