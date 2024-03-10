import 'package:flutter/material.dart';
import 'package:safe_drive/core/app_export.dart';

// ignore: must_be_immutable
class GalileodesignItemWidget extends StatelessWidget {
  const GalileodesignItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillWhiteA,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgDepth3Frame0,
            height: 72.v,
            width: 115.h,
            radius: BorderRadius.circular(
              8.h,
            ),
            margin: EdgeInsets.only(bottom: 4.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              bottom: 10.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Tommy",
                  style: theme.textTheme.titleMedium,
                ),
                Text(
                  "2020 Tesla Model \n S",
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(bottom: 44.v),
            padding: EdgeInsets.symmetric(
              horizontal: 3.h,
              vertical: 5.v,
            ),
            decoration: AppDecoration.fillBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Container(
              width: 85.h,
              padding: EdgeInsets.symmetric(vertical: 1.v),
              decoration: AppDecoration.fillBlueGray,
              child: Text(
                "03/05/2023",
                style: CustomTextStyles.titleSmallGray900Medium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
