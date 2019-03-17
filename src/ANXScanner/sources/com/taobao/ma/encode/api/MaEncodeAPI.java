package com.taobao.ma.encode.api;

import android.graphics.Bitmap;
import com.taobao.ma.common.log.MaLogger;
import com.taobao.ma.decode.MaDecode;
import com.taobao.ma.encode.InputParameters.MaEncodeInputParameters;
import com.taobao.ma.encode.MaGenerator;

public class MaEncodeAPI {
    @Deprecated
    public static Bitmap encodeMa(String content, Bitmap bitmap, int qrType) {
        return MaDecode.encode(content, bitmap, qrType, '0');
    }

    public static Bitmap encodeMa2(MaEncodeInputParameters input) {
        MaLogger.v("encodeMa2");
        return MaGenerator.facade(input);
    }
}
