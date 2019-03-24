package com.miui.internal.variable;

import android.app.Activity;
import android.os.Bundle;
import miui.util.SoftReferenceSingleton;

public abstract class Android_App_PreferenceActivity_class {

    public static class Factory extends AbsClassFactory {
        private static final SoftReferenceSingleton<Factory> s = new SoftReferenceSingleton<Factory>() {
            /* renamed from: al */
            protected Factory createInstance() {
                return new Factory();
            }
        };
        private Android_App_PreferenceActivity_class kk;

        private Factory() {
            this.kk = (Android_App_PreferenceActivity_class) create("Android_App_PreferenceActivity_class");
        }

        public static Factory getInstance() {
            return (Factory) s.get();
        }

        public Android_App_PreferenceActivity_class get() {
            return this.kk;
        }
    }

    public abstract void onCreate(Activity activity, Bundle bundle);
}
