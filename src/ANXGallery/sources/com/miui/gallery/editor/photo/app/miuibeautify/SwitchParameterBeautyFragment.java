package com.miui.gallery.editor.photo.app.miuibeautify;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.TextView;
import com.miui.filtersdk.beauty.BeautyProcessorManager;
import com.miui.filtersdk.beauty.IntelligentBeautyProcessor;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.core.imports.miuibeauty.MiuiBeautyEffect;
import miui.widget.SlidingButton;

public class SwitchParameterBeautyFragment extends ChildMenuFragment {
    private SlidingButton mSlidingButton;

    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        Bundle data = getArguments();
        if (data != null) {
            ((TextView) view.findViewById(R.id.switch_param_title)).setText(getActivity().getResources().getString(R.string.photo_editor_miui_beauty_menu_eraser_blemish_title));
            this.mSlidingButton = (SlidingButton) view.findViewById(R.id.check_box);
            final MiuiBeautyEffect beautyEffect = (MiuiBeautyEffect) data.getParcelable("BEAUTY_EFFECT");
            this.mSlidingButton.setOnPerformCheckedChangeListener(new OnCheckedChangeListener() {
                public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                    IntelligentBeautyProcessor beautyProcessor = BeautyProcessorManager.INSTANCE.getBeautyProcessor();
                    if (beautyEffect != null) {
                        float[] range = beautyProcessor.getSupportedParamRange(beautyEffect.mBeautyType);
                        if (range != null && range.length >= 2) {
                            SwitchParameterBeautyFragment.this.setBeautyParameterTable(beautyEffect.mBeautyType, isChecked ? 1.0f : 0.0f);
                            SwitchParameterBeautyFragment.this.notifyBeautyParameterChanged();
                        }
                    }
                }
            });
        }
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.miuibeauty_switch_param_fragment, container, false);
    }
}
