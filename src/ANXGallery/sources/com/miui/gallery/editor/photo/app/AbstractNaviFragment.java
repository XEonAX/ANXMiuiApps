package com.miui.gallery.editor.photo.app;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.app.Fragment;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Property;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.core.Effect;
import com.miui.gallery.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import miui.view.animation.CubicEaseOutInterpolator;
import miui.view.animation.QuarticEaseOutInterpolator;

public abstract class AbstractNaviFragment extends Fragment {
    private static final Property<View, Float> VIEW_RELATIVE_Y = new Property<View, Float>(Float.class, "relative_y") {
        public void set(View view, Float value) {
            view.setY(((float) (((View) view.getParent()).getHeight() - view.getHeight())) + value.floatValue());
        }

        public Float get(View object) {
            return null;
        }
    };
    private static int sAnimAppearDelay;
    private static int sAnimAppearDuration;
    private static int sAnimDisappearDuration;
    private static int sAnimOffset;
    Callbacks mCallbacks;
    private OnClickListener mClickListener = new OnClickListener() {
        public void onClick(View v) {
            if (v.getId() == R.id.export) {
                AbstractNaviFragment.this.mCallbacks.onExport();
            } else if (v.getId() == R.id.discard) {
                AbstractNaviFragment.this.mCallbacks.onDiscard();
            } else {
                throw new IllegalStateException("not support view");
            }
        }
    };
    private List<NavigatorData> mData;
    private boolean mExportable;
    private boolean mNavigatorCreated;
    private NavigatorData[] mSupportedData = new NavigatorData[Effect.values().length];

    interface Callbacks {
        void onDiscard();

        void onExport();

        void onNavigate(Effect effect);
    }

    protected static class NavigatorData {
        public final Effect effect;
        public final int icon;
        public final boolean isPlugin;
        public final int name;
        public final String pluginModuleName;

        NavigatorData(int icon, int name, Effect effect) {
            this(icon, name, effect, null);
        }

        NavigatorData(int icon, int name, Effect effect, String moduleName) {
            this.icon = icon;
            this.name = name;
            this.effect = effect;
            this.pluginModuleName = moduleName;
            this.isPlugin = !TextUtils.isEmpty(moduleName);
        }
    }

    public AbstractNaviFragment() {
        this.mSupportedData[Effect.FILTER.ordinal()] = new NavigatorData(R.drawable.navigator_icon_filter, R.string.photo_editor_filter, Effect.FILTER);
        this.mSupportedData[Effect.ADJUST.ordinal()] = new NavigatorData(R.drawable.navigator_icon_adjust, R.string.photo_editor_adjust, Effect.ADJUST);
        this.mSupportedData[Effect.CROP.ordinal()] = new NavigatorData(R.drawable.navigator_icon_crop, R.string.photo_editor_crop_and_rotate, Effect.CROP);
        this.mSupportedData[Effect.DOODLE.ordinal()] = new NavigatorData(R.drawable.navigator_icon_doodle, R.string.photo_editor_doodle, Effect.DOODLE);
        this.mSupportedData[Effect.STICKER.ordinal()] = new NavigatorData(R.drawable.navigator_icon_sticker, R.string.photo_editor_sticker, Effect.STICKER);
        this.mSupportedData[Effect.BEAUTIFY.ordinal()] = new NavigatorData(R.drawable.navigator_icon_beautify, R.string.photo_editor_beautify, Effect.BEAUTIFY);
        this.mSupportedData[Effect.LONG_CROP.ordinal()] = new NavigatorData(R.drawable.navigator_icon_crop, R.string.photo_editor_long_crop, Effect.LONG_CROP);
        this.mSupportedData[Effect.TEXT.ordinal()] = new NavigatorData(R.drawable.navigator_icon_text, R.string.photo_editor_text, Effect.TEXT);
        this.mSupportedData[Effect.MOSAIC.ordinal()] = new NavigatorData(R.drawable.navigator_icon_mosaic, R.string.photo_editor_mosaic, Effect.MOSAIC);
        this.mSupportedData[Effect.REMOVER.ordinal()] = new NavigatorData(R.drawable.navigator_icon_remover, R.string.photo_editor_remover, Effect.REMOVER);
        this.mSupportedData[Effect.MIUIBEAUTIFY.ordinal()] = new NavigatorData(R.drawable.icon_miui_beauty, R.string.photo_editor_miui_beauty, Effect.MIUIBEAUTIFY);
        this.mSupportedData[Effect.FRAME.ordinal()] = new NavigatorData(R.drawable.navigator_icon_frame, R.string.photo_editor_frame, Effect.FRAME);
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (this.mCallbacks == null) {
            throw new IllegalStateException("illegal state: no callbacks bound");
        }
        if (sAnimOffset == 0) {
            sAnimOffset = getActivity().getResources().getDimensionPixelSize(R.dimen.photo_editor_enter_sub_editor_main_menu_offset);
        }
        if (sAnimAppearDuration == 0) {
            sAnimAppearDuration = getActivity().getResources().getInteger(R.integer.photo_editor_sub_editor_main_menu_appear_duration);
        }
        if (sAnimDisappearDuration == 0) {
            sAnimDisappearDuration = getActivity().getResources().getInteger(R.integer.photo_editor_sub_editor_main_menu_disappear_duration);
        }
        if (sAnimAppearDelay == 0) {
            sAnimAppearDelay = getActivity().getResources().getInteger(R.integer.photo_editor_sub_editor_main_menu_appear_delay);
        }
        initialize();
    }

    public final View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        RelativeLayout layout = (RelativeLayout) inflater.inflate(R.layout.navigator_fragment, container, false);
        View navi = onCreateNavigator(inflater, layout, savedInstanceState);
        if (navi != null) {
            this.mNavigatorCreated = true;
            LayoutParams lp = new LayoutParams(navi.getLayoutParams());
            lp.addRule(2, R.id.discard);
            layout.addView(navi, 0, lp);
        } else {
            this.mNavigatorCreated = false;
        }
        return layout;
    }

    public final void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        if (this.mNavigatorCreated) {
            onNavigatorCreated(((ViewGroup) view).getChildAt(0), savedInstanceState);
        }
        View export = view.findViewById(R.id.export);
        export.setEnabled(this.mExportable);
        export.setOnClickListener(this.mClickListener);
        view.findViewById(R.id.discard).setOnClickListener(this.mClickListener);
    }

    protected View onCreateNavigator(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return null;
    }

    protected void onNavigatorCreated(View view, Bundle savedInstanceState) {
    }

    public Animator onCreateAnimator(int transit, boolean enter, int nextAnim) {
        Log.d("AbstractNaviFragment", "onCreateAnimator:" + transit + ":" + enter + ":" + nextAnim);
        if (8194 == transit && enter) {
            return null;
        }
        Animator anim = new ObjectAnimator();
        PropertyValuesHolder y;
        PropertyValuesHolder alpha;
        if (enter) {
            y = PropertyValuesHolder.ofFloat(View.TRANSLATION_Y, new float[]{(float) (-sAnimOffset), 0.0f});
            alpha = PropertyValuesHolder.ofFloat(View.ALPHA, new float[]{0.0f, 1.0f});
            anim.setValues(new PropertyValuesHolder[]{y, alpha});
            anim.setInterpolator(new CubicEaseOutInterpolator());
            getView().setAlpha(0.0f);
            anim.setStartDelay((long) sAnimAppearDelay);
            anim.setDuration((long) sAnimAppearDuration);
            return anim;
        }
        y = PropertyValuesHolder.ofFloat(VIEW_RELATIVE_Y, new float[]{0.0f, (float) (-sAnimOffset)});
        alpha = PropertyValuesHolder.ofFloat(View.ALPHA, new float[]{1.0f, 0.0f});
        anim.setValues(new PropertyValuesHolder[]{y, alpha});
        anim.setInterpolator(new QuarticEaseOutInterpolator());
        anim.setDuration((long) sAnimDisappearDuration);
        return anim;
    }

    void setExportEnabled(boolean enabled) {
        if (getView() != null) {
            getView().findViewById(R.id.export).setEnabled(enabled);
        } else {
            Log.w("AbstractNaviFragment", "shouldn't call when not visible");
        }
        this.mExportable = enabled;
    }

    protected final List<NavigatorData> getNaviData() {
        return this.mData;
    }

    protected final void notifyNavigate(Effect effect) {
        this.mCallbacks.onNavigate(effect);
    }

    private void initialize() {
        ArrayList<Integer> content = getArguments().getIntegerArrayList("content");
        this.mData = new ArrayList();
        Iterator it = content.iterator();
        while (it.hasNext()) {
            int effect = ((Integer) it.next()).intValue();
            if (effect > this.mSupportedData.length) {
                Log.w("AbstractNaviFragment", "invalid effect index of " + effect);
            } else {
                this.mData.add(this.mSupportedData[effect]);
            }
        }
    }
}
