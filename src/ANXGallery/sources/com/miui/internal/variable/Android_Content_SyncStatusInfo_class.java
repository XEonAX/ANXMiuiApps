package com.miui.internal.variable;

import miui.util.SoftReferenceSingleton;

public abstract class Android_Content_SyncStatusInfo_class {
    public static final String NAME = "android.content.SyncStatusInfo";

    public static class Factory extends AbsClassFactory {
        private static final SoftReferenceSingleton<Factory> s = new SoftReferenceSingleton<Factory>() {
            /* renamed from: ao */
            protected Factory createInstance() {
                return new Factory();
            }
        };
        private Android_Content_SyncStatusInfo_class kr;

        private Factory() {
            this.kr = (Android_Content_SyncStatusInfo_class) create("Android_Content_SyncStatusInfo_class");
        }

        public static Factory getInstance() {
            return (Factory) s.get();
        }

        public Android_Content_SyncStatusInfo_class get() {
            return this.kr;
        }
    }

    public abstract boolean getInitialize(Object obj);

    public abstract int getLastFailureMesgAsInt(Object obj, int i);

    public abstract long getLastFailureTime(Object obj);

    public abstract long getLastSuccessTime(Object obj);

    public abstract boolean getPending(Object obj);
}
