import 'package:css_stranbys/src/Putaway/putaway_controller.dart';
import 'package:css_stranbys/src/Shared/util/theme/theme_constant.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_empty_state.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_loader_indicator.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class PutAwayScreen extends GetView<PutawayController> {
  const PutAwayScreen({super.key});

  @override
  Widget build(BuildContext context) => FIScaffold(
      customSuffixIcon: Icon(Icons.local_shipping_outlined, color: Colors.white, size: 40),
      title: 'Put away.',
      onRefresh: () async {
        return controller.initialise();
      },
      child: Column(children: [controller.appCtrl.buildSearchField(search_controller: controller.Searchkey), _buildScreen()]));

  _buildScreen() => Obx(() => controller.isLoading.isTrue
      ? const FILoaderIndicator()
      : Column(children: [
          if ((controller.isSearching.isTrue && controller.packingSearchData.isEmpty) || (controller.isSearching.isFalse && controller.packingData.isEmpty)) ...[
            const FIEmptyState(title: 'No pending Putaway list found.')
          ] else ...[
            if (controller.isSearching.isTrue) ...[
              for (var item in controller.packingSearchData) ...[
                Bounceable(
                    onTap: () => controller.getSingleRecord(id: item.id),
                    child: SizedBox(
                        width: 100.w,
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                            Row(
                              children: [
                                Expanded(
                                  child: SizedBox(),
                                ),
                                Text(
                                  '${item?.gate_in_date ?? ''}',
                                  style: FITextStyle.xxsMBold,
                                ).paddingSymmetric(horizontal: 5)
                              ],
                            ),
                            controller.appCtrl.buildKeyValueAlign(width: 100, color: Colors.red, key: 'GRN', value: '${item?.name ?? ''}'),
                            controller.appCtrl.buildKeyValueAlign(width: 100, color: Colors.grey.shade900, key: 'Customer', value: '${item?.customer_name ?? ''}'),
                            controller.appCtrl.buildKeyValueAlign(width: 100, color: Colors.grey.shade900, key: 'In Type', value: '${item?.inbounding_type ?? ''}'),
                            controller.appCtrl.buildKeyValueAlign(width: 100, color: Colors.grey.shade900, key: 'In No.', value: '${item?.inbounding_no ?? ''}'),
                            controller.appCtrl.buildKeyValueAlign(width: 100, color: Colors.grey.shade900, key: 'Warehouse', value: '${item?.warehouse?.name ?? ''}'),
                          ]).paddingAll(5).paddingSymmetric(vertical: 10),
                        )).paddingSymmetric(vertical: 5))
              ]
            ] else ...[
              for (var item in controller.packingData) ...[
                Bounceable(
                    onTap: () => controller.getSingleRecord(id: item.id),
                    child: SizedBox(
                        width: 100.w,
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                            Row(
                              children: [
                                Expanded(
                                  child: SizedBox(),
                                ),
                                Text(
                                  '${item?.gate_in_date ?? ''}',
                                  style: FITextStyle.xxsMBold,
                                ).paddingSymmetric(horizontal: 5)
                              ],
                            ),
                            controller.appCtrl.buildKeyValueAlign(width: 100, color: Colors.red, key: 'GRN', value: '${item?.name ?? ''}'),
                            controller.appCtrl.buildKeyValueAlign(width: 100, color: Colors.grey.shade900, key: 'Customer', value: '${item?.customer_name ?? ''}'),
                            controller.appCtrl.buildKeyValueAlign(width: 100, color: Colors.grey.shade900, key: 'In Type', value: '${item?.inbounding_type ?? ''}'),
                            controller.appCtrl.buildKeyValueAlign(width: 100, color: Colors.grey.shade900, key: 'In No.', value: '${item?.inbounding_no ?? ''}'),
                            controller.appCtrl.buildKeyValueAlign(width: 100, color: Colors.grey.shade900, key: 'Warehouse', value: '${item?.warehouse?.name ?? ''}'),
                          ]).paddingAll(5).paddingSymmetric(vertical: 10),
                        )).paddingSymmetric(vertical: 5))
              ]
            ]
          ],
          SizedBox(height: 40.h)
        ]));
}
