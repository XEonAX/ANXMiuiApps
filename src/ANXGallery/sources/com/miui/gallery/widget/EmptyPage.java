package com.miui.gallery.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.miui.gallery.R;

public class EmptyPage extends RelativeLayout {
    private Button mActionButton;
    private TextView mBigTitle;
    private TextView mDescription;
    private ImageView mIcon;
    private TextView mTitle;

    public EmptyPage(Context context) {
        this(context, null);
    }

    public EmptyPage(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public EmptyPage(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init(attrs);
    }

    public void onConfigurationChanged(Configuration newConfig) {
        if (this.mIcon != null) {
            MarginLayoutParams lp = (MarginLayoutParams) this.mIcon.getLayoutParams();
            int topMargin = getResources().getDimensionPixelSize(R.dimen.vertical_spacing_twostagedraw);
            if (lp.topMargin != topMargin) {
                lp.setMargins(lp.leftMargin, topMargin, lp.rightMargin, lp.bottomMargin);
                this.mIcon.setLayoutParams(lp);
            }
        }
    }

    private void init(AttributeSet attrs) {
        if (!isInEditMode()) {
            TypedArray a = getContext().obtainStyledAttributes(attrs, R.styleable.EmptyPage);
            try {
                Drawable iconDrawable = a.getDrawable(0);
                CharSequence titleText = a.getText(1);
                CharSequence descriptionText = a.getText(5);
                Drawable actionButtonDrawable = a.getDrawable(3);
                CharSequence actionButtonText = a.getText(2);
                boolean showActionButton = a.getBoolean(4, true);
                View v = LayoutInflater.from(getContext()).inflate(R.layout.empty_page, this);
                this.mIcon = (ImageView) v.findViewById(R.id.icon);
                this.mTitle = (TextView) v.findViewById(R.id.title);
                this.mBigTitle = (TextView) v.findViewById(R.id.big_title);
                this.mDescription = (TextView) v.findViewById(R.id.description);
                if (VERSION.SDK_INT >= 21) {
                    this.mBigTitle.setLetterSpacing(0.025f);
                    this.mDescription.setLetterSpacing(0.025f);
                }
                this.mActionButton = (Button) v.findViewById(R.id.action_button);
                if (iconDrawable != null) {
                    setIcon(iconDrawable);
                }
                if (descriptionText != null) {
                    setSingleLineTextMode(false);
                    setDescription(descriptionText);
                    if (titleText != null) {
                        setBigTitle(titleText);
                    }
                } else {
                    setSingleLineTextMode(true);
                    if (titleText != null) {
                        setTitle(titleText);
                    }
                }
                if (actionButtonDrawable != null) {
                    setActionButtonBackground(actionButtonDrawable);
                }
                if (actionButtonText != null) {
                    setActionButtonText(actionButtonText);
                }
                setActionButtonVisible(showActionButton);
            } finally {
                a.recycle();
            }
        }
    }

    private void setSingleLineTextMode(boolean singleLine) {
        if (singleLine) {
            this.mTitle.setVisibility(0);
            this.mBigTitle.setVisibility(8);
            this.mDescription.setVisibility(8);
            return;
        }
        this.mTitle.setVisibility(8);
        this.mBigTitle.setVisibility(0);
        this.mDescription.setVisibility(0);
    }

    public void setOnActionButtonClickListener(OnClickListener listener) {
        this.mActionButton.setOnClickListener(listener);
    }

    public void setIcon(int resId) {
        this.mIcon.setImageResource(resId);
    }

    public void setIcon(Drawable drawable) {
        this.mIcon.setImageDrawable(drawable);
    }

    public void setTitle(CharSequence title) {
        this.mTitle.setText(title);
    }

    public void setTitle(int resId) {
        this.mTitle.setText(resId);
    }

    public void setBigTitle(CharSequence title) {
        this.mBigTitle.setText(title);
    }

    public void setBigTitle(int resId) {
        this.mBigTitle.setText(resId);
    }

    public void setDescription(CharSequence description) {
        this.mDescription.setText(description);
    }

    public void setDescription(int resId) {
        this.mDescription.setText(resId);
    }

    public void setActionButtonText(CharSequence title) {
        this.mActionButton.setText(title);
    }

    public void setActionButtonText(int resId) {
        this.mActionButton.setText(resId);
    }

    public void setActionButtonBackground(int resId) {
        this.mActionButton.setBackgroundResource(resId);
    }

    public void setActionButtonBackground(Drawable drawable) {
        this.mActionButton.setBackground(drawable);
    }

    public void setActionButtonVisible(boolean visible) {
        this.mActionButton.setVisibility(visible ? 0 : 4);
    }

    public void setActionButtonClickable(boolean clickable) {
        this.mActionButton.setClickable(clickable);
    }
}
