import 'package:safe_drive/widgets/custom_textfield.dart';
import 'package:safe_drive/widgets/date_time_picker.dart';
import 'package:safe_drive/widgets/make_request_app_bar/custom_app_bar.dart';
import 'package:safe_drive/widgets/make_request_app_bar/appbar_trailing_image.dart';
import 'package:safe_drive/widgets/make_request_drop_down.dart';
import 'package:safe_drive/widgets/make_request_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:safe_drive/core/app_export.dart';
import 'package:safe_drive/widgets/custom_textfield.dart';

class MakeRequestDesignScreen extends StatelessWidget {


  MakeRequestDesignScreen({Key? key})
      : super(
          key: key,
        );


  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  List<String> dropdownItemList1 = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  List<String> dropdownItemList2 = [
    "Item One",
    "Item Two",
    "Item Three",
  ];



  @override
  Widget build(BuildContext context) {

    DateTime selectedDate = DateTime.now();
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 18.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "Request Service",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 24.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "Vehicle Make",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 8.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: CustomDropDown(
                    icon: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgTick,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                    hintText: "Select vehicle make",
                    alignment: Alignment.center,
                    items: dropdownItemList,
                    onChanged: (value) {},
                  ),
                ),
                SizedBox(height: 26.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "Vehicle Model",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 9.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: CustomTextField(
                    icon: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
                      child: CustomTextField(
                        width: 24.adaptSize,
                      ),
                    ),
                    hintText: "Select vehicle model",
                    alignment: Alignment.center,
                    onChanged: (value) {},
                  ),
                ),
                SizedBox(height: 26.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "Service Center",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 9.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: CustomDropDown(
                    icon: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgTick,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                    hintText: "Select service center",
                    alignment: Alignment.center,
                    items: dropdownItemList1,
                    onChanged: (value) {},
                  ),
                ),
                SizedBox(height: 27.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "Specific Service",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 8.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: CustomDropDown(
                    icon: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgTick,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                    hintText: "Select specific service",
                    alignment: Alignment.center,
                    items: dropdownItemList2,
                    onChanged: (value) {},
                  ),
                ),
                SizedBox(height: 26.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "Date and Time",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 9.v),
                _buildDepthFrameZero(context,selectedDate),
                SizedBox(height: 24.v),
                _buildDepthFrameZero1(context),
                SizedBox(height: 12.v),
                Container(
                  height: 20.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: appTheme.gray50,
                  ),
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgCross,
          margin: EdgeInsets.fromLTRB(16.h, 16.v, 16.h, 8.v),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildDepthFrameZero(dateTimePickerKey, selectedDate) {
    GlobalKey dateTimePickerKey = GlobalKey();
    return Align(
      alignment: Alignment.center,
      child: DateTimePickerWidget(selectedDate: selectedDate, key: dateTimePickerKey,),
    );
  }

  /// Section Widget
  Widget _buildDepthFrameZero1(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomElevatedButton(
              width: 84.h,
              text: "Cancel",
            ),
            CustomElevatedButton(
              width: 90.h,
              text: "Request",
              buttonStyle: CustomButtonStyles.fillBlue,
              buttonTextStyle: theme.textTheme.titleSmall!,
            ),
          ],
        ),
      ),
    );
  }
}
