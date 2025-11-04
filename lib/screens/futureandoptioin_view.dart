import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:groww_app_design/utils/app_colors.dart';
import 'package:icons_plus/icons_plus.dart';

class FutureScreen extends StatelessWidget {
  final List<Map<String, dynamic>> equityCommodity = [
    {
      "shareimage":
          "https://assets-netstorage.groww.in/stock-assets/logos/GIDXNIFTY.png",
      "sharename": "Nifty 50",
      "shareprice": "25,59.65",

      "sharepercaentage": "-165.70 (0.64%)",
    },
    {
      "shareimage":
          "https://assets-netstorage.groww.in/stock-assets/logos/GIDXBSESN.png",
      "sharename": "SENSEX",
      "shareprice": "83,459.15",

      "sharepercaentage": "-519.34 (0.62%)",
    },
    {
      "shareimage":
          "https://assets-netstorage.groww.in/stock-assets/logos/GIDXNIFTYBANK.png",
      "sharename": "BANK NIFTY",
      "shareprice": "57,827.05",

      "sharepercaentage": "-274.40 (0.47%)",
    },
    {
      "shareimage":
          "https://assets-netstorage.groww.in/stock-assets/logos2/SBIN.webp",
      "sharename": "SBI",
      "shareprice": "957.60",

      "sharepercaentage": "+7.90 (0.83%)",
    },
    {
      "shareimage":
          "https://assets-netstorage.groww.in/stock-assets/logos2/MARUTI.webp",
      "sharename": "Maruti Suzuki",
      "shareprice": "15,374.00",

      "sharepercaentage": "-277.00 (1.77%)",
    },
    {
      "shareimage":
          "https://assets-netstorage.groww.in/stock-assets/logos2/ADANIENT.webp",
      "sharename": "Adani Enterprisess",
      "shareprice": "2,419.80",

      "sharepercaentage": "-47.80 (1.91%)",
    },
  ];

   FutureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: AppColors.borderGreyColor),
              ),
              child: Row(
                children: [
                  Icon(Iconsax.chart_2_outline),
                  SizedBox(width: 15),
                  Text(
                    'Scalper',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(
                        255,
                        118,
                        161,
                        236,
                      ).withValues(alpha: 0.1),
                    ),
                    child: Text(
                      '1-tap Trading >',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Top Traded',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                equitycomodity(title: 'Equity'),
                SizedBox(width: 15),
                equitycomodity(title: 'Commodities'),
              ],
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: equityCommodity.length,
              itemBuilder: (context, index) {
                return equitycomoditylist(
                  shareimage: equityCommodity[index]['shareimage'],
                  sharename: equityCommodity[index]['sharename'],
                  shareprice: equityCommodity[index]['shareprice'],
                  sharepercaentage: equityCommodity[index]['sharepercaentage'],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget equitycomodity({required String title}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.borderGreyColor),
        borderRadius: BorderRadius.circular(80),
      ),
      child: Text(
        title,
        style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
      ),
    );
  }
  ////

  Widget equitycomoditylist({
    required String shareimage,
    required String sharename,
    required String shareprice,
    required String sharepercaentage,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(200)),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.borderGreyColor),
              borderRadius: BorderRadius.circular(8),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(shareimage, height: 30, width: 30),
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: AppColors.borderGreyColor,
                    width: 1,
                  ),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(sharename, style: TextStyle(fontSize: 14)),
                  ),
                  Column(
                    children: [
                      Text(sharepercaentage, style: TextStyle(fontSize: 13)),
                      Text(shareprice, style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
