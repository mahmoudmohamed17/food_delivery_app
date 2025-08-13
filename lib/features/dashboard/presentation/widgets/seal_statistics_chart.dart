import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/features/dashboard/presentation/widgets/custom_background_container.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SealStatisticsChart extends StatelessWidget {
  const SealStatisticsChart({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 4,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total Revenue', style: AppTextStyle.regular14(context)),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'See Details',
                      style: AppTextStyle.regular14(context).copyWith(
                        color: AppColors.primaryColor,
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.primaryColor,
                        decorationThickness: 2,
                      ),
                    ),
                  ),
                ],
              ),
              Text(r'$2125', style: AppTextStyle.bold24(context)),
            ],
          ),

          SizedBox(
            height: 250,
            child: SfCartesianChart(
              primaryXAxis: CategoryAxis(
                labelStyle: AppTextStyle.regular12(
                  context,
                ).copyWith(color: AppColors.subTextColor),
                majorGridLines: const MajorGridLines(color: Colors.transparent),
                majorTickLines: const MajorTickLines(color: Colors.transparent),
              ),
              primaryYAxis: const CategoryAxis(isVisible: false),
              plotAreaBorderColor: Colors.transparent,
              series: <SplineAreaSeries<SalesData, String>>[
                SplineAreaSeries(
                  markerSettings: const MarkerSettings(
                    color: Colors.white,
                    borderColor: AppColors.primaryColor,
                    width: 10,
                    height: 10,
                    borderWidth: 3,
                  ),
                  borderColor: AppColors.primaryColor,
                  borderWidth: 3.5,
                  gradient: const LinearGradient(
                    colors: [AppColors.extraLightPrimaryColor, Colors.white],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  dataSource: [
                    SalesData('Jan', 35),
                    SalesData('Feb', 28),
                    SalesData('Mar', 34),
                    SalesData('Apr', 32),
                    SalesData('May', 70),
                    SalesData('May', 40),
                  ],
                  xValueMapper: (SalesData sales, _) => sales.year,
                  yValueMapper: (SalesData sales, _) => sales.sales,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
