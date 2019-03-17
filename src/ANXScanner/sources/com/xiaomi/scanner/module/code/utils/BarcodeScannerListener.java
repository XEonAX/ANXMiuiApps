package com.xiaomi.scanner.module.code.utils;

import com.xiaomi.scanner.module.code.codec.QRCodeType;

public interface BarcodeScannerListener {
    boolean handleBarcode(String str, QRCodeType qRCodeType);
}
