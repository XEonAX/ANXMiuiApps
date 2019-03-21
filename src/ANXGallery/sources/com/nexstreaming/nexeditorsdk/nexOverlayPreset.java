package com.nexstreaming.nexeditorsdk;

import android.content.Context;
import android.graphics.Bitmap;
import com.nexstreaming.app.common.nexasset.assetpackage.ItemCategory;
import com.nexstreaming.app.common.nexasset.assetpackage.ItemType;
import com.nexstreaming.app.common.nexasset.assetpackage.c;
import com.nexstreaming.app.common.nexasset.assetpackage.e;
import com.nexstreaming.app.common.nexasset.assetpackage.f;
import com.nexstreaming.kminternal.kinemaster.config.a;
import java.io.IOException;
import java.util.ArrayList;

public final class nexOverlayPreset {
    private static String TAG = "OverlayPresetLoad";
    private static nexOverlayPreset sSingleton = null;

    public static nexOverlayPreset getOverlayPreset(Context context) {
        if (sSingleton == null) {
            sSingleton = new nexOverlayPreset(context);
        }
        return sSingleton;
    }

    public static nexOverlayPreset getOverlayPreset() {
        return sSingleton;
    }

    nexOverlayPreset(Context context) {
    }

    public nexOverlayImage getOverlayImage(String str) {
        f c = c.a().c(str);
        if (c != null && c.getCategory() == ItemCategory.overlay && c.getType() == ItemType.overlay) {
            return new nexOverlayImage(str, true);
        }
        return null;
    }

    public String[] getIDs() {
        ArrayList arrayList = new ArrayList();
        for (f fVar : c.a().a(ItemCategory.overlay)) {
            if (!fVar.isHidden() && fVar.getType() == ItemType.overlay) {
                arrayList.add(fVar.getId());
            }
        }
        String[] strArr = new String[arrayList.size()];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= strArr.length) {
                return strArr;
            }
            strArr[i2] = (String) arrayList.get(i2);
            i = i2 + 1;
        }
    }

    public String[] getIDs(int i) {
        ArrayList arrayList = new ArrayList();
        for (f fVar : c.a().c(i)) {
            if (!fVar.isHidden() && fVar.getCategory() == ItemCategory.overlay && fVar.getType() == ItemType.overlay) {
                arrayList.add(fVar.getId());
            }
        }
        String[] strArr = new String[arrayList.size()];
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= strArr.length) {
                return strArr;
            }
            strArr[i3] = (String) arrayList.get(i3);
            i2 = i3 + 1;
        }
    }

    public Bitmap getIcon(String str, int i, int i2) {
        f c = c.a().c(str);
        if (c != null) {
            Bitmap a;
            try {
                a = e.a(a.a().b(), c, i, i2);
            } catch (IOException e) {
                a = null;
            }
            if (a == null) {
                try {
                    a = e.b(a.a().b(), c, i, i2);
                } catch (IOException e2) {
                }
            }
            if (a != null) {
                return a;
            }
        }
        return null;
    }
}
