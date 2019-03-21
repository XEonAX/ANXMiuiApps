package com.miui.gallery.editor.photo.app.miuibeautify;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import com.miui.filtersdk.beauty.BeautyParameterType;
import com.miui.filtersdk.beauty.BeautyProcessorManager;
import com.miui.filtersdk.beauty.IntelligentBeautyProcessor;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.core.imports.miuibeauty.MiuiBeautyEffect;
import com.miui.gallery.editor.photo.widgets.seekbar.BubbleIndicator;
import com.miui.gallery.editor.photo.widgets.seekbar.BubbleIndicator.Callback;

public class DoubleParameterBeautyFragment extends ChildMenuFragment {
    private Callback<TextView> mIndicatorCallback = new Callback<TextView>() {
        public void updateProgress(TextView contentView, int progress) {
            contentView.setText(String.valueOf(progress));
        }
    };
    private SeekBar mSeekBarBottom;
    private SeekBar mSeekBarTop;

    private class ParameterChangeListener implements OnSeekBarChangeListener {
        private MiuiBeautyEffect mEffect;

        public ParameterChangeListener(MiuiBeautyEffect effect) {
            this.mEffect = effect;
        }

        public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
        }

        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        public void onStopTrackingTouch(SeekBar seekBar) {
            IntelligentBeautyProcessor beautyProcessor = BeautyProcessorManager.INSTANCE.getBeautyProcessor();
            if (this.mEffect != null) {
                float[] range = beautyProcessor.getSupportedParamRange(this.mEffect.mBeautyType);
                if (range != null && range.length >= 2) {
                    DoubleParameterBeautyFragment.this.setBeautyParameterTable(this.mEffect.mBeautyType, (((float) seekBar.getProgress()) / 100.0f) * (range[1] - range[0]));
                    DoubleParameterBeautyFragment.this.notifyBeautyParameterChanged();
                }
            }
        }
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.miuibeauty_double_param_fragment, container, false);
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        Bundle data = getArguments();
        if (data != null) {
            MiuiBeautyEffect beautyEffectTop = (MiuiBeautyEffect) data.getParcelable("BEAUTY_EFFECT");
            MiuiBeautyEffect beautyEffectBottom = beautyEffectTop;
            if (beautyEffectTop.mBeautyType == BeautyParameterType.WHITEN_STRENGTH) {
                beautyEffectBottom = new MiuiBeautyEffect(getActivity().getResources().getString(R.string.photo_editor_miui_beauty_menu_skin_ruddy), -1, BeautyParameterType.RUDDY_STRENGTH);
            }
            TextView bottomParamTitle = (TextView) view.findViewById(R.id.bottom_param_title);
            ((TextView) view.findViewById(R.id.top_param_title)).setText(beautyEffectTop.mName);
            bottomParamTitle.setText(beautyEffectBottom.mName);
            this.mSeekBarTop = (SeekBar) view.findViewById(R.id.seekbar_top);
            this.mSeekBarBottom = (SeekBar) view.findViewById(R.id.seekbar_bottom);
            this.mSeekBarTop.setOnSeekBarChangeListener(new BubbleIndicator((TextView) View.inflate(getActivity(), R.layout.seekbar_bubble_indicator_text, null), getActivity().getResources().getDimensionPixelSize(R.dimen.photo_editor_bubble_indicator_offset), this.mIndicatorCallback, new ParameterChangeListener(beautyEffectTop)));
            this.mSeekBarBottom.setOnSeekBarChangeListener(new BubbleIndicator((TextView) View.inflate(getActivity(), R.layout.seekbar_bubble_indicator_text, null), getActivity().getResources().getDimensionPixelSize(R.dimen.photo_editor_bubble_indicator_offset), this.mIndicatorCallback, new ParameterChangeListener(beautyEffectBottom)));
        }
    }
}
