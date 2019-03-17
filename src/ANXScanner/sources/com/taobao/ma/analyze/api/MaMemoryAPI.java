package com.taobao.ma.analyze.api;

import com.taobao.ma.decode.MaDecode;

public class MaMemoryAPI {
    public static void ReleaseCameraMemory() {
        MaDecode.releaseStaticMemory();
    }
}
