package com.xiaomi.scanner.translation.widget;

import android.content.Context;
import android.graphics.Rect;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.widget.AppCompatTextView;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.alibaba.fastjson.asm.Opcodes;
import com.xiaomi.scanner.translation.TranslateModel;
import com.xiaomi.scanner.translation.bean.TranslateResult;
import com.xiaomi.scanner.translation.bean.TranslateResult.LineInfo;
import java.util.List;

public class RealTimeTranslateView extends FrameLayout {
    public RealTimeTranslateView(@NonNull Context context) {
        this(context, null, -1);
    }

    public RealTimeTranslateView(@NonNull Context context, @Nullable AttributeSet attrs) {
        this(context, attrs, -1);
    }

    public RealTimeTranslateView(@NonNull Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    private void setItemNewHeight(float[] newHeightList, List<LineInfo> lineInfos) {
        for (int i = 0; i < lineInfos.size(); i++) {
            if (newHeightList[i] == 0.0f) {
                newHeightList[i] = (float) ((LineInfo) lineInfos.get(i)).getItemHeight();
                for (int j = 0; j < lineInfos.size(); j++) {
                    float height = (float) ((LineInfo) lineInfos.get(j)).getItemHeight();
                    if (Math.abs(newHeightList[i] - height) / Math.max(height, newHeightList[i]) <= 0.1f) {
                        float newSize = Math.min(newHeightList[i], height);
                        newHeightList[i] = newSize;
                        newHeightList[j] = newSize;
                    }
                }
            }
        }
    }

    public void setTranslateData(TranslateResult result, int orientation) {
        if (result != null && result.getLineInfos() != null) {
            List<LineInfo> lineInfoList = result.getLineInfos();
            float[] sizeList = new float[lineInfoList.size()];
            setItemNewHeight(sizeList, lineInfoList);
            for (int i = 0; i < lineInfoList.size(); i++) {
                genTextView((LineInfo) lineInfoList.get(i), orientation, sizeList[i], TextUtils.equals(result.getToLang(), TranslateModel.getInstance().getChineseLangCode()));
            }
        }
    }

    private void genTextView(LineInfo lineInfo, int orientation, float itemHeight, boolean toChinese) {
        AppCompatTextView textView = new AppCompatTextView(getContext());
        textView.setText(lineInfo.toText);
        textView.setTextColor(lineInfo.getTextColor());
        addView(textView);
        LayoutParams params = (LayoutParams) textView.getLayoutParams();
        Rect rect = lineInfo.rect(orientation);
        params.height = isPortraitScreen(orientation) ? rect.height() : rect.width();
        params.width = isPortraitScreen(orientation) ? rect.width() : rect.height();
        textView.setRotation(((float) orientation) + lineInfo.degree(orientation));
        textView.setPivotX(0.0f);
        textView.setPivotY(0.0f);
        if (orientation == 0 || orientation == Opcodes.GETFIELD) {
            params.leftMargin = (orientation == 0 ? 0 : rect.width()) + rect.left;
            params.topMargin = (orientation == 0 ? 0 : rect.height()) + rect.top;
        } else if (orientation == 90 || orientation == 270) {
            int i;
            int i2 = rect.left;
            if (orientation == 90) {
                i = params.height;
            } else {
                i = 0;
            }
            params.leftMargin = i + i2;
            params.topMargin = (orientation == 90 ? 0 : rect.height()) + rect.top;
        }
        textView.setLayoutParams(params);
        textView.setGravity(16);
        if (!toChinese || itemHeight <= 0.0f) {
            textView.setAutoSizeTextTypeUniformWithConfiguration(1, params.height, 2, 0);
        } else {
            textView.setTextSize(0, 0.7535f * itemHeight);
        }
    }

    private boolean isPortraitScreen(int orientation) {
        return orientation == 0 || orientation == Opcodes.GETFIELD;
    }
}
