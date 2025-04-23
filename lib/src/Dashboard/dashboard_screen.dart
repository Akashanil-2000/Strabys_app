import 'package:css_stranbys/src/Dashboard/dashboard_controller.dart';
import 'package:css_stranbys/src/Shared/util/helper/common_helper.dart';
import 'package:css_stranbys/src/Shared/util/theme/theme_constant.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_button_primary.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_loader_indicator.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_scaffold.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_text.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_text_input.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../Shared/app_page.dart';

class DashboardScreen extends GetView<DashboardController> {
  const DashboardScreen({Key? key}) : super(key: key);

  _buildGridMenu({icon, title, count, route, VoidCallback? fn, color}) => Bounceable(
      onTap: () {
        if (route != null) {
          Get.toNamed(route);
        } else if (fn != null) {
          fn;
        }
      },
      child: Card(
          color: color,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10), side: const BorderSide(width: 2)),
          elevation: 3,
          child: Stack(alignment: Alignment.topRight, children: [
            SizedBox(
                width: 100.w,
                child: Column(
                  children: [Icon(icon, size: 34), FIText(text: '$title', textStyle: FITextStyle.mMBold)],
                ).paddingAll(15)),
            if (count != null)
              CircleAvatar(
                  radius: 17,
                  backgroundColor: Colors.red,
                  child: FittedBox(child: Text('${count ?? 0}', style: FITextStyle.sMBold.copyWith(color: Colors.white), maxLines: 2)))
                  .paddingAll(5)
          ])));

  @override
  Widget build(BuildContext context) {
    return FIScaffold(
        title: 'Welcome ${controller.appCtrl.currentUserName.value}',
        isLeadingEnabled: false,
        isAppBarPinned: false,
        onRefresh: () async => controller.loadData(),
        customSuffixIcon: IconButton(
            onPressed: () async {
              controller.isLoading(true);
              await controller.appCtrl.logOut();
              controller.isLoading(false);
            },
            icon: CircleAvatar(backgroundColor: Colors.white, child: Icon(Icons.power_settings_new_rounded, color: Colors.red.shade600))),
        child: Obx(() => controller.isLoading.isTrue
            ? const FILoaderIndicator().paddingSymmetric(vertical: 25)
            : Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              Expanded(
                child: _buildGridMenu(icon: Icons.inventory_rounded, title: 'RECIEVE', count: controller.recieveList.value, route: AppRoutes.RECIEVE),
              ),
              Expanded(
                child: _buildGridMenu(icon: Icons.local_shipping_rounded, title: 'PUT AWAY', count: controller.putawayList.value, route: AppRoutes.PUTAWAY),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: _buildGridMenu(
                    icon: Icons.delivery_dining, title: 'DELIVERY ORDER', count: controller.deliveryOrderList.value, route: AppRoutes.DELIVERY_ORDER),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: _buildGridMenu(icon: Icons.warehouse_rounded, title: 'INTERNAL TRANSFER', count: null, route: AppRoutes.INTERNAL_TRANSFER),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: _buildGridMenu(icon: Icons.move_up_outlined, title: 'WAREHOUSE TRANSFER', count: null, route: AppRoutes.WAREHOUSE_TRANSFER),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: Bounceable(
                      onTap: () async {
                        var truckNo = TextEditingController();
                        var truckType = ''.obs;
                        var truckCapacity = ''.obs;
                        var containerNo = TextEditingController();
                        var totalQty = TextEditingController();
                        var container = ''.obs;
                        var sealNo = TextEditingController();
                        var driverName = TextEditingController();
                        var driverNo = TextEditingController();
                        final _formKey = GlobalKey<FormState>();

                        return FIBottomSheet(
                            title: 'Add Truck Details',
                            titleBgHexColor: '#fffff',
                            contentHorizontalPadding: 20,
                            contentVerticalPadding: 10,
                            safeAreaBackgroundColor: Colors.grey.shade200,
                            footerWidget: Container(
                              color: Colors.grey.shade200,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: FIButtonPrimary(
                                      onPressed: () {
                                        Get.close(1);
                                      },
                                      text: 'Close',
                                      isBtnColor: true,
                                      btnColor: Colors.grey.shade500,
                                      textStyle: FITextStyle.xsMBold.copyWith(color: Colors.white),
                                    ).paddingAll(5).paddingSymmetric(horizontal: 10),
                                  ),
                                  Expanded(
                                    child: FIButtonPrimary(
                                      onPressed: () {
                                        _formKey.currentState?.validate();
                                        if (truckType.value == '' || truckCapacity.value == '') {
                                          showSnackBar(message: 'Please Enter All Required Field');
                                        } else if (_formKey.currentState?.validate() == true) {
                                          controller.submitTruckDetails(
                                              driverName: driverName.text,
                                              mobileNo: driverNo.text,
                                              truckNo: truckNo.text,
                                              totalQty: totalQty.text,
                                              sealNo: sealNo.text,
                                              containerNo: containerNo.text,
                                              truckTypeId: truckType.value,
                                              truckCapacityId: truckCapacity.value,
                                              containerTypeId: container.value);
                                        }
                                      },
                                      text: 'Save',
                                      textStyle: FITextStyle.xsMBold.copyWith(color: Colors.white),
                                    ).paddingAll(5).paddingSymmetric(horizontal: 10),
                                  ),
                                ],
                              ),
                            ),
                            bottomSheetWidget: Container(
                              color: Colors.grey.shade200,
                              child: Form(
                                key: _formKey,
                                child: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        FITextInput(
                                          labelText: 'Truck No.',
                                          labelTextStyle: FITextStyle.xxxxs.copyWith(fontSize: 10, fontWeight: FontWeight.w500, color: Colors.grey),
                                          isRequired: true,
                                          controller: truckNo,
                                          validationMessage: 'Required Truck Number',
                                          autoValidateMode: AutovalidateMode.onUserInteraction,
                                        ).paddingOnly(top: 10),
                                        FIText(
                                            text: 'Truck Type ',
                                            isRequired: true,
                                            textStyle: FITextStyle.xxxxs.copyWith(fontSize: 10, fontWeight: FontWeight.w500, color: Colors.grey))
                                            .paddingSymmetric(horizontal: 15),
                                        DropdownButtonHideUnderline(
                                            child: Obx(() => DropdownButton2(
                                                isExpanded: true,
                                                hint: FIText(text: 'Select', textStyle: FITextStyle.xxxsMBold, textOverflow: TextOverflow.ellipsis),
                                                items: controller.truckTypeList.value
                                                    .map((item) => DropdownMenuItem<String>(
                                                    value: item?.id.toString() ?? '',
                                                    child: Text(item.name ?? '', style: FITextStyle.xxxsMBold, maxLines: 2, overflow: TextOverflow.ellipsis)))
                                                    .toList(),
                                                value: truckType.value == '' ? null : truckType.value,
                                                onChanged: (value) => truckType.value = value.toString(),
                                                buttonStyleData: ButtonStyleData(
                                                    height: 50,
                                                    width: 100.w,
                                                    padding: const EdgeInsets.only(left: 14, right: 14),
                                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white)),
                                                iconStyleData: IconStyleData(
                                                    icon: const Icon(Icons.keyboard_arrow_down_rounded),
                                                    iconSize: 24,
                                                    iconEnabledColor: Colors.red,
                                                    iconDisabledColor: Colors.grey),
                                                dropdownStyleData: DropdownStyleData(
                                                    maxHeight: 35.h,
                                                    padding: null,
                                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
                                                    elevation: 8,
                                                    scrollbarTheme: ScrollbarThemeData(
                                                        thumbColor: MaterialStateProperty.all(Colors.red),
                                                        radius: const Radius.circular(10),
                                                        thickness: MaterialStateProperty.all<double>(4),
                                                        thumbVisibility: MaterialStateProperty.all<bool>(true))),
                                                menuItemStyleData: const MenuItemStyleData(height: 40, padding: EdgeInsets.only(left: 14, right: 14)))))
                                            .paddingSymmetric(vertical: 5)
                                            .paddingOnly(bottom: 15),
                                        FIText(
                                            text: 'Truck Capacity',
                                            isRequired: true,
                                            textStyle: FITextStyle.xxxxs.copyWith(fontSize: 10, fontWeight: FontWeight.w500, color: Colors.grey))
                                            .paddingSymmetric(horizontal: 15),
                                        DropdownButtonHideUnderline(
                                            child: Obx(() => DropdownButton2(
                                                isExpanded: true,
                                                hint: FIText(text: 'Select', textStyle: FITextStyle.xxxsMBold, textOverflow: TextOverflow.ellipsis),
                                                items: controller.truckCapacityList.value
                                                    .map((item) => DropdownMenuItem<String>(
                                                    value: item?.id.toString() ?? '',
                                                    child: Text(item?.name ?? '', style: FITextStyle.xxxsMBold, maxLines: 2, overflow: TextOverflow.ellipsis)))
                                                    .toList(),
                                                value: truckCapacity.value == '' ? null : truckCapacity.value,
                                                onChanged: (value) => truckCapacity.value = value.toString(),
                                                buttonStyleData: ButtonStyleData(
                                                    height: 50,
                                                    width: 100.w,
                                                    padding: const EdgeInsets.only(left: 14, right: 14),
                                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white)),
                                                iconStyleData: IconStyleData(
                                                    icon: const Icon(Icons.keyboard_arrow_down_rounded),
                                                    iconSize: 24,
                                                    iconEnabledColor: Colors.red,
                                                    iconDisabledColor: Colors.grey),
                                                dropdownStyleData: DropdownStyleData(
                                                    maxHeight: 35.h,
                                                    padding: null,
                                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
                                                    elevation: 8,
                                                    scrollbarTheme: ScrollbarThemeData(
                                                        thumbColor: MaterialStateProperty.all(Colors.red),
                                                        radius: const Radius.circular(10),
                                                        thickness: MaterialStateProperty.all<double>(4),
                                                        thumbVisibility: MaterialStateProperty.all<bool>(true))),
                                                menuItemStyleData: const MenuItemStyleData(height: 40, padding: EdgeInsets.only(left: 14, right: 14)))))
                                            .paddingSymmetric(vertical: 5)
                                            .paddingOnly(bottom: 15),
                                        FITextInput(
                                          labelText: 'Container No.',
                                          labelTextStyle: FITextStyle.xxxxs.copyWith(fontSize: 10, fontWeight: FontWeight.w500, color: Colors.grey),
                                          controller: containerNo,
                                        ),
                                        FIText(text: 'Container', textStyle: FITextStyle.xxxxs.copyWith(fontSize: 10, fontWeight: FontWeight.w500, color: Colors.grey))
                                            .paddingSymmetric(horizontal: 15),
                                        DropdownButtonHideUnderline(
                                            child: Obx(() => DropdownButton2(
                                                isExpanded: true,
                                                hint: FIText(text: 'Select', textStyle: FITextStyle.xxxsMBold, textOverflow: TextOverflow.ellipsis),
                                                items: controller.containerList.value
                                                    .map((item) => DropdownMenuItem<String>(
                                                    value: item?.id.toString() ?? '',
                                                    child: Text(item?.name ?? '', style: FITextStyle.xxxsMBold, maxLines: 2, overflow: TextOverflow.ellipsis)))
                                                    .toList(),
                                                value: container.value == '' ? null : container.value,
                                                onChanged: (value) => container.value = value.toString(),
                                                buttonStyleData: ButtonStyleData(
                                                    height: 50,
                                                    width: 100.w,
                                                    padding: const EdgeInsets.only(left: 14, right: 14),
                                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white)),
                                                iconStyleData: IconStyleData(
                                                    icon: const Icon(Icons.keyboard_arrow_down_rounded),
                                                    iconSize: 24,
                                                    iconEnabledColor: Colors.red,
                                                    iconDisabledColor: Colors.grey),
                                                dropdownStyleData: DropdownStyleData(
                                                    maxHeight: 35.h,
                                                    padding: null,
                                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
                                                    elevation: 8,
                                                    scrollbarTheme: ScrollbarThemeData(
                                                        thumbColor: MaterialStateProperty.all(Colors.red),
                                                        radius: const Radius.circular(10),
                                                        thickness: MaterialStateProperty.all<double>(4),
                                                        thumbVisibility: MaterialStateProperty.all<bool>(true))),
                                                menuItemStyleData: const MenuItemStyleData(height: 40, padding: EdgeInsets.only(left: 14, right: 14)))))
                                            .paddingSymmetric(vertical: 5)
                                            .paddingOnly(bottom: 15),
                                        FITextInput(
                                          labelText: 'Seal No.',
                                          labelTextStyle: FITextStyle.xxxxs.copyWith(fontSize: 10, fontWeight: FontWeight.w500, color: Colors.grey),
                                          controller: sealNo,
                                        ),
                                        FITextInput(
                                          labelText: 'Driver Name',
                                          labelTextStyle: FITextStyle.xxxxs.copyWith(fontSize: 10, fontWeight: FontWeight.w500, color: Colors.grey),
                                          isRequired: true,
                                          controller: driverName,
                                          validationMessage: 'Required Driver Name',
                                          autoValidateMode: AutovalidateMode.onUserInteraction,
                                        ),
                                        FITextInput(
                                          labelText: 'Mobile No.',
                                          labelTextStyle: FITextStyle.xxxxs.copyWith(fontSize: 10, fontWeight: FontWeight.w500, color: Colors.grey),
                                          isRequired: true,
                                          controller: driverNo,
                                          validationMessage: 'Required Mobile Number',
                                          autoValidateMode: AutovalidateMode.onUserInteraction,
                                          textInputType: TextInputType.number,
                                        ),
                                        FITextInput(
                                          labelText: 'Total Quantity',
                                          labelTextStyle: FITextStyle.xxxxs.copyWith(fontSize: 10, fontWeight: FontWeight.w500, color: Colors.grey),
                                          controller: totalQty,
                                          textInputType: TextInputType.number,
                                        ),
                                      ],
                                    )).paddingSymmetric(horizontal: 5, vertical: 10),
                              ),
                            ));
                      },
                      child: Card(
                          color: Colors.amber.shade300,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10), side: const BorderSide(width: 2)),
                          elevation: 3,
                          child: Stack(alignment: Alignment.topRight, children: [
                            SizedBox(
                                width: 100.w,
                                child: Column(
                                  children: [Icon(Icons.fire_truck_sharp, size: 34), FIText(text: 'TRUCK ENTRY', textStyle: FITextStyle.mMBold)],
                                ).paddingAll(15)),
                            CircleAvatar(
                                radius: 17,
                                backgroundColor: Colors.black,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                )).paddingAll(5)
                          ]))))
            ],
          ),
          SizedBox(height: 35.h),
        ])));
  }
}
