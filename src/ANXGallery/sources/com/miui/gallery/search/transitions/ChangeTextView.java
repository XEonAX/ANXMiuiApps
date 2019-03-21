package com.miui.gallery.search.transitions;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.graphics.Color;
import android.text.TextUtils;
import android.transition.Transition;
import android.transition.TransitionValues;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.widget.TextView;

public class ChangeTextView extends Transition {

    private static class TextAnimationUpdater implements AnimatorUpdateListener {
        private final ValueHolder mEnd;
        private Interpolator mInterpolator;
        private boolean mIsEndEmpty;
        private boolean mIsStartEmpty;
        private final ValueHolder mStart;
        private final TextView mTextView;

        public TextAnimationUpdater(TextView textView, ValueHolder start, ValueHolder end) {
            this.mTextView = textView;
            this.mStart = start;
            this.mEnd = end;
            if (TextUtils.isEmpty(this.mStart.hint) && TextUtils.isEmpty(this.mStart.text)) {
                this.mIsStartEmpty = true;
            }
            if (TextUtils.isEmpty(this.mEnd.hint) && TextUtils.isEmpty(this.mEnd.text)) {
                this.mIsEndEmpty = true;
            }
        }

        public Interpolator getInterpolator() {
            if (this.mInterpolator == null) {
                if ((this.mIsStartEmpty && this.mIsEndEmpty) || (!this.mIsStartEmpty && !this.mIsEndEmpty)) {
                    this.mInterpolator = new LinearInterpolator();
                } else if (this.mIsStartEmpty) {
                    this.mInterpolator = new DecelerateInterpolator();
                } else {
                    this.mInterpolator = new AccelerateInterpolator();
                }
            }
            return this.mInterpolator;
        }

        public void onAnimationUpdate(ValueAnimator animation) {
            Object value = animation.getAnimatedValue();
            if (value != null) {
                float separator = 0.5f;
                if (!this.mIsStartEmpty || !this.mIsEndEmpty) {
                    String text;
                    String hint;
                    int hintColor;
                    int textColor;
                    if (this.mIsStartEmpty) {
                        separator = 0.01f;
                    } else if (this.mIsEndEmpty) {
                        separator = 0.99f;
                    }
                    boolean isLeftPart = ((Float) value).floatValue() <= separator;
                    float abs = Math.abs(((Float) value).floatValue() - separator);
                    if (!isLeftPart) {
                        separator = 1.0f - separator;
                    }
                    float alpha = abs / separator;
                    if (isLeftPart) {
                        text = this.mStart.text;
                        hint = this.mStart.hint;
                        hintColor = ChangeTextView.colorWithAlpha(alpha, this.mStart.hintColor);
                        textColor = ChangeTextView.colorWithAlpha(alpha, this.mStart.textColor);
                    } else {
                        text = this.mEnd.text;
                        hint = this.mEnd.hint;
                        hintColor = ChangeTextView.colorWithAlpha(alpha, this.mEnd.hintColor);
                        textColor = ChangeTextView.colorWithAlpha(alpha, this.mEnd.textColor);
                    }
                    this.mTextView.setText(text);
                    this.mTextView.setHint(hint);
                    this.mTextView.setHintTextColor(hintColor);
                    this.mTextView.setTextColor(textColor);
                }
            }
        }
    }

    private static class ValueHolder {
        String hint;
        int hintColor;
        String text;
        int textColor;

        public ValueHolder(TransitionValues values) {
            this.textColor = ((Integer) values.values.get("customtransition:change_text_view:text_color")).intValue();
            this.text = (String) values.values.get("customtransition:change_text_view:text");
            this.hint = (String) values.values.get("customtransition:change_text_view:hint");
            this.hintColor = ((Integer) values.values.get("customtransition:change_text_view:hint_color")).intValue();
        }
    }

    private void captureValues(TransitionValues values) {
        if (values.view instanceof TextView) {
            TextView textView = values.view;
            values.values.put("customtransition:change_text_view:text", nullToEmpty(textView.getText()));
            values.values.put("customtransition:change_text_view:text_color", Integer.valueOf(textView.getCurrentTextColor()));
            values.values.put("customtransition:change_text_view:hint", nullToEmpty(textView.getHint()));
            values.values.put("customtransition:change_text_view:hint_color", Integer.valueOf(textView.getCurrentHintTextColor()));
        }
    }

    private String nullToEmpty(CharSequence string) {
        return string == null ? "" : string.toString();
    }

    public void captureStartValues(TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    public void captureEndValues(TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    public Animator createAnimator(ViewGroup sceneRoot, TransitionValues startValues, TransitionValues endValues) {
        if (startValues == null || endValues == null || !(endValues.view instanceof TextView)) {
            return null;
        }
        Animator animator = ValueAnimator.ofFloat(new float[]{0.0f, 1.0f});
        TextAnimationUpdater listener = new TextAnimationUpdater((TextView) endValues.view, new ValueHolder(startValues), new ValueHolder(endValues));
        animator.addUpdateListener(listener);
        animator.setInterpolator(listener.getInterpolator());
        return animator;
    }

    private static int colorWithAlpha(float alpha, int color) {
        return Color.argb((int) (((float) Color.alpha(color)) * alpha), Color.red(color), Color.green(color), Color.blue(color));
    }
}
