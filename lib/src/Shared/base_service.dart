import 'dart:convert';
import 'package:css_stranbys/src/Shared/model/warehouse_scanned_data_list_model.dart';
import 'package:dio/dio.dart' as network;
import 'package:get/get.dart';
import 'package:css_stranbys/src/Shared/app_settings_controller.dart';
import 'package:css_stranbys/src/Shared/model/authenticate/authenticate_model.dart';
import 'package:css_stranbys/src/Shared/model/all_truck_list_model.dart';
import 'package:css_stranbys/src/Shared/model/delivery_location_model.dart';
import 'package:css_stranbys/src/Shared/model/delivery_model.dart';
import 'package:css_stranbys/src/Shared/model/delivery_product_list_model.dart';
import 'package:css_stranbys/src/Shared/model/delivery_single_model.dart';
import 'package:css_stranbys/src/Shared/model/location_model.dart';
import 'package:css_stranbys/src/Shared/model/menu_model.dart';
import 'package:css_stranbys/src/Shared/model/recieve_image_model.dart';
import 'package:css_stranbys/src/Shared/model/recieve_model.dart';
import 'package:css_stranbys/src/Shared/model/recieve_product_list_model.dart';
import 'package:css_stranbys/src/Shared/model/recieve_single_model.dart';
import 'package:css_stranbys/src/Shared/model/scanned_location_model.dart';
import 'package:css_stranbys/src/Shared/model/submit_model.dart';
import 'package:css_stranbys/src/Shared/model/truck_list_model.dart';
import 'package:css_stranbys/src/Shared/model/warehouse_check_bal_qty_model.dart';
import 'package:css_stranbys/src/Shared/model/warehouse_destination_location_model.dart';
import 'package:css_stranbys/src/Shared/model/warehouse_list_model.dart';
import 'package:css_stranbys/src/Shared/model/warehouse_location_list_model.dart';
import 'package:css_stranbys/src/Shared/model/warehouse_location_model.dart';
import 'package:css_stranbys/src/Shared/model/warehouse_product_list_model.dart';
import 'package:css_stranbys/src/Shared/model/warehouse_single_product_list_model.dart';
import 'package:css_stranbys/src/Shared/model/warehouse_stock_list_model.dart';
import 'package:css_stranbys/src/Shared/model/warehouse_stock_product_list_model.dart';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';

import 'package:css_stranbys/src/Shared/util/helper/common_helper.dart';

import 'app_page.dart';

class BaseService extends GetConnect {
  final dio = network.Dio();
  _getInstance() {
    dio.options.baseUrl = '';

    dio.interceptors.add(network.InterceptorsWrapper(onRequest: (options, handler) async {
      options.headers['Accept'] = "application/json";
      options.headers['Content-Type'] = "application/json";
      options.headers['Cookie'] = Get.find<AppSettingsController>().currentSessionId.value;

      return handler.next(options); //continue
    }, onResponse: (response, handler) {
      return handler.next(response); // continue
    }, onError: (network.DioError e, handler) async {
      return handler.next(e);
    }));
    return dio;
  }

  @override
  void onInit() {
    _getInstance();
    super.onInit();
  }

  Future<dynamic> getRequest({required String endPoint, dynamic parameters}) async {
    var session = Get.find<AppSettingsController>().currentSessionId.value;

    if (session == '') {
      Get.offAndToNamed(AppRoutes.LOGIN);
    } else {
      dio.options.baseUrl = 'https://css.odoouae.org/web';
      dio.interceptors.clear();
      dio.interceptors.add(network.InterceptorsWrapper(onRequest: (options, handler) async {
        options.headers['Accept'] = "application/json";
        options.headers['Content-Type'] = "application/json";
        options.headers['Cookie'] = Get.find<AppSettingsController>().currentSessionId.value;

        return handler.next(options); //continue
      }, onResponse: (response, handler) {
        return handler.next(response); // continue
      }, onError: (network.DioError e, handler) async {
        return handler.next(e);
      }));

      var param = {};
      if (parameters != null) {
        param.addAll(parameters);
      }

      Map<String, dynamic> form = {};
      form['jsonrpc'] = '2.0';
      form['params'] = param;

      network.Response response = await dio.get(
        endPoint,
        data: jsonEncode(form),
      );

      if (response != null && response.statusCode == 200) {
        return response.data;
      } else {
        return null;
      }
    }
  }

  Future postRequest({required String endPoint, dynamic parameters}) async {
    dio.options.baseUrl = 'https://css.odoouae.org/web';
    dio.interceptors.clear();
    dio.interceptors.add(network.InterceptorsWrapper(onRequest: (options, handler) async {
      options.headers['Accept'] = "application/json";
      options.headers['Content-Type'] = "application/json";
      options.headers['Cookie'] = Get.find<AppSettingsController>().currentSessionId.value;

      return handler.next(options); //continue
    }, onResponse: (response, handler) {
      return handler.next(response); // continue
    }, onError: (network.DioError e, handler) async {
      return handler.next(e);
    }));

    var param = {};
    if (parameters != null) {
      param.addAll(parameters);
    }

    Map<String, dynamic> form = {};
    form['jsonrpc'] = '2.0';
    form['params'] = param;

    network.Response response = await dio.post(endPoint, data: jsonEncode(form));

    if (response.data?['error']?['code'] == 100) {
      Get.offAllNamed(AppRoutes.LOGIN);
    } else if (response.statusCode == 200 && response.data != null) {
      return response.data;
    } else {
      return null;
    }
  }

  Future<dynamic> authenticate({required String login, required String password}) async {
    var form = {};
    form['login'] = login;
    form['password'] = password;
    form['db'] = 'css_dmp_mar_25';
    Map<String, dynamic> parameters = {};
    parameters['jsonrpc'] = '2.0';
    parameters['params'] = form;
    dio.options.baseUrl = 'https://css.odoouae.org/web';
    dio.interceptors.add(network.InterceptorsWrapper(onRequest: (options, handler) async {
      options.headers['Accept'] = "application/json";
      options.headers['Content-Type'] = "application/json";
      options.headers['Cookie'] = Get.find<AppSettingsController>().currentSessionId.value;

      return handler.next(options); //continue
    }, onResponse: (response, handler) {
      return handler.next(response); // continue
    }, onError: (network.DioError e, handler) async {
      showSnackBar(message: 'SERVER ERROR >>> ${e.toString()}');
      return handler.next(e);
    }));
    network.Response response = await dio.post('/session/authenticate', data: jsonEncode(parameters));

    if (response.statusCode == 200) {
      try {
        var username = response.data['result']['username'];
        var uid = response.data['result']['uid'];
        print('DEBUG: UID is $uid');

        if (username != null && username != '' && uid != 'null' && uid != '') {
          var cookies = response.headers.map['set-cookie'];
          var session = cookies!.first.split(';');
          Get.find<AppSettingsController>().currentSessionId(session.first);
          Get.find<AppSettingsController>().currentUserId(uid);
          var data = AuthenticateModel.fromJson(response.data);
          return data;

        } else {
          showSnackBar(message: 'Authentication Failed \nPlease verify username and password.');
        }
      } catch (e) {
        showSnackBar(message: 'Authentication Failed \nPlease verify username and password. \n\n• ${e.toString()}');
        return null;
      }
    } else {
      return null;
    }
  }

  logout() async {
    dio.options.baseUrl = 'https://css.odoouae.org/web';
    network.Response response = await dio.post('/session/destroy');
  }
}

class CommonAPIService extends BaseService {
  menuCount() async {
    var param = {'user_id': Get.find<AppSettingsController>().currentUserId.value};
    var response = await postRequest(endPoint: 'https://css.odoouae.org/web/api/menu/count', parameters: param);
    if (response != null) {
      return MenuModel.fromJson(response);
    } else {
      return null;
    }
  }

  getPutAway() async {
    var param = {'user_id': Get.find<AppSettingsController>().currentUserId.value};
    var response = await postRequest(endPoint: 'https://css.odoouae.org/web/stock/get_put_away', parameters: param);
    if (response != null) {
      return RecieveModel.fromJson(response);
    } else {
      return null;
    }
  }

  getRecieveList() async {
    var param = {'user_id': Get.find<AppSettingsController>().currentUserId.value};
    var response = await postRequest(endPoint: 'https://css.odoouae.org/web/stock/receive/list', parameters: param);
    if (response != null) {
      return RecieveModel.fromJson(response);
    } else {
      return null;
    }
  }

  getAllTruckList() async {
    var param = {'user_id': Get.find<AppSettingsController>().currentUserId.value};
    var response = await postRequest(endPoint: 'https://css.odoouae.org/web/truck/grn_create_list', parameters: param);
    if (response != null) {
      return AllTruckListModel.fromJson(response);
    } else {
      return null;
    }
  }

  saveTruckSelection({required pickingId, required packingId, required truckId}) async {
    var param = {
      'user_id': Get.find<AppSettingsController>().currentUserId.value,
      'picking_id': pickingId,
      'packing_id': packingId,
      'truck_id': truckId,
    };
    var response = await postRequest(endPoint: 'https://css.odoouae.org/web/truck/grn_update_truck', parameters: param);
    if (response != null) {
      return response;
    } else {
      return null;
    }
  }

  getDeliveryList() async {
    var param = {'user_id': Get.find<AppSettingsController>().currentUserId.value};
    var response = await postRequest(endPoint: 'https://css.odoouae.org/web/stock/delivery/list', parameters: param);
    if (response != null) {
      return DeliveryModel.fromJson(response);
    } else {
      return null;
    }
  }

  getPendingOrderList({orderId}) async {
    var param = {'order_id': orderId};
    print('DEBUG: OrderId is $orderId');

    var response = await postRequest(endPoint: 'https://css.odoouae.org/web/order/pending/qty', parameters: param);
    if (response != null) {
      return response;
    } else {
      return null;
    }
  }

  getRecieveListSingle({packingId}) async {
    var param = {'packing_id': packingId};
    var response = await postRequest(endPoint: 'https://css.odoouae.org/web/stock/receive/list/single', parameters: param);
    if (response != null) {
      return RecieveSingleModel.fromJson(response);
    } else {
      return null;
    }
  }

  getDeliveryListSingle({orderId}) async {
    var param = {'order_id': orderId};
    print('DEBUG: OrderId is $orderId');

    var response = await postRequest(endPoint: 'https://css.odoouae.org/web/stock/delivery/list/single', parameters: param);
    if (response != null) {
      return DeliveryLocationModel.fromJson(response);
    } else {
      return null;
    }
  }

  getDeliveryProductList({pickingId, locationBarcode,  order_id}) async {
    var param = {'picking_id': pickingId, 'location_barcode': locationBarcode, 'order_id':order_id};
    var response = await postRequest(endPoint: 'https://css.odoouae.org/web/stock/delivery/location/product/list', parameters: param);
    if (response != null) {
      return DeliveryProductListModel.fromJson(response);
    } else {
      return null;
    }
  }

  getTruckList() async {
    var response = await postRequest(endPoint: 'https://css.odoouae.org/web/truck/container/details');
    if (response != null) {
      return TruckListModel.fromJson(response);
    } else {
      return null;
    }
  }

  truckSubmit({
    required pickingId,
    required driverName,
    required mobileNo,
    required truckNo,
    required containerNo,
    required truckTypeId,
    required truckCapacityId,
    required containerTypeId,
  }) async {
    var param = {
      'picking_id': pickingId,
      'driver_name': driverName,
      'mobile_number': mobileNo,
      'truck_no': driverName,
      'container_no': containerNo,
      'truck_type_id': truckTypeId,
      'truck_capacity_id': truckCapacityId,
      'container_type_id': containerTypeId,
    };
    var response = await postRequest(endPoint: 'https://css.odoouae.org/web/truck/details', parameters: param);
    if (response != null) {
      return response;
    } else {
      return null;
    }
  }

  addTruckSubmit({
    required driverName,
    required mobileNo,
    required truckNo,
    required sealNo,
    required containerNo,
    required truckTypeId,
    required totalQty,
    required truckCapacityId,
    required containerTypeId,
  }) async {
    var param = {
      'user_id': Get.find<AppSettingsController>().currentUserId.value,
      'driver_name': driverName,
      'mobile_number': mobileNo,
      'seal_no': sealNo,
      'truck_no': driverName,
      'container_no': containerNo,
      'total_qty': totalQty,
      'truck_type_id': truckTypeId,
      'truck_capacity_id': truckCapacityId,
      'container_type_id': containerTypeId,
    };
    var response = await postRequest(endPoint: 'https://css.odoouae.org/web/truck/grn_create', parameters: param);
    if (response != null) {
      return response;
    } else {
      return null;
    }
  }

  getDeliveryLocationList({pickingId}) async {
    var param = {'picking_id': pickingId};
    var response = await postRequest(endPoint: 'https://css.odoouae.org/web/stock/delivery/location/list', parameters: param);
    if (response != null) {
      return DeliveryLocationModel.fromJson(response);
    } else {
      return null;
    }
  }

  getPutawayListSingle({packingId}) async {
    var param = {'packing_id': packingId};
    var response = await postRequest(endPoint: 'https://css.odoouae.org/web/stock/putaway/list/single', parameters: param);
    if (response != null) {
      return RecieveSingleModel.fromJson(response);
    } else {
      return null;
    }
  }

  getRecieveProductList({pickingId}) async {
    var param = {'picking_id': pickingId};
    var response = await postRequest(endPoint: 'https://css.odoouae.org/web/stock/picking/data', parameters: param);
    if (response != null) {
      return RecieveProductListModel.fromJson(response);
    } else {
      return null;
    }
  }

  getBarcodeLocation({barcode}) async {
    var param = {'barcode': barcode};
    var response = await postRequest(endPoint: 'https://css.odoouae.org/web/barcode/location', parameters: param);
    if (response != null) {
      return LocationModel.fromJson(response);
    } else {
      return null;
    }
  }

  getScannedLocation({pickingId, productId, moveId}) async {
    var param = {'picking_id': pickingId, 'product_id': productId, 'move_id': moveId};
    var response = await postRequest(endPoint: 'https://css.odoouae.org/web/stock/picking/existing/line', parameters: param);
    if (response != null) {
      var data = ScannedLocationModel.fromJson(response);
      return data;
    } else {
      return null;
    }
  }

  submitScannedLocation({pickingId, packingLineId, productId, moveId, List? lineIds}) async {
    var param = {
      'picking_id': pickingId,
      'product_id': productId,
      'move_id': moveId,
      'packing_line_id': packingLineId,
      'line_ids': lineIds,
    };
    var response = await postRequest(endPoint: 'https://css.odoouae.org/web/stock/picking/data/done', parameters: param);
    if (response != null) {
      return SubmitModel.fromJson(response);
      // return response;
    } else {
      return null;
    }
  }

  submitScannedDeliveryLocation({delivery_location_id,pickingId, qty, moveId, moveLineId}) async {
    var param = {
      'picking_id': pickingId,
      'qty': qty,
      'move_id': moveId,
      'move_line_id': moveLineId,
      'delivery_location_id':delivery_location_id
    };
    var response = await postRequest(endPoint: 'https://css.odoouae.org/web/stock/delivery/data/done', parameters: param);
    if (response != null) {
      return SubmitModel.fromJson(response);
    } else {
      return null;
    }
  }

  uploadRecieveImages({XFile? image, packingLineId, skuName}) async {
    if (image != null) {
      Uint8List imagebytes = await image.readAsBytes(); //convert to bytes
      String base64string = base64.encode(imagebytes);
      var param = {
        'packing_line_id': packingLineId,
        'name': '${skuName}_${DateTime.now().toIso8601String()}.jpg',
        'image': base64string,
      };

      var response = await postRequest(endPoint: 'https://css.odoouae.org/web/stock/picking/data/attachment', parameters: param);
      if (response != null) {
        return response;
      } else {
        return null;
      }
    }
  }

  getRecieveImages({packingLineId}) async {
    if (packingLineId != null) {
      var param = {'packing_line_id': packingLineId};
      var response = await getRequest(endPoint: 'https://css.odoouae.org/web/stock/picking/get/attachment', parameters: param);
      if (response != null) {
        return RecieveImageModel.fromJson(response);
      } else {
        return null;
      }
    }
  }

  deleteRecieveImages({imageName, packingListLineId}) async {
    if (imageName != null && packingListLineId != null) {
      var param = {'packing_line_id': packingListLineId, 'name': '$imageName'};

      var response = await postRequest(endPoint: 'https://css.odoouae.org/web/stock/picking/remove/attachment', parameters: param);
      if (response != null) {
        return response;
      } else {
        return null;
      }
    }
  }

  getWarehouseList() async {
    var param = {'user_id': Get.find<AppSettingsController>().currentUserId.value};

    var response = await postRequest(endPoint: 'https://css.odoouae.org/web/stock/warehouse/list', parameters: param);
    if (response != null) {
      return WarehouseListModel.fromJson(response);
    } else {
      return null;
    }
  }

  getWarehouseLocationList({warehouseId, barcode}) async {
    var param = {'warehouse_id': warehouseId, 'location_barcode': barcode};

    var response = await postRequest(endPoint: 'https://css.odoouae.org/web/stock/warehouse/location/list', parameters: param);
    if (response != null) {
      return WarehouseLocationModel.fromJson(response);
    } else {
      return null;
    }
  }

  getWarehouseProductList({locationId, customerId}) async {
    var param = {'location_id': locationId, 'customer_id': customerId};

    var response = await postRequest(endPoint: 'https://css.odoouae.org/web/stock/warehouse/location/product/list', parameters: param);
    if (response != null) {
      return WarehouseProductListModel.fromJson(response);
    } else {
      return null;
    }
  }

  getWarehouseCustomerList({locationId}) async {
    var param = {'location_id': locationId};

    var response = await postRequest(endPoint: 'https://css.odoouae.org/web/stock/warehouse/location/customer/list', parameters: param);
    if (response != null) {
      return CustomerListModel.fromJson(response);
    } else {
      return null;
    }
  }

  getWarehouseSingleProductList({singleProductId, locationId}) async {
    var param = {'location_id': locationId, 'product_id': singleProductId};

    var response = await postRequest(endPoint: 'https://css.odoouae.org/web/stock/warehouse/location/product/single/list', parameters: param);
    if (response != null) {
      return WarehouseSingleProductListModel.fromJson(response);
    } else {
      return null;
    }
  }

  getDesitinationLocation({barcode, warehouseId}) async {
    var param = {'warehouse_id': warehouseId, 'dest_location_barcode': barcode};

    var response = await postRequest(endPoint: 'https://css.odoouae.org/web/stock/warehouse/destination/location', parameters: param);
    if (response != null) {
      return WarehouseDestinationLocationModel.fromJson(response);
    } else {
      return null;
    }
  }

  transferSubmit({locationId, locationDestinationId, productId, productQty, lotId, warehouseId}) async {
    var param = {
      'warehouse_id': warehouseId,
      'dest_location_id': locationDestinationId,
      'location_id': locationId,
      'product_id': productId,
      'product_qty': productQty,
      'lot_id': lotId,
      'user_id': Get.find<AppSettingsController>().currentUserId.value
    };

    var response = await postRequest(endPoint: 'https://css.odoouae.org/web/stock/warehouse/transfer/done', parameters: param);
    if (response != null) {
      return response;
    } else {
      return null;
    }
  }

  getWarehouseStocks() async {
    var param = {'user_id': Get.find<AppSettingsController>().currentUserId.value};

    var response = await postRequest(endPoint: 'https://css.odoouae.org/web/stock/warehouse/transfers', parameters: param);
    if (response != null) {
      return WarehouseStockListModel.fromJson(response);
    } else {
      return null;
    }
  }

  getWarehouseStockProductList({trasnferId}) async {
    var param = {'transfer_id': trasnferId};

    var response = await postRequest(endPoint: 'https://css.odoouae.org/web/stock/wt/product/list', parameters: param);
    if (response != null) {
      return WarehouseStockProductListModel.fromJson(response);
    } else {
      return null;
    }
  }

  getWarehouseStockLocationList({transferLineId}) async {
    var param = {'transfer_line_id': transferLineId};

    var response = await postRequest(endPoint: 'https://css.odoouae.org/web/stock/out/location/list', parameters: param);
    if (response != null) {
      return WarehouseLocationListModel.fromJson(response);
    } else {
      return null;
    }
  }

  checkStockInBalanceQuantity({transferLineId}) async {
    var param = {'transfer_line_id': transferLineId};

    var response = await postRequest(endPoint: 'https://css.odoouae.org/web/stock/in/balance/qty', parameters: param);
    if (response != null) {
      return WarehouseCheckQtyBal.fromJson(response);
    } else {
      return null;
    }
  }

  getWarehouseStockInLocationList({required transferLineId, required transferId, required barcode}) async {
    var param = {'transfer_line_id': transferLineId, 'transfer_id': transferId, 'location_barcode': barcode};

    var response = await postRequest(endPoint: 'https://css.odoouae.org/web/stock/in/scan/barcode', parameters: param);
    if (response != null) {
      return WarehouseLocationListModel.fromJson(response);
    } else {
      return null;
    }
  }

  previewScannedDetail({required transferLineId}) async {
    var param = {'transfer_line_id': transferLineId};

    var response = await postRequest(endPoint: 'https://css.odoouae.org/web/stock/out/scanned/details', parameters: param);
    if (response != null) {
      return ScannedDataListModel.fromJson(response);
    } else {
      return null;
    }
  }

  submitScannedWarehouseLocation({required moveId, required transferLineid, required lotId, required locationId, required quantity, required productId}) async {
    var param = {'move_id': moveId, 'product_id': productId, 'location_id': locationId, 'quantity': quantity, 'lot_id': lotId, 'transfer_line_id': transferLineid};

    var response = await postRequest(endPoint: 'https://css.odoouae.org/web/stock/out/submit', parameters: param);
    if (response != null) {
      return response;
    } else {
      return null;
    }
  }

  submitStockInScannedLocation({required moveId, required transferLineid, required lotId, required locationId, required quantity}) async {
    var param = {'move_id': moveId, 'location_dest_id': locationId, 'quantity': quantity, 'lot_id': lotId, 'transfer_line_id': transferLineid};

    var response = await postRequest(endPoint: 'https://css.odoouae.org/web/stock/in/submit', parameters: param);
    if (response != null) {
      return response;
    } else {
      return null;
    }
  }
}
