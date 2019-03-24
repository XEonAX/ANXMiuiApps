package com.xiaomi.mistatistic.sdk.data;

import java.util.Map;
import miui.yellowpage.Tag.TagWebService.CommonResult;

/* compiled from: CustomIncrementalEvent */
public class d extends e {
    public d(String str, String str2) {
        this(str, str2, null);
    }

    public d(String str, String str2, Map<String, String> map) {
        super(str, str2, 1, map);
    }

    public String a() {
        return CommonResult.RESULT_TYPE_EVENT;
    }
}
