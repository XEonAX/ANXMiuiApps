package com.miui.gallery.editor.photo.core.imports.text.editdialog;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLayoutChangeListener;
import android.view.ViewGroup;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.core.imports.text.TextFragment.DialogStatusData;
import com.miui.gallery.editor.photo.core.imports.text.editdialog.TextEditDialog.ConfigChangeListener;
import com.miui.gallery.editor.photo.core.imports.text.utils.AutoLineLayout.TextAlignment;
import com.miui.gallery.editor.photo.widgets.seekbar.BubbleIndicator;
import com.miui.gallery.editor.photo.widgets.seekbar.BubbleIndicator.Callback;
import com.miui.gallery.editor.photo.widgets.seekbar.CircleDrawable;
import com.miui.gallery.editor.photo.widgets.seekbar.ColorGradientDrawable;
import com.miui.gallery.editor.photo.widgets.seekbar.ColorPicker;
import com.miui.gallery.util.Log;

class DialogStyleMenu extends DialogSubMenu<ConfigChangeListener, DialogStatusData> implements OnClickListener, OnSeekBarChangeListener {
    private TextView mAlignButton;
    private final Drawable mAlignCenterDrawable;
    private final String mAlignCenterString;
    private int mAlignIndex = 0;
    private final Drawable mAlignLeftDrawable;
    private final String mAlignLeftString;
    private final Drawable mAlignRightDrawable;
    private final String mAlignRightString;
    private TextView mBoldButton;
    private ColorPicker mColorPickSeekBar;
    private TextView mShadowButton;
    private SeekBar mTransparentSeekBar;
    private ViewGroup mWholeView;

    private class BubbleCallback implements Callback<View> {
        private BubbleCallback() {
        }

        /* synthetic */ BubbleCallback(DialogStyleMenu x0, AnonymousClass1 x1) {
            this();
        }

        public void updateProgress(View contentView, int progress) {
            Log.d("DialogStyleMenu", "updateProgress progress: %d color: %s", Integer.valueOf(progress), Integer.toHexString(DialogStyleMenu.this.mColorPickSeekBar.getColor()));
            ((GradientDrawable) contentView.getBackground()).setColor(DialogStyleMenu.this.mColorPickSeekBar.getColor());
        }
    }

    private class ColorPickerChangeListener implements OnSeekBarChangeListener {
        private ColorPickerChangeListener() {
        }

        /* synthetic */ ColorPickerChangeListener(DialogStyleMenu x0, AnonymousClass1 x1) {
            this();
        }

        public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
            if (DialogStyleMenu.this.mListener != null) {
                DialogStyleMenu.this.mColorPickSeekBar.setThumbColor(DialogStyleMenu.this.mColorPickSeekBar.getColor());
                ((ConfigChangeListener) DialogStyleMenu.this.mListener).onColorChange(DialogStyleMenu.this.mColorPickSeekBar.getColor());
            }
        }

        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        public void onStopTrackingTouch(SeekBar seekBar) {
            if (DialogStyleMenu.this.mListener != null) {
                DialogStyleMenu.this.mColorPickSeekBar.setThumbColor(DialogStyleMenu.this.mColorPickSeekBar.getColor());
                ((ConfigChangeListener) DialogStyleMenu.this.mListener).onColorChange(DialogStyleMenu.this.mColorPickSeekBar.getColor());
            }
        }
    }

    DialogStyleMenu(Context context, ViewGroup parent, ConfigChangeListener configChangeListener) {
        super(context, parent, R.string.text_edit_dialog_style, R.drawable.text_edit_dialog_tab_icon_style);
        this.mListener = configChangeListener;
        this.mAlignLeftDrawable = context.getResources().getDrawable(R.drawable.text_edit_dialog_tab_icon_align_left);
        this.mAlignCenterDrawable = context.getResources().getDrawable(R.drawable.text_edit_dialog_tab_icon_align_center);
        this.mAlignRightDrawable = context.getResources().getDrawable(R.drawable.text_edit_dialog_tab_icon_align_right);
        this.mAlignLeftString = context.getString(R.string.text_edit_dialog_style_align_left);
        this.mAlignCenterString = context.getString(R.string.text_edit_dialog_style_align_center);
        this.mAlignRightString = context.getString(R.string.text_edit_dialog_style_align_right);
    }

    protected ViewGroup initSubMenuView(Context context, ViewGroup parent) {
        this.mWholeView = (ViewGroup) LayoutInflater.from(context).inflate(R.layout.text_edit_dialog_options_style_panel, parent, false);
        this.mColorPickSeekBar = (ColorPicker) this.mWholeView.findViewById(R.id.text_edit_dialog_tab_style_color_picker);
        this.mTransparentSeekBar = (SeekBar) this.mWholeView.findViewById(R.id.text_edit_dialog_tab_style_transparent);
        this.mShadowButton = (TextView) this.mWholeView.findViewById(R.id.text_edit_dialog_tab_style_shadow);
        this.mAlignButton = (TextView) this.mWholeView.findViewById(R.id.text_edit_dialog_tab_style_align);
        this.mBoldButton = (TextView) this.mWholeView.findViewById(R.id.text_edit_dialog_tab_style_bold);
        initView(context);
        return this.mWholeView;
    }

    public void initializeData(DialogStatusData initializeData) {
        this.mColorPickSeekBar.setProgress(this.mColorPickSeekBar.findProgressByColor(initializeData.color));
        int max = this.mTransparentSeekBar.getMax();
        this.mTransparentSeekBar.setProgress(max - ((int) (((float) max) * initializeData.transparentProgress)));
        this.mBoldButton.setSelected(initializeData.textBold);
        this.mShadowButton.setSelected(initializeData.textShadow);
        this.mShadowButton.addOnLayoutChangeListener(new OnLayoutChangeListener() {
            public void onLayoutChange(View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
                Log.d("DialogStyleMenu", "onLayoutChange");
                DialogStyleMenu.this.mShadowButton.removeOnLayoutChangeListener(this);
                DialogStyleMenu.this.mShadowButton.refreshDrawableState();
            }
        });
        setAlignButton(initializeData.textAlignment);
    }

    private void setAlignButton(TextAlignment textAlignment) {
        Drawable drawable = null;
        String text = null;
        switch (textAlignment) {
            case LEFT:
                drawable = this.mAlignLeftDrawable;
                text = this.mAlignLeftString;
                break;
            case CENTER:
                drawable = this.mAlignCenterDrawable;
                text = this.mAlignCenterString;
                break;
            case RIGHT:
                text = this.mAlignRightString;
                drawable = this.mAlignRightDrawable;
                break;
        }
        this.mAlignButton.setCompoundDrawablesWithIntrinsicBounds(drawable, null, null, null);
        this.mAlignButton.setText(text);
        this.mAlignIndex = textAlignment.ordinal();
    }

    private void initView(Context context) {
        int size = context.getResources().getDimensionPixelSize(R.dimen.custom_seekbar_thumb_size);
        this.mColorPickSeekBar.setProgressDrawable(new ColorGradientDrawable(ColorPicker.COLORS));
        this.mColorPickSeekBar.setThumbColor(this.mColorPickSeekBar.getColor());
        CircleDrawable circleDrawable = new CircleDrawable((float) context.getResources().getDimensionPixelSize(R.dimen.custom_seekbar_thumb_size_offset), context.getResources());
        circleDrawable.setIntrinsicWidth(size);
        circleDrawable.setIntrinsicHeight(size);
        this.mTransparentSeekBar.setThumb(circleDrawable);
        if (this.mTransparentSeekBar.getLayerType() == 0) {
            this.mTransparentSeekBar.setLayerType(2, null);
        }
        setViewClickListener(this.mShadowButton, this.mAlignButton, this.mBoldButton);
        this.mTransparentSeekBar.setOnSeekBarChangeListener(this);
        this.mColorPickSeekBar.setOnSeekBarChangeListener(new BubbleIndicator(View.inflate(context, R.layout.doodle_color_indicator, null), context.getResources().getDimensionPixelSize(R.dimen.photo_editor_bubble_indicator_offset), new BubbleCallback(this, null), new ColorPickerChangeListener(this, null)));
    }

    private void setViewClickListener(View... views) {
        for (View view : views) {
            view.setOnClickListener(this);
        }
    }

    public void onClick(View v) {
        boolean z = true;
        boolean check;
        TextView textView;
        boolean z2;
        ConfigChangeListener configChangeListener;
        switch (v.getId()) {
            case R.id.text_edit_dialog_tab_style_shadow /*2131886776*/:
                check = this.mShadowButton.isSelected();
                textView = this.mShadowButton;
                if (check) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                textView.setSelected(z2);
                if (this.mListener != null) {
                    configChangeListener = (ConfigChangeListener) this.mListener;
                    if (check) {
                        z = false;
                    }
                    configChangeListener.onShadowChange(z);
                    return;
                }
                return;
            case R.id.text_edit_dialog_tab_style_align /*2131886777*/:
                TextAlignment[] textAlignments = TextAlignment.values();
                this.mAlignIndex++;
                this.mAlignIndex %= textAlignments.length;
                TextAlignment textAlignment = textAlignments[this.mAlignIndex];
                setAlignButton(textAlignment);
                if (this.mListener != null) {
                    ((ConfigChangeListener) this.mListener).onTextAlignChange(textAlignment);
                    return;
                }
                return;
            case R.id.text_edit_dialog_tab_style_bold /*2131886778*/:
                check = this.mBoldButton.isSelected();
                textView = this.mBoldButton;
                if (check) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                textView.setSelected(z2);
                if (this.mListener != null) {
                    configChangeListener = (ConfigChangeListener) this.mListener;
                    if (check) {
                        z = false;
                    }
                    configChangeListener.onBoldChange(z);
                    return;
                }
                return;
            default:
                return;
        }
    }

    public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
        switch (seekBar.getId()) {
            case R.id.text_edit_dialog_tab_style_transparent /*2131886775*/:
                if (this.mListener != null) {
                    ((ConfigChangeListener) this.mListener).onTransparentChange(seekBar.getMax() - progress);
                    return;
                }
                return;
            default:
                return;
        }
    }

    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    public void onStopTrackingTouch(SeekBar seekBar) {
        switch (seekBar.getId()) {
            case R.id.text_edit_dialog_tab_style_transparent /*2131886775*/:
                if (this.mListener != null) {
                    ((ConfigChangeListener) this.mListener).onTransparentChange(seekBar.getMax() - seekBar.getProgress());
                    return;
                }
                return;
            default:
                return;
        }
    }
}
