package com.miui.gallery.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.Button;
import com.miui.gallery.R;

public class ActionMenuItemView extends Button {
    public ActionMenuItemView(Context context) {
        this(context, null, 0);
    }

    public ActionMenuItemView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public ActionMenuItemView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.ActionMenuItemView, defStyle, 0);
        setTitle(a.getText(0));
        setIcon(a.getDrawable(1));
        a.recycle();
    }

    public void setTitle(CharSequence title) {
        setText(title);
    }

    public void setIcon(Drawable icon) {
        if (getCompoundDrawables()[1] != icon) {
            setCompoundDrawablesWithIntrinsicBounds(null, icon, null, null);
        }
    }
}
