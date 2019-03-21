package com.miui.gallery.util;

import android.content.Context;
import android.content.Intent;
import android.content.Intent.ShortcutIconResource;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutInfo.Builder;
import android.content.pm.ShortcutManager;
import android.graphics.Bitmap;
import android.graphics.drawable.Icon;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.android.internal.SystemPropertiesCompat;
import java.util.List;

public class ShortcutUtil {
    public static void createShortcut(Context context, String id, String title, Bitmap bitmap, int defResId, Intent intent) {
        if (VERSION.SDK_INT < 26) {
            Intent shortcutIntent = new Intent("com.android.launcher.action.INSTALL_SHORTCUT");
            shortcutIntent.setPackage(SystemPropertiesCompat.get("ro.miui.product.home", "com.miui.home"));
            shortcutIntent.putExtra("duplicate", false);
            shortcutIntent.putExtra("android.intent.extra.shortcut.NAME", title);
            if (bitmap != null) {
                shortcutIntent.putExtra("android.intent.extra.shortcut.ICON", bitmap);
            } else {
                shortcutIntent.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", ShortcutIconResource.fromContext(context, defResId));
            }
            shortcutIntent.putExtra("android.intent.extra.shortcut.INTENT", intent);
            context.sendBroadcast(shortcutIntent);
            return;
        }
        try {
            ShortcutManager shortcutManager = (ShortcutManager) context.getApplicationContext().getSystemService(ShortcutManager.class);
            if (shortcutManager.isRequestPinShortcutSupported()) {
                Icon icon;
                List<ShortcutInfo> shortcuts = shortcutManager.getPinnedShortcuts();
                if (BaseMiscUtil.isValid(shortcuts)) {
                    for (ShortcutInfo info : shortcuts) {
                        if (TextUtils.equals(info.getId(), id)) {
                            return;
                        }
                    }
                }
                if (bitmap != null) {
                    icon = Icon.createWithBitmap(bitmap);
                } else {
                    icon = Icon.createWithResource(context, defResId);
                }
                shortcutManager.requestPinShortcut(new Builder(context, id).setIcon(icon).setShortLabel(title).setIntent(intent).build(), null);
            }
        } catch (Object e) {
            Log.e("ShortcutUtil", "createShortcut error.\n", e);
        }
    }
}
