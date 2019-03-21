package com.miui.gallery.collage.utils;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnShowListener;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.Window;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import com.miui.gallery.R;
import com.miui.gallery.util.Log;
import com.miui.gallery.widget.GalleryDialogFragment;

public class TextEditDialog extends GalleryDialogFragment {
    private FrameLayout mContainerView;
    private EditText mEditText;
    private int mMax = -1;
    private int mScreenHeight = 0;
    private TextWatcher mTextWatcher;
    private View mWholeView;
    private String mWillEditText;
    private boolean mWillSelection = false;

    private class LayoutListener implements OnGlobalLayoutListener {
        int mHeight;
        Rect mRect;

        private LayoutListener() {
            this.mHeight = 0;
            this.mRect = new Rect();
        }

        /* synthetic */ LayoutListener(TextEditDialog x0, AnonymousClass1 x1) {
            this();
        }

        public void onGlobalLayout() {
            int height = TextEditDialog.getHeightDifference(TextEditDialog.this.mContainerView, TextEditDialog.this.mScreenHeight, this.mRect);
            Log.d("TextEditDialog", "widgetHeight : %d", Integer.valueOf(height));
            if (height > 0) {
                this.mHeight = height;
                TextEditDialog.this.setBottomMargin(this.mHeight);
            } else if (this.mHeight > 0) {
                TextEditDialog.this.dismissSafely();
            }
        }
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        this.mContainerView = new FrameLayout(getActivity());
        this.mContainerView.setLayoutParams(new LayoutParams(-1, -2));
        this.mContainerView.getViewTreeObserver().addOnGlobalLayoutListener(new LayoutListener(this, null));
        this.mWholeView = inflater.inflate(R.layout.text_append_edit_text, this.mContainerView);
        this.mEditText = (EditText) this.mWholeView.findViewById(R.id.text_append_edit_text);
        this.mWholeView.findViewById(R.id.text_append_edit_text_delete).setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                TextEditDialog.this.mEditText.setText("");
            }
        });
        this.mWholeView.findViewById(R.id.text_append_edit_text_submit).setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                TextEditDialog.this.dismissSafely();
            }
        });
        this.mEditText.setFocusable(true);
        this.mEditText.setFocusableInTouchMode(true);
        return this.mContainerView;
    }

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Dialog dialog = new Dialog(getActivity(), R.style.f45Collage.Dialog.TextDialog);
        dialog.setOnShowListener(new OnShowListener() {
            public void onShow(DialogInterface dialog) {
                if (TextEditDialog.this.mWillEditText != null) {
                    TextEditDialog.this.mEditText.setText(TextEditDialog.this.mWillEditText);
                    if (TextEditDialog.this.mWillSelection) {
                        TextEditDialog.this.mEditText.setSelection(0, TextEditDialog.this.mWillEditText.length());
                    } else {
                        TextEditDialog.this.mEditText.setSelection(TextEditDialog.this.mWillEditText.length());
                    }
                }
                if (TextEditDialog.this.mTextWatcher != null) {
                    TextEditDialog.this.mEditText.addTextChangedListener(TextEditDialog.this.mTextWatcher);
                }
                if (TextEditDialog.this.mMax > 0) {
                    TextEditDialog.this.mEditText.setFilters(new InputFilter[]{new LengthFilter(TextEditDialog.this.mMax)});
                }
            }
        });
        Window window = dialog.getWindow();
        if (window != null) {
            window.requestFeature(1);
            Point screenSize = new Point();
            window.getWindowManager().getDefaultDisplay().getSize(screenSize);
            this.mScreenHeight = screenSize.y;
            window.getAttributes().windowAnimations = R.style.f45Collage.Dialog.TextDialog;
        }
        return dialog;
    }

    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        Dialog dialog = getDialog();
        if (dialog != null) {
            Window window = dialog.getWindow();
            if (window != null) {
                window.setSoftInputMode(5);
                this.mEditText.requestFocus();
            }
        }
    }

    public void onStart() {
        super.onStart();
        Window window = getDialog().getWindow();
        if (window != null) {
            window.setGravity(80);
            WindowManager.LayoutParams lp = window.getAttributes();
            lp.width = -1;
            lp.height = -2;
            lp.dimAmount = 0.0f;
            window.setAttributes(lp);
            window.setBackgroundDrawable(new ColorDrawable(0));
        }
        Window windowActivity = getActivity().getWindow();
        if (windowActivity != null) {
            windowActivity.setSoftInputMode(48);
        }
    }

    public void onPause() {
        dismissSafely();
        super.onPause();
    }

    private void setBottomMargin(int margin) {
        if (this.mContainerView.getPaddingBottom() != margin) {
            this.mContainerView.setPadding(0, 0, 0, margin);
        }
    }

    private static int getHeightDifference(View targetView, int screenHeight, Rect rect) {
        int[] location = new int[2];
        targetView.getLocationOnScreen(location);
        int heightOffset = (screenHeight - location[1]) - targetView.getHeight();
        targetView.getWindowVisibleDisplayFrame(rect);
        return (screenHeight - (rect.bottom - rect.top)) - heightOffset;
    }

    public void setTextWatch(TextWatcher textWatcher) {
        this.mTextWatcher = textWatcher;
    }

    public void setWillEditText(String willEditText, boolean isSelection) {
        this.mWillEditText = willEditText;
        this.mWillSelection = isSelection;
    }

    public void setMaxEditLength(int max) {
        this.mMax = max;
    }

    public boolean isShowing() {
        Dialog dialog = getDialog();
        return dialog != null && dialog.isShowing();
    }
}
