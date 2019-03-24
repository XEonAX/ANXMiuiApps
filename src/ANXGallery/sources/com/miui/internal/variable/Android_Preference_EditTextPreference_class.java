package com.miui.internal.variable;

import android.preference.EditTextPreference;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import com.miui.internal.R;
import com.miui.internal.util.ClassProxy;
import miui.util.SoftReferenceSingleton;

public class Android_Preference_EditTextPreference_class extends ClassProxy<EditTextPreference> implements IManagedClassProxy {

    public static class Factory extends AbsClassFactory {
        private static final SoftReferenceSingleton<Factory> s = new SoftReferenceSingleton<Factory>() {
            /* renamed from: au */
            protected Factory createInstance() {
                return new Factory();
            }
        };
        private Android_Preference_EditTextPreference_class kA;

        private Factory() {
            this.kA = new Android_Preference_EditTextPreference_class();
        }

        public static Factory getInstance() {
            return (Factory) s.get();
        }

        public Android_Preference_EditTextPreference_class get() {
            return this.kA;
        }
    }

    public Android_Preference_EditTextPreference_class() {
        super(EditTextPreference.class);
    }

    public void buildProxy() {
        attachMethod("onAddEditTextToDialogView", "(Landroid/view/View;Landroid/widget/EditText;)V");
    }

    protected void handle() {
        handleOnAddEditTextToDialogView(0, null, null, null);
    }

    protected void handleOnAddEditTextToDialogView(long j, EditTextPreference editTextPreference, View view, EditText editText) {
        originalOnAddEditTextToDialogView(j, editTextPreference, view, editText);
        ViewGroup viewGroup = (ViewGroup) view.findViewById(R.id.edittext_container);
        if (viewGroup != null) {
            viewGroup.addView(editText, -1, -2);
        }
    }

    protected void originalOnAddEditTextToDialogView(long j, EditTextPreference editTextPreference, View view, EditText editText) {
        throw new IllegalStateException("com.miui.internal.variable.Android_Preference_EditTextPreference_class.originalOnAddEditTextToDialogView(long, EditTextPreference, View, EditText)");
    }
}
