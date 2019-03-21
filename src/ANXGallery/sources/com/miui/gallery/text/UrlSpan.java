package com.miui.gallery.text;

import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;

public class UrlSpan extends ClickableSpan {
    private UrlSpanOnClickListener mOnClickListener;

    public interface UrlSpanOnClickListener {
        void onClick();
    }

    public UrlSpan(UrlSpanOnClickListener l) {
        this.mOnClickListener = l;
    }

    public void updateDrawState(TextPaint ds) {
        ds.setUnderlineText(true);
        ds.setColor(-16776961);
    }

    public void onClick(View widget) {
        if (this.mOnClickListener != null) {
            this.mOnClickListener.onClick();
        }
    }
}
