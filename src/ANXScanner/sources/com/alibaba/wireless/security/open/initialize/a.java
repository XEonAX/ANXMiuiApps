package com.alibaba.wireless.security.open.initialize;

import android.content.Context;
import com.alibaba.wireless.security.framework.ISGPluginManager;
import com.alibaba.wireless.security.open.SecException;
import com.alibaba.wireless.security.open.initialize.IInitializeComponent.IInitFinishListener;

public class a implements IInitializeComponent {
    b a;

    public a() {
        this.a = new b();
    }

    public a(String str) {
        this.a = new b(str);
    }

    public ISGPluginManager a() {
        return this.a.a();
    }

    public int initialize(Context context) throws SecException {
        return loadLibrarySync(context);
    }

    public void initializeAsync(Context context) {
        try {
            loadLibraryAsync(context);
        } catch (SecException e) {
            e.printStackTrace();
        }
    }

    public boolean isSoValid(Context context) throws SecException {
        return this.a.a(context);
    }

    public void loadLibraryAsync(Context context) throws SecException {
        this.a.b(context, null, true, false);
    }

    public int loadLibrarySync(Context context) throws SecException {
        return this.a.a(context, null, true, false);
    }

    public int loadLibrarySync(Context context, String str) throws SecException {
        return this.a.a(context, str, true, false);
    }

    public void registerInitFinishListener(IInitFinishListener iInitFinishListener) throws SecException {
        this.a.a(iInitFinishListener);
    }

    public void unregisterInitFinishListener(IInitFinishListener iInitFinishListener) throws SecException {
        this.a.b(iInitFinishListener);
    }
}
