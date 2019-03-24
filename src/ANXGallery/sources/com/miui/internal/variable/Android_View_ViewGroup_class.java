package com.miui.internal.variable;

import android.view.ViewGroup;
import com.miui.internal.util.ClassProxy;

public abstract class Android_View_ViewGroup_class extends ClassProxy<ViewGroup> implements IManagedClassProxy {

    public static class Factory extends AbsClassFactory {
        private Android_View_ViewGroup_class kI;

        private static class Holder {
            static final Factory kJ = new Factory();

            private Holder() {
            }
        }

        private Factory() {
            this.kI = (Android_View_ViewGroup_class) create("Android_View_ViewGroup_class");
        }

        public static Factory getInstance() {
            return Holder.kJ;
        }

        public Android_View_ViewGroup_class get() {
            return this.kI;
        }
    }

    public Android_View_ViewGroup_class() {
        super(ViewGroup.class);
    }

    public void setTagChildrenSequenceState(ViewGroup viewGroup, boolean z) {
        com.miui.internal.variable.Android_View_View_class.Factory.getInstance().get().getCustomizedValue(viewGroup).mTagChildrenSequenceState = z;
    }

    public boolean getTagChildrenSequenceState(ViewGroup viewGroup) {
        return com.miui.internal.variable.Android_View_View_class.Factory.getInstance().get().getCustomizedValue(viewGroup).mTagChildrenSequenceState;
    }
}
