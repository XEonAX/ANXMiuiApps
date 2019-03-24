package com.miui.internal.variable;

import android.app.Application;

public interface Android_App_ActivityThread_class {

    public static class Factory extends AbsClassFactory {
        private Android_App_ActivityThread_class ke;

        private static class Holder {
            static final Factory kf = new Factory();

            private Holder() {
            }
        }

        private Factory() {
            this.ke = (Android_App_ActivityThread_class) create("Android_App_ActivityThread_class");
        }

        public static Factory getInstance() {
            return Holder.kf;
        }

        public Android_App_ActivityThread_class get() {
            return this.ke;
        }
    }

    Object currentActivityThread();

    Application currentApplication();

    Object getInitialLoadedApk(Object obj);

    String getInitialPackageName(Object obj);
}
