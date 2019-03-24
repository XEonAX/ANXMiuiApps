package com.miui.internal.variable;

import android.net.ConnectivityManager;
import miui.util.SoftReferenceSingleton;

public abstract class Android_Net_ConnectivityManager_class {

    public static class Factory extends AbsClassFactory {
        private static final SoftReferenceSingleton<Factory> s = new SoftReferenceSingleton<Factory>() {
            /* renamed from: as */
            protected Factory createInstance() {
                return new Factory();
            }
        };
        private Android_Net_ConnectivityManager_class ky;

        private Factory() {
            this.ky = (Android_Net_ConnectivityManager_class) create("Android_Net_ConnectivityManager_class");
        }

        public static Factory getInstance() {
            return (Factory) s.get();
        }

        public Android_Net_ConnectivityManager_class get() {
            return this.ky;
        }
    }

    public abstract boolean isNetworkSupported(ConnectivityManager connectivityManager, int i);
}
