class PendingItem {
  final int productId;
  final String productName;
  final String internalRef;
  final int pendingQty;

  PendingItem({
    required this.productId,
    required this.productName,
    required this.internalRef,
    required this.pendingQty,
  });

  factory PendingItem.fromJson(Map<String, dynamic> json) {
    return PendingItem(
      productId: json['product_id'] as int? ?? 0, // Handle null
      productName: json['product_name'] as String? ?? 'Unknown', // Handle null
      internalRef: json['internal_ref'] as String? ?? 'N/A', // Handle null
      pendingQty: (json['pending_qty'] as num?)?.toInt() ?? 0, // Handle double/null
    );
  }

  // Add this for debugging
  @override
  String toString() {
    return 'PendingItem($productId, $productName, Qty: $pendingQty)';
  }
}