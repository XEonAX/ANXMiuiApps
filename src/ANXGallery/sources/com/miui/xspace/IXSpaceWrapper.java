package com.miui.xspace;

import android.content.Context;
import java.io.File;

interface IXSpaceWrapper {
    File getXSpacePath();

    boolean isXSpaceEnable(Context context);
}
