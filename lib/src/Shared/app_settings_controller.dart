import 'dart:async';
import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:css_stranbys/src/Shared/mobile_scan/scannerError.dart';
import 'package:css_stranbys/src/Shared/scan_helper.dart';
import 'package:css_stranbys/src/Shared/util/helper/common_helper.dart';
import 'package:css_stranbys/src/Shared/util/theme/theme_constant.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_outline_button.dart';
import 'package:css_stranbys/src/Shared/widgets/fi_text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:honeywell_scanner/honeywell_scanner.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:sizer/sizer.dart';
import 'app_page.dart';
import 'base_service.dart';
import 'model/authenticate/authenticate_model.dart';

class AppSettingsController extends GetxController {
  var currentLanguage = 'en'.obs;
  var currentUserName = ''.obs;
  var currentUserId = 0.obs;
  var currentSessionId = ''.obs;
  var showPassword = false.obs;
  var loginPasswordCtrl = TextEditingController();
  var loginEmailCtrl = TextEditingController();
  var currentActiveTab = 0.obs;

  var isLoading = false.obs;

  var barcodeString = ''.obs;
  var barcodeSymbology = ''.obs;
  var scanTime = ''.obs;
  var showCheckInternet = false.obs;
  var isHoneyWellSupported = false.obs;
  var isMenuDialogOpen = false.obs;
  late HoneywellScanner honeywellScanner;

  @override
  void onInit() {
    super.onInit();
    honeywellScanner = HoneywellScanner();
    initialize();
  }

  initialize() async {
    isHoneyWellSupported.value = await honeywellScanner.isSupported();
    if (isHoneyWellSupported.isTrue) {
      configureHoneyWell();
    } else {
      configureZebra();
    }
  }

  configureHoneyWell() {
    honeywellScanner = HoneywellScanner(onScannerDecodeCallback: (ScannedData? scannedData) {
      barcodeString.value = scannedData?.code ?? '';
      barcodeSymbology.value = scannedData?.codeType ?? '';
      scanTime.value = DateFormat('dd/MM/yy hh:mm a').format(DateTime.now());
    }, onScannerErrorCallback: (error) {
      showSnackBar(message: error.toString());
    });
    List<CodeFormat> codeFormats = CodeFormatUtils.ALL_1D_FORMATS;
    Map<String, dynamic> properties = {
      ...CodeFormatUtils.getAsPropertiesComplement(codeFormats),
      'DEC_CODABAR_START_STOP_TRANSMIT': true,
      'DEC_EAN13_CHECK_DIGIT_TRANSMIT': true,
    };
    honeywellScanner.setProperties(properties);
    honeywellScanner.startScanner();
  }

  configureZebra() {
    ZebraScanHelper.scanChannel.receiveBroadcastStream().listen((event) {
      Map barcodeScan = jsonDecode(event);
      barcodeString.value = barcodeScan['scanData'];
      barcodeSymbology.value = barcodeScan['symbology'];
      scanTime.value = barcodeScan['dateTime'];
    }, onError: (Object error) {
      barcodeString.value = "Barcode: error";
      barcodeSymbology.value = "Symbology: error";
      scanTime.value = "At: error";
    });
    ZebraScanHelper.createProfile("DataWedgeFlutterStranbys");
    ZebraScanHelper.createProfile("DataWedgeFlutterDemo");
  }

  getMobileBarcode(context) {
    barcodeString('');
    var isScanMode = true.obs;
    var focusNode = FocusNode();
    var barcodeCtrl = TextEditingController();
    var mobileScanCtrl = MobileScannerController(
      detectionTimeoutMs: 5000,
      detectionSpeed: DetectionSpeed.unrestricted,
    );
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return WillPopScope(
            onWillPop: () async {
              return false;
            },
            child: AlertDialog(
              contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              titlePadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Expanded(
                    child: Text(
                  'Barcode Scanner • • ',
                  style: FITextStyle.xsMBold,
                  maxLines: 1,
                )),
                Obx(() => Switch(
                      value: isScanMode.value,
                      onChanged: (bool value) {
                        isScanMode(value);
                        if (value == false) {
                          mobileScanCtrl.stop();
                          focusNode.requestFocus();
                        } else {
                          mobileScanCtrl.start();
                        }
                      },
                    )),
                FIOutLineButton(
                    onPressed: () {
                      barcodeString('');
                      if (isScanMode.value == false) {
                        mobileScanCtrl.stop();
                        focusNode.requestFocus();
                      } else {
                        mobileScanCtrl.start();
                      }
                    },
                    text: 'Reset'),
              ]),
              content: SizedBox(
                width: 100.w,
                height: 100.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Obx(() => isScanMode.isFalse
                        ? FITextInput(
                            focusNode: focusNode,
                            labelText: 'Enter Barcode',
                            hintText: 'WHXX-AA-01-XX',
                            inputFormatters: [
                              UpperCaseTextFormatter(),
                            ],
                            controller: barcodeCtrl,
                            onChange: (value) {
                              barcodeString(value ?? "");
                            },
                          ).paddingSymmetric(vertical: 30)
                        : SizedBox(
                            width: 80.w,
                            height: 70,
                            child: MobileScanner(
                                startDelay: false,
                                fit: BoxFit.fitWidth,
                                scanWindow: Rect.fromCenter(
                                  center: Offset(50.w, 25), // reduce to scan below line
                                  width: 100.w,
                                  height: 65,
                                ),
                                overlay: Container(
                                  width: 45.w,
                                  height: 5,
                                  decoration: BoxDecoration(
                                    color: Colors.green.shade200.withOpacity(0.3),
                                  ),
                                ),
                                controller: mobileScanCtrl,
                                errorBuilder: (context, error, child) => ScannerErrorWidget(error: error),
                                onDetect: (capture) {
                                  barcodeString(capture.barcodes.first.rawValue);
                                }),
                          )),
                  ],
                ),
              ),
              actions: [
                Obx(() => Center(
                        child:
                            Text(barcodeString.value != '' ? barcodeString.value : 'Please Scan Barcode', overflow: TextOverflow.ellipsis, style: FITextStyle.xsMBold)))
                    .paddingSymmetric(vertical: 40),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                              style:
                                  ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade300, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
                              onPressed: () {
                                Get.back();
                              },
                              child: Text('Done', style: TextStyle(color: Colors.grey.shade700)))
                          .paddingSymmetric(horizontal: 10),
                    ),
                    Expanded(
                      child: ElevatedButton(
                              style:
                                  ElevatedButton.styleFrom(backgroundColor: Colors.red.shade200, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
                              onPressed: () {
                                Get.back();
                                mobileScanCtrl.dispose();
                                barcodeCtrl.dispose();
                              },
                              child: Text('Cancel', style: TextStyle(color: Colors.grey.shade700)))
                          .paddingSymmetric(horizontal: 10),
                    ),
                  ],
                )
              ],
            ),
          );
        });
  }

  resetScanData() {
    barcodeString('');
    scanTime('');
    barcodeSymbology('');
  }

  authenticate() async {
    var APIService = CommonAPIService();

    if (loginPasswordCtrl.text.isNotEmpty && loginEmailCtrl.text.isNotEmpty) {
      AuthenticateModel? response = await APIService.authenticate(login: loginEmailCtrl.text, password: loginPasswordCtrl.text);
      if (response != null && currentSessionId.value != '') {
        currentUserName(response.result?.name ?? '');
        Get.offAllNamed(AppRoutes.DASHBOARD);
      } else {
        showSnackBar(message: 'Invalid Credentials /Server Error', position: SnackPosition.BOTTOM);
      }
    } else {
      showSnackBar(message: 'Please Enter Username & Password');
    }
    showPassword(false);
    loginPasswordCtrl.text = '';
    loginEmailCtrl.text = '';
    FIKeyboardDismiss();
  }

  logOut() async {
    currentSessionId('');
    currentUserName('');
    resetScanData();

    var apiService = CommonAPIService();
    try {
      await apiService.logout();
    } catch (e) {
    } finally {
      Get.offAllNamed(AppRoutes.LOGIN);
    }
  }

  Future? openCamera() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile = await picker.pickImage(source: ImageSource.camera, imageQuality: 70, maxHeight: 100, maxWidth: 100);
    if (pickedFile != null) {
      return pickedFile;
    } else
      return null;
  }

  buildKeyValue({key, value}) => RichText(
          text:
              TextSpan(text: '${key} : ', style: FITextStyle.sMBold, children: [TextSpan(text: '${value ?? ''}', style: FITextStyle.sMBold.copyWith(color: Colors.red))]))
      .paddingSymmetric(vertical: 3, horizontal: 2);

  buildKeyValueAlign({key, value, double width = 90, color}) => Row(children: [
        SizedBox(width: width, child: Text('${key ?? ''} ', style: FITextStyle.xsMBold.copyWith(fontWeight: FontWeight.w500)).paddingSymmetric(horizontal: 3)),
        Text(':  ', style: FITextStyle.xsMBold.copyWith(fontWeight: FontWeight.w500)),
        Expanded(
          child: Text(
            '${value ?? ''}',
            style: FITextStyle.sMBold.copyWith(color: color ?? Colors.red.shade800, fontWeight: FontWeight.w500, fontSize: 15),
          ),
        )
      ]);

  buildSearchField({required search_controller, onchange}) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        TextFormField(
            controller: search_controller,
            onChanged: onchange,
            style: FITextStyle.xxxs.copyWith(fontWeight: FontWeight.w400),
            decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                labelStyle: FITextStyle.xxxsMBold,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0), borderSide: BorderSide.none),
                suffixIcon: const Icon(Icons.arrow_forward_ios_rounded, size: 23, color: Colors.transparent),
                hintText: 'Search'.tr,
                hintStyle: FITextStyle.xxxs.copyWith(color: Colors.grey.shade400),
                errorStyle: FITextStyle.xxxs.copyWith(color: Colors.white),
                isDense: true,
                contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0), borderSide: const BorderSide(color: Colors.red, width: 2)),
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0), borderSide: BorderSide(color: Colors.grey.shade500, width: 2)),
                floatingLabelBehavior: FloatingLabelBehavior.auto)),
        ValueListenableBuilder(
            valueListenable: search_controller,
            builder: (BuildContext context, value, Widget? child) {
              if (search_controller.text != null && search_controller.text != '' && search_controller.text.length > 0) {
                return InkResponse(
                  onTap: () {
                    search_controller.text = '';
                    FIKeyboardDismiss();
                  },
                  child: Icon(
                    Icons.close,
                    color: Colors.red.shade600,
                  ).paddingSymmetric(horizontal: 10),
                );
              } else {
                return const SizedBox.shrink();
              }
            })
      ],
    );
  }
}

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}
