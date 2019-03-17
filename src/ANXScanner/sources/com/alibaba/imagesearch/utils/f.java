package com.alibaba.imagesearch.utils;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import com.alibaba.baichuan.android.trade.model.OpenType;

public class f {
    public static int a(Context context, String str, String str2) {
        return context.getResources().getIdentifier(str2, str, context.getPackageName());
    }

    public static final Rect a(String str) {
        if (TextUtils.isEmpty(str)) {
            return new Rect();
        }
        String[] split = str.split(",");
        Rect rect = new Rect();
        if (split.length != 4) {
            return rect;
        }
        try {
            rect.left = Integer.valueOf(split[0].trim()).intValue();
            rect.top = Integer.valueOf(split[2].trim()).intValue();
            rect.right = Integer.valueOf(split[1].trim()).intValue();
            rect.bottom = Integer.valueOf(split[3].trim()).intValue();
            return rect;
        } catch (Exception e) {
            return rect;
        }
    }

    public static final OpenType a(int i) {
        return i == 1 ? OpenType.Native : i == 2 ? OpenType.H5 : OpenType.Auto;
    }

    public static final String a(Rect rect) {
        if (rect == null) {
            return "";
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(rect.left);
        stringBuilder.append(",");
        stringBuilder.append(rect.right);
        stringBuilder.append(",");
        stringBuilder.append(rect.top);
        stringBuilder.append(",");
        stringBuilder.append(rect.bottom);
        return stringBuilder.toString();
    }
}
