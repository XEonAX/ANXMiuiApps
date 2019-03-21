package com.miui.xspace;

import android.content.Context;
import java.io.File;

class XmsXSpace implements IXSpaceWrapper {
    XmsXSpace() {
    }

    public boolean isXSpaceEnable(Context context) {
        return false;
    }

    public File getXSpacePath() {
        return null;
    }
}
