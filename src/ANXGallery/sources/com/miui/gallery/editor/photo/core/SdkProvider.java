package com.miui.gallery.editor.photo.core;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.miui.gallery.editor.photo.core.RenderScript.Translator;
import com.miui.gallery.util.Log;
import java.util.ArrayList;
import java.util.List;

public abstract class SdkProvider<D extends Metadata, F extends RenderFragment> {
    private static Translator<?> DUMMY = new Translator<RenderData>(new ArrayList()) {
    };
    private Application mApplication;
    private volatile boolean mInitialized;
    private Handler mNotifyHandler = new Handler(Looper.getMainLooper());
    Effect<? extends SdkProvider<D, F>> mSupported;
    private Translator mTranslator;

    public abstract RenderEngine createEngine(Context context);

    public abstract List<? extends D> list();

    protected abstract F onCreateFragment();

    protected SdkProvider(Effect<? extends SdkProvider<D, F>> supported) {
        this.mSupported = supported;
    }

    void attach(Application application) {
        this.mApplication = application;
    }

    protected void onActivityCreate() {
        this.mTranslator = onCreateTranslator();
    }

    public boolean initialized() {
        return this.mInitialized;
    }

    public final F createFragment() {
        F fragment = onCreateFragment();
        Bundle arg = new Bundle();
        arg.putInt("RenderFragment:effect", this.mSupported.ordinal());
        fragment.setArguments(arg);
        return fragment;
    }

    protected Translator onCreateTranslator() {
        return DUMMY;
    }

    protected final Application getApplicationContext() {
        return this.mApplication;
    }

    protected final void notifyInitializeFinish() {
        Log.d("SdkProvider", "%s initialize finish, post notify task", (Object) this);
        this.mInitialized = true;
    }
}
