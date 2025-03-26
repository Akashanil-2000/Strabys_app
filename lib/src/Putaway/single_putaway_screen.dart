import 'package:css_stranbys/src/Putaway/putaway_controller.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_empty_state.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_loader_indicator.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../Shared/util/theme/theme_constant.dart';

class SinglePutawayScreen extends GetView<PutawayController> {
  const SinglePutawayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => FIScaffold(
        heading: 'Put away',
        customSuffixIcon: Icon(Icons.local_shipping_outlined, color: Colors.white, size: 40),
        title: '${controller.singlePackingData.first.grn_name ?? ''}',
        child: Column(children: [_buildScreen()])));
  }

  _buildScreen() => Obx(() => controller.isLoading.isTrue
      ? const FILoaderIndicator()
      : Column(children: [
          if (controller.singlePackingData.isEmpty) ...[
            const FIEmptyState(title: 'No pending Putaway list found.')
          ] else ...[
            for (var item in controller.singlePackingData) ...[
              Bounceable(
                  onTap: () {
                    if (item.status != 'done') {
                      controller.getProductList(id: item.picking_id);
                    }
                  },
                  child: SizedBox(
                          width: 100.w,
                          child: Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                Row(children: [
                                  const Expanded(child: SizedBox()),
                                  Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(15), color: (item.status == 'done') ? Colors.green.shade400 : Colors.transparent),
                                          child: Text(
                                            (item.status == 'done') ? 'Completed' : '',
                                            style: FITextStyle.xxxsMBold.copyWith(color: Colors.white),
                                          ).paddingAll(5))
                                      .paddingSymmetric(horizontal: 3)
                                ]),
                                controller.appCtrl.buildKeyValueAlign(width: 90, key: 'Document', value: '${item.picking_name ?? ''}')
                              ]).paddingAll(5).paddingSymmetric(vertical: 10)))
                      .paddingSymmetric(vertical: 5))
            ]
          ]
        ]));
}
