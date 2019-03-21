package com.nexstreaming.app.common.nexasset.store;

import com.nexstreaming.app.common.localprotocol.b;
import com.nexstreaming.app.common.localprotocol.c.a;
import java.io.IOException;

public class AssetStoreSock {
    private static final String ASSET_STORE_ADDR = "com.nexstreaming.appstore";
    static final int REQUEST_COMMUNICATION_KEY = 1;
    static final int REQUEST_ENCAES_KEY = 3;
    static final short REQUEST_END = (short) 30;
    static final short REQUEST_SEC = (short) 20;
    static final int REQUEST_SESSIONID = 2;
    static final short REQUEST_START = (short) 10;
    private static final String TAG = "AssetStoreSock";

    public static a Start(byte[] bArr, int i) {
        b bVar = new b(ASSET_STORE_ADDR);
        a aVar = null;
        if (bVar.a()) {
            try {
                bVar.a((short) REQUEST_START, i, bArr);
                aVar = bVar.a((short) REQUEST_START, i, false);
            } catch (IOException e) {
                e.printStackTrace();
            }
            bVar.b();
        }
        return aVar;
    }

    public static a requestSECUseCommKey(int i, String str) {
        b bVar = new b(ASSET_STORE_ADDR);
        a aVar = null;
        if (bVar.a()) {
            try {
                bVar.a((short) REQUEST_SEC, i, str.getBytes());
                aVar = bVar.a((short) REQUEST_SEC, i, false);
            } catch (IOException e) {
                e.printStackTrace();
            }
            bVar.b();
        }
        return aVar;
    }

    public static int End(int i) {
        b bVar = new b(ASSET_STORE_ADDR);
        a aVar = null;
        if (bVar.a()) {
            try {
                bVar.a((short) REQUEST_END, i, "bye".getBytes());
                aVar = bVar.a((short) REQUEST_END, i, false);
            } catch (IOException e) {
                e.printStackTrace();
            }
            bVar.b();
        }
        if (aVar == null) {
            return -1;
        }
        return aVar.f;
    }
}
