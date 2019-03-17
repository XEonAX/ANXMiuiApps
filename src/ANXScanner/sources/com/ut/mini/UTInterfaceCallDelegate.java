package com.ut.mini;

import android.app.Activity;

public class UTInterfaceCallDelegate {
    public static void pageDisAppearByAuto(Activity aActivity) {
        UTPageHitHelper.getInstance().pageDisAppearByAuto(aActivity);
    }

    public static void pageAppearByAuto(Activity aActivity) {
        UTPageHitHelper.getInstance().pageAppearByAuto(aActivity);
    }
}
