package com.taobao.ma.handler;

import android.hardware.Camera;
import com.taobao.ma.common.result.MaResult;

public abstract class MaHandler {
    public abstract MaResult decode(byte[] bArr, Camera camera);
}
