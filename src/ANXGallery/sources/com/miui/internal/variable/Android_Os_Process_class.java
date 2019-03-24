package com.miui.internal.variable;

import miui.util.SoftReferenceSingleton;

public abstract class Android_Os_Process_class {

    public static class Factory extends AbsClassFactory {
        private static final SoftReferenceSingleton<Factory> s = new SoftReferenceSingleton<Factory>() {
            /* renamed from: at */
            protected Factory createInstance() {
                return new Factory();
            }
        };
        private Android_Os_Process_class kz;

        private Factory() {
            this.kz = (Android_Os_Process_class) create("Android_Os_Process_class");
        }

        public static Factory getInstance() {
            return (Factory) s.get();
        }

        public Android_Os_Process_class get() {
            return this.kz;
        }
    }

    public abstract long getFreeMemory();

    public abstract long getTotalMemory();
}
