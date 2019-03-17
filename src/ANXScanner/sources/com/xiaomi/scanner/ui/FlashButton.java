package com.xiaomi.scanner.ui;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ToggleButton;
import com.xiaomi.scanner.R;

public class FlashButton extends FrameLayout implements OnCheckedChangeListener {
    private ImageView imageView;
    private OnTurnFlashListener onTurnFlashListener;
    private ToggleButton toggleButton;

    public interface OnTurnFlashListener {
        void onTurnFlash(boolean z);
    }

    public void setOnTurnFlashListener(OnTurnFlashListener onTurnFlashListener) {
        this.onTurnFlashListener = onTurnFlashListener;
    }

    public FlashButton(@NonNull Context context) {
        this(context, null, -1);
    }

    public FlashButton(@NonNull Context context, @Nullable AttributeSet attrs) {
        this(context, attrs, -1);
    }

    public FlashButton(@NonNull Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        LayoutInflater.from(context).inflate(R.layout.layout_flash_button, this);
        this.toggleButton = (ToggleButton) findViewById(R.id.toggle_button);
        this.imageView = (ImageView) findViewById(R.id.flash_image);
        this.toggleButton.setOnCheckedChangeListener(this);
    }

    public void resetFlashView() {
        if (this.toggleButton != null) {
            this.toggleButton.setChecked(false);
        }
        if (this.imageView != null) {
            this.imageView.setSelected(false);
        }
    }

    public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
        setEnabled(false);
        this.imageView.setSelected(isChecked);
        if (this.onTurnFlashListener != null) {
            this.onTurnFlashListener.onTurnFlash(isChecked);
        }
    }
}
