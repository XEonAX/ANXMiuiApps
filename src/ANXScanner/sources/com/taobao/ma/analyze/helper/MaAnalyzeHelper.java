package com.taobao.ma.analyze.helper;

import android.graphics.YuvImage;
import android.hardware.Camera;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.Size;
import android.net.Uri;
import android.text.TextUtils;
import com.alibaba.baichuan.android.trade.AlibcTrade;
import com.alibaba.baichuan.trade.common.webview.jsbridge.AlibcJsResult;
import com.taobao.ma.common.result.MaType;
import com.taobao.ma.common.result.MaWapperResult;
import com.taobao.ma.decode.DecodeType;
import com.taobao.ma.util.StringUtils;

public class MaAnalyzeHelper {
    private static final String ANTI_FAKE_URI_HOST = "s.tb.cn";

    public static boolean isMedicineCode(String text) {
        if (StringUtils.isEmpty(text)) {
            return false;
        }
        if ((text.startsWith(AlibcJsResult.APP_NOT_INSTALL) && text.length() == 20) || ((text.startsWith("10") || text.startsWith(AlibcTrade.ERRCODE_PAGE_NATIVE)) && text.length() == 16)) {
            return true;
        }
        return false;
    }

    public static boolean isTBAntiFakeCode(String text) {
        if (StringUtils.isEmpty(text)) {
            return false;
        }
        Uri uri = Uri.parse(text);
        if (uri == null || uri.getHost() == null) {
            return false;
        }
        return TextUtils.equals(ANTI_FAKE_URI_HOST, uri.getHost().toLowerCase());
    }

    public static boolean is4GCode(int subType) {
        return subType == 2050;
    }

    public static boolean isGen3(int subType) {
        return subType == 32768;
    }

    public static boolean isDMCode(int subType) {
        return subType == 1024;
    }

    public static YuvImage buildYuvImage(byte[] data, Camera camera) {
        if (data == null || data.length == 0 || camera == null) {
            return null;
        }
        YuvImage yuvImage = null;
        Parameters parameters = camera.getParameters();
        if (parameters == null) {
            return null;
        }
        Size size = parameters.getPreviewSize();
        if (size == null) {
            return null;
        }
        if (camera.getParameters().getPreviewFormat() > 0 && size.width > 0 && size.height > 0) {
            yuvImage = new YuvImage(data, camera.getParameters().getPreviewFormat(), size.width, size.height, null);
        }
        return yuvImage;
    }

    public static MaType getMaType(MaWapperResult wapperResult) {
        switch (wapperResult.type) {
            case 0:
                return MaType.PRODUCT;
            case 1:
                if (isTBAntiFakeCode(wapperResult.strCode)) {
                    return MaType.TB_ANTI_FAKE;
                }
                if (isGen3(wapperResult.subType)) {
                    return MaType.GEN3;
                }
                if (is4GCode(wapperResult.subType)) {
                    return MaType.TB_4G;
                }
                if (isDMCode(wapperResult.subType)) {
                    return MaType.DM;
                }
                return MaType.QR;
            case 2:
                if (isMedicineCode(wapperResult.strCode)) {
                    return MaType.MEDICINE;
                }
                return MaType.EXPRESS;
            case DecodeType.ONE /*127*/:
                if (wapperResult.subType == 128) {
                    return MaType.PRODUCT;
                }
                break;
        }
        return null;
    }

    public static boolean isBarCode(int decodeType, int decodeSubType) {
        return decodeType == 0 || decodeType == 2 || (decodeType == DecodeType.ONE && decodeSubType == 128);
    }

    public static boolean isQrCode(int decodeType, MaType maType, int decodeSubType) {
        return decodeType == 1 && maType == MaType.QR && decodeSubType == 512;
    }

    public static boolean isTBAntiFakeCode(int decodeType, MaType maType) {
        return decodeType == 1 && maType == MaType.TB_ANTI_FAKE;
    }

    public static boolean isGen3Code(int decodeType, MaType maType, int decodeSubType) {
        return decodeType == 1 && maType == MaType.GEN3 && decodeSubType == 32768;
    }

    public static boolean is4GCode(int decodeType, MaType maType, int decodeSubType) {
        return decodeType == 1 && maType == MaType.TB_4G && decodeSubType == 2050;
    }

    public static boolean isDMCode(int decodeType, MaType maType, int decodeSubType) {
        return decodeType == 1 && maType == MaType.DM && decodeSubType == 1024;
    }
}
