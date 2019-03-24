package com.miui.internal.variable;

import android.content.res.AssetManager;
import android.content.res.ResourcesImpl;
import com.miui.internal.util.ClassProxy;

public abstract class Android_Content_Res_ResourcesImpl_class extends ClassProxy<ResourcesImpl> implements IManagedClassProxy {

    public static class Factory extends AbsClassFactory {
        private Android_Content_Res_ResourcesImpl_class ko;

        private static final class Holder {
            static final Factory kp = new Factory();

            private Holder() {
            }
        }

        private Factory() {
            this.ko = (Android_Content_Res_ResourcesImpl_class) create("Android_Content_Res_ResourcesImpl_class");
        }

        public static Factory getInstance() {
            return Holder.kp;
        }

        public Android_Content_Res_ResourcesImpl_class get() {
            return this.ko;
        }
    }

    public abstract AssetManager getAssets(ResourcesImpl resourcesImpl);

    public Android_Content_Res_ResourcesImpl_class() {
        super(ResourcesImpl.class);
    }
}
