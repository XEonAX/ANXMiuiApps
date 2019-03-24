package com.miui.internal.variable;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.PreferenceCategory;
import android.preference.PreferenceGroup;
import android.preference.PreferenceScreen;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import android.widget.AdapterView;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.miui.internal.R;
import com.miui.internal.util.ClassProxy;
import miui.preference.RadioButtonPreference;
import miui.reflect.Field;
import miui.util.AttributeResolver;
import miui.util.SoftReferenceSingleton;
import miui.widget.SlidingButton;

public abstract class Android_Preference_Preference_class extends ClassProxy<Preference> implements IManagedClassProxy {
    protected static final Field mCanRecycleLayout = Field.of(Preference.class, VERSION.SDK_INT < 26 ? "mCanRecycleLayout" : "mRecycleEnabled", Field.BOOLEAN_SIGNATURE_PRIMITIVE);

    public static class Factory extends AbsClassFactory {
        private static final SoftReferenceSingleton<Factory> s = new SoftReferenceSingleton<Factory>() {
            /* renamed from: av */
            protected Factory createInstance() {
                return new Factory();
            }
        };
        private Android_Preference_Preference_class kF;

        /* synthetic */ Factory(AnonymousClass1 anonymousClass1) {
            this();
        }

        private Factory() {
            this.kF = (Android_Preference_Preference_class) create("Android_Preference_Preference_class");
        }

        public static Factory getInstance() {
            return (Factory) s.get();
        }

        public Android_Preference_Preference_class get() {
            return this.kF;
        }
    }

    protected abstract PreferenceScreen getPreferenceScreen(Preference preference);

    public Android_Preference_Preference_class() {
        super(Preference.class);
    }

    public void buildProxy() {
        attachConstructor("(Landroid/content/Context;Landroid/util/AttributeSet;I)V");
        attachMethod("onBindView", "(Landroid/view/View;)V");
    }

    protected void handle() {
        handle_init_(0, null, null, null, 0);
        handleOnBindView(0, null, null);
    }

    protected void handleOnBindView(long j, Preference preference, View view) {
        Rect rect = new Rect();
        int i = 0;
        if (preference instanceof PreferenceCategory) {
            if (VERSION.SDK_INT >= 26) {
                PreferenceGroup preferenceGroup = null;
                try {
                    preferenceGroup = (PreferenceGroup) preference.getClass().getMethod("getParent", new Class[0]).invoke(preference, new Object[0]);
                } catch (Exception e) {
                }
                if (preferenceGroup != null) {
                    a(view, preference, preferenceGroup);
                } else {
                    a(view, preference);
                }
            } else {
                a(view, preference);
            }
            if (view.getBackground() != null) {
                view.getBackground().getPadding(rect);
                view.setPadding(view.getPaddingLeft(), rect.top, view.getPaddingRight(), rect.bottom);
            }
        } else {
            view.setBackground(AttributeResolver.resolveDrawable(preference.getContext(), R.attr.preferenceBackground));
        }
        if (preference instanceof CheckBoxPreference) {
            a((CheckBoxPreference) preference, view);
        }
        View findViewById = view.findViewById(R.id.arrow_right);
        if (findViewById != null) {
            if (preference.getWidgetLayoutResource() != 0) {
                i = 8;
            }
            findViewById.setVisibility(i);
        }
        int dimensionPixelSize = view.getContext().getResources().getDimensionPixelSize(R.dimen.preference_horizontal_extra_padding);
        Drawable background = view.getBackground();
        rect.setEmpty();
        if (background != null) {
            background.getPadding(rect);
        }
        if (preference instanceof RadioButtonPreference) {
            rect.left = preference.getContext().getResources().getDimensionPixelSize(R.dimen.preference_item_padding_side_zero);
        }
        view.setPaddingRelative(rect.left + dimensionPixelSize, view.getPaddingTop(), dimensionPixelSize + rect.right, view.getPaddingBottom());
        originalOnBindView(j, preference, view);
    }

    private void a(View view, Preference preference) {
        a(view, preference, preference.getOrder() == 0);
    }

    private void a(View view, Preference preference, PreferenceGroup preferenceGroup) {
        boolean z = false;
        if (preference == preferenceGroup.getPreference(0)) {
            z = true;
        }
        a(view, preference, z);
    }

    private void a(View view, Preference preference, boolean z) {
        Drawable resolveDrawable;
        if (TextUtils.isEmpty(preference.getTitle())) {
            if (z) {
                resolveDrawable = AttributeResolver.resolveDrawable(preference.getContext(), R.attr.preferenceCategoryFirstNoTitleBackground);
            } else {
                resolveDrawable = AttributeResolver.resolveDrawable(preference.getContext(), R.attr.preferenceCategoryNoTitleBackground);
            }
        } else if (z) {
            resolveDrawable = AttributeResolver.resolveDrawable(preference.getContext(), R.attr.preferenceCategoryFirstBackground);
        } else {
            resolveDrawable = AttributeResolver.resolveDrawable(preference.getContext(), R.attr.preferenceCategoryBackground);
        }
        view.setBackground(resolveDrawable);
    }

    protected void originalOnBindView(long j, Preference preference, View view) {
        throw new IllegalStateException("com.miui.internal.variable.Android_Preference_Preference_class.originalOnBindView(long, Preference, View)");
    }

    private void a(final CheckBoxPreference checkBoxPreference, final View view) {
        View findViewById = view.findViewById(16908289);
        if (findViewById != null && (findViewById instanceof SlidingButton)) {
            final SlidingButton slidingButton = (SlidingButton) findViewById;
            slidingButton.setOnPerformCheckedChangeListener(new OnCheckedChangeListener() {
                public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    if (view.getWindowVisibility() != 8) {
                        Android_Preference_Preference_class.this.a(Android_Preference_Preference_class.this.getPreferenceScreen(checkBoxPreference), checkBoxPreference, view);
                        if (z != checkBoxPreference.isChecked()) {
                            slidingButton.setChecked(z ^ 1);
                        }
                    }
                }
            });
        }
    }

    private boolean a(PreferenceScreen preferenceScreen, Preference preference, View view) {
        if (preferenceScreen == null) {
            return false;
        }
        ListAdapter rootAdapter = preferenceScreen.getRootAdapter();
        for (int i = 0; i < rootAdapter.getCount(); i++) {
            Preference preference2 = (Preference) rootAdapter.getItem(i);
            if (preference2 == preference) {
                View view2 = view;
                while (true) {
                    ViewParent parent = view2.getParent();
                    if (parent == null) {
                        break;
                    } else if (parent instanceof ListView) {
                        AdapterView adapterView = (ListView) parent;
                        preferenceScreen.onItemClick(adapterView, view, i + adapterView.getHeaderViewsCount(), rootAdapter.getItemId(i));
                        return true;
                    } else {
                        view2 = (View) parent;
                    }
                }
            }
            if ((preference2 instanceof PreferenceScreen) && a((PreferenceScreen) preference2, preference, view)) {
                return true;
            }
        }
        return false;
    }

    protected void handle_init_(long j, Preference preference, Context context, AttributeSet attributeSet, int i) {
        original_init_(j, preference, context, attributeSet, i);
        mCanRecycleLayout.set((Object) preference, true);
    }

    protected void original_init_(long j, Preference preference, Context context, AttributeSet attributeSet, int i) {
        throw new IllegalStateException("com.miui.internal.variable.Android_Preference_Preference_class.original_init_(long, View, Context, AttributeSet, int)");
    }
}
