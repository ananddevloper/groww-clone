import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groww_app_design/screens/fotter_view.dart';
import 'package:groww_app_design/utils/app_colors.dart';
import 'package:groww_app_design/utils/app_icon.dart';

class PositionWidget extends StatelessWidget {
  PositionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Equity Intraday positions (1)',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Icon(Icons.expand_less)
              ],
            ),
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: AppColors.borderGreyColor, width: 1),
                boxShadow: [BoxShadow(color: Colors.grey)],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total returns',
                          style: TextStyle(
                            fontSize: 15,
                            color: AppColors.greyMedium,
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          '+₹846.70',
                          style: TextStyle(
                            color: AppColors.greenMedium,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        /// Right side (Exide all)
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.exit_to_app,
                        size: 22,
                        color: AppColors.greyMedium,
                      ),
                      SizedBox(width: 6),
                      Text(
                        'Exit all',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: AppColors.greyMedium,
                          decoration: TextDecoration.underline,                          
                          decorationStyle: TextDecorationStyle.dotted,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(child: Text('Intraday',style: TextStyle(color: AppColors.greyMedium),)),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 13,vertical: 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Colors.grey.shade50,
                        ),
                        child: Text(
                          '0',
                          style: TextStyle(
                            
                            color: AppColors.greyMedium,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(children: [
                    Expanded(child: Text('Camline Fine Sciences',style: TextStyle(fontSize: 15,color: AppColors.greyMedium),)),
                    Text('+₹846.70',style: TextStyle(fontWeight: FontWeight.w600,color: AppColors.greyMedium),)
                  ],),
                  Row(children: [
                    Expanded(child: Text('Avg ₹0.00 ',style: TextStyle(color: AppColors.greyMedium,fontWeight: FontWeight.w200),)),
                    Text('Mkt ₹163.84',style: TextStyle(fontSize: 15,color: AppColors.greyMedium),)
                  ],)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
