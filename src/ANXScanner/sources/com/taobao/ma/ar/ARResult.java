package com.taobao.ma.ar;

import java.io.UnsupportedEncodingException;
import mtopsdk.common.util.SymbolExpUtil;

public class ARResult {
    public byte[] byteId = new byte[100];
    public int byteIdLen;
    public int dim;
    public String id = "";
    public int pointNum;
    public int status;
    public int[] x = new int[4];
    public int[] y = new int[4];

    public ARResult convertId() {
        try {
            this.id = new String(this.byteId, 0, this.byteIdLen, SymbolExpUtil.CHARSET_UTF8);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return this;
    }
}
