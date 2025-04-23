import 'package:css_stranbys/src/Delivery%20Order/delivery_order_controller.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_empty_state.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_loader_indicator.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_scaffold.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class PendingOrderScreen extends StatelessWidget {
  final String orderId;
  final DeliveryOrderController controller = Get.find();

  PendingOrderScreen({super.key, required this.orderId});

  @override
  Widget build(BuildContext context) {
    // Initial data load
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (controller.pendingItems.isEmpty) {
        controller.fetchPendingItems(orderId);
      }
    });

    return FIScaffold(
      title: 'Pending Items - Order #$orderId',
      onRefresh: () async => controller.fetchPendingItems(orderId),
      child: Obx(() {
        if (controller.isLoadingPending.value) {
          return const Center(child: FILoaderIndicator());
        }

        if (controller.errorMessage.value.isNotEmpty) {
          return _buildErrorState();
        }

        if (controller.pendingItems.isEmpty) {
          return _buildEmptyState();
        }

        return _buildItemList();
      }),
    );
  }

  Widget _buildErrorState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Error: ${controller.errorMessage.value}'),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => controller.fetchPendingItems(orderId),
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const FIEmptyState(title: 'No pending items found'),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => controller.fetchPendingItems(orderId),
            child: const Text('Reload Data'),
          ),
        ],
      ),
    );
  }

  Widget _buildItemList() {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: controller.pendingItems.length,
      separatorBuilder: (_, __) => const SizedBox(height: 12),
      itemBuilder: (_, index) {
        final item = controller.pendingItems[index];
        return Card(
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.productName,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Ref: ${item.internalRef}'),
                    Chip(
                      label: Text('Qty: ${item.pendingQty}'),
                      backgroundColor: Colors.orange.shade100,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}