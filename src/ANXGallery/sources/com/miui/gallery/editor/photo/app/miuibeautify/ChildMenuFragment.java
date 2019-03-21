package com.miui.gallery.editor.photo.app.miuibeautify;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.app.Fragment;
import android.os.Bundle;
import android.view.View;
import com.miui.filtersdk.beauty.BeautyParameterType;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.core.imports.miuibeauty.MiuiBeautyEffect;
import com.miui.gallery.editor.photo.core.imports.miuibeauty.MiuiBeautyRenderFragment.OnBeautyProcessListener;
import java.util.HashMap;
import java.util.Map;
import miui.view.animation.CubicEaseOutInterpolator;

public class ChildMenuFragment extends Fragment implements OnBeautyProcessListener {
    private static int sAnimAppearDelay;
    private static int sAnimAppearDuration;
    private static int sAnimDisappearDuration;
    private static int sAnimOffset;
    protected Callbacks mCallbacks;
    private Map<BeautyParameterType, Float> mExtraTable = new HashMap();

    public interface Callbacks {
        void changeTitle(String str);

        void onBeautyParameterChanged(ChildMenuFragment childMenuFragment);
    }

    public Animator onCreateAnimator(int transit, boolean enter, int nextAnim) {
        ObjectAnimator anim = new ObjectAnimator();
        PropertyValuesHolder y;
        PropertyValuesHolder alpha;
        if (enter) {
            y = PropertyValuesHolder.ofFloat(View.TRANSLATION_Y, new float[]{(float) sAnimOffset, 0.0f});
            alpha = PropertyValuesHolder.ofFloat(View.ALPHA, new float[]{0.0f, 1.0f});
            anim.setValues(new PropertyValuesHolder[]{y, alpha});
            anim.setDuration((long) sAnimAppearDuration);
            anim.setStartDelay((long) sAnimAppearDelay);
        } else {
            y = PropertyValuesHolder.ofFloat(View.TRANSLATION_Y, new float[]{0.0f, (float) sAnimOffset});
            alpha = PropertyValuesHolder.ofFloat(View.ALPHA, new float[]{1.0f, 0.0f});
            anim.setValues(new PropertyValuesHolder[]{y, alpha});
            anim.setDuration((long) sAnimDisappearDuration);
        }
        anim.setInterpolator(new CubicEaseOutInterpolator());
        return anim;
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (sAnimOffset == 0) {
            sAnimOffset = getActivity().getResources().getDimensionPixelSize(R.dimen.photo_editor_enter_sub_editor_sub_menu_offset);
        }
        if (sAnimAppearDuration == 0) {
            sAnimAppearDuration = getActivity().getResources().getInteger(R.integer.photo_editor_sub_editor_sub_menu_appear_duration);
        }
        if (sAnimDisappearDuration == 0) {
            sAnimDisappearDuration = getActivity().getResources().getInteger(R.integer.photo_editor_sub_editor_sub_menu_disappear_duration);
        }
        if (sAnimAppearDelay == 0) {
            sAnimAppearDelay = getActivity().getResources().getInteger(R.integer.photo_editor_sub_editor_sub_menu_appear_delay);
        }
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        view.setAlpha(0.0f);
        Bundle data = getArguments();
        if (data != null) {
            MiuiBeautyEffect beautyEffect = (MiuiBeautyEffect) data.getParcelable("BEAUTY_EFFECT");
            if (beautyEffect != null) {
                this.mCallbacks.changeTitle(beautyEffect.mName);
            }
        }
    }

    public void setCallback(Callbacks callback) {
        this.mCallbacks = callback;
    }

    protected final void notifyBeautyParameterChanged() {
        this.mCallbacks.onBeautyParameterChanged(this);
    }

    public void setBeautyParameterTable(BeautyParameterType type, float value) {
        if (type == BeautyParameterType.BRIGHT_EYE_RATIO) {
            this.mExtraTable.put(BeautyParameterType.IRIS_SHINE_RATIO, Float.valueOf(value));
        }
        this.mExtraTable.put(type, Float.valueOf(value));
    }

    public void setBeautyParameterTable(Map<BeautyParameterType, Float> beautyTable) {
        this.mExtraTable = beautyTable;
    }

    public Map<BeautyParameterType, Float> getBeautyParameterTable() {
        return this.mExtraTable;
    }

    public void onBeautyProcessStart() {
    }

    public void onBeautyProcessEnd() {
    }
}
