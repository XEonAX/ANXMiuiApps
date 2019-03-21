package com.nexstreaming.app.common.tracelog;

import java.util.WeakHashMap;

abstract class TLP<TREQUEST, TRESPONSE extends BaseResponse> {
    private static WeakHashMap<Object, TLPResponseInfo> a = new WeakHashMap();

    public interface BaseResponse {
        int getResult();
    }

    public static class TLPResponseInfo {
        public final long cacheExpiration;
        public final long cacheRefresh;
        public final long dataReceived;
        public final boolean fromCache;
        public final String originalSrc;

        TLPResponseInfo(boolean z, long j, long j2, long j3, String str) {
            this.fromCache = z;
            this.cacheExpiration = j;
            this.cacheRefresh = j2;
            this.dataReceived = j3;
            this.originalSrc = str;
        }
    }
}
