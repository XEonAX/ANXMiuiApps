package com.taobao.ma.ar.api;

import com.taobao.ma.ar.ARInputParam;
import com.taobao.ma.ar.ARResult;
import com.taobao.ma.decode.MaDecode;

public class MaArAPI {
    public static ARResult detectGen3Markers(ARInputParam inputParam) {
        return MaDecode.detectGen3Markers(inputParam);
    }
}
