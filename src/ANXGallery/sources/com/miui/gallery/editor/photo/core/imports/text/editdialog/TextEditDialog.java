package com.miui.gallery.editor.photo.core.imports.text.editdialog;

import android.animation.LayoutTransition;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnShowListener;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.core.imports.text.TextFragment.DialogStatusData;
import com.miui.gallery.editor.photo.core.imports.text.typeface.TextStyle;
import com.miui.gallery.editor.photo.core.imports.text.utils.AutoLineLayout.TextAlignment;
import com.miui.gallery.util.Log;
import com.miui.gallery.widget.GalleryDialogFragment;
import java.util.ArrayList;
import java.util.List;

public class TextEditDialog extends GalleryDialogFragment {
    private ConfigChangeListener mConfigChangeListener;
    private FrameLayout mContainerView;
    private int mCurrentHeight = 0;
    private Tab mCurrentTab = Tab.KEYBOARD;
    private List<DialogSubMenu> mDialogSubMenuList = new ArrayList();
    private EditText mEditText;
    private RelativeLayout mEditView;
    private DialogStatusData mInitializeData;
    private int mKeyBoardHeight = 0;
    private OnClickListener mNavigationClickListener = new OnClickListener() {
        public void onClick(View v) {
            int currentIndex = TextEditDialog.this.mCurrentTab.ordinal();
            for (int i = 0; i < TextEditDialog.this.mDialogSubMenuList.size(); i++) {
                DialogSubMenu dialogSubMenu = (DialogSubMenu) TextEditDialog.this.mDialogSubMenuList.get(i);
                if (v != dialogSubMenu.getNavigationButton()) {
                    dialogSubMenu.setChecked(false);
                } else if (currentIndex != i) {
                    dialogSubMenu.setChecked(true);
                    if (i == 0) {
                        TextEditDialog.this.showKeyboard();
                    } else {
                        if (TextEditDialog.this.mCurrentTab == Tab.KEYBOARD) {
                            TextEditDialog.this.mCurrentTab = Tab.values()[i];
                            TextEditDialog.this.hideKeyboard();
                        }
                        View subMenu = dialogSubMenu.getSubMenuView();
                        TextEditDialog.this.mTabContainer.removeAllViews();
                        TextEditDialog.this.mTabContainer.addView(subMenu, new LayoutParams(-1, -1));
                    }
                    TextEditDialog.this.mCurrentTab = Tab.values()[i];
                    Log.d("TextEditDialog", "current click index : %d", Integer.valueOf(i));
                }
            }
        }
    };
    private LinearLayout mNavigationContainer;
    private int mScreenHeight = 0;
    private StatusListener mStatusListener;
    private FrameLayout mTabContainer;
    private TextWatcher mTextWatcher;
    private ViewGroup mWholeView;
    private String mWillEditText;
    private boolean mWillSelection = false;

    public interface ConfigChangeListener {
        void onBoldChange(boolean z);

        void onColorChange(int i);

        void onShadowChange(boolean z);

        void onTextAlignChange(TextAlignment textAlignment);

        void onTransparentChange(int i);

        void onTypefaceChange(TextStyle textStyle);
    }

    public interface StatusListener {
        void onBottomChange(int i);

        void onDismiss();

        void onShow();
    }

    private class LayoutListener implements OnGlobalLayoutListener {
        private Rect mRect;

        private LayoutListener() {
            this.mRect = new Rect();
        }

        /* synthetic */ LayoutListener(TextEditDialog x0, AnonymousClass1 x1) {
            this();
        }

        public void onGlobalLayout() {
            Dialog dialog = TextEditDialog.this.getDialog();
            if (dialog != null && dialog.getWindow() != null) {
                Log.d("TextEditDialog", "---onGlobalLayout start---");
                int heightDifference = TextEditDialog.getHeightDifference(TextEditDialog.this.mContainerView, TextEditDialog.this.mScreenHeight, this.mRect);
                Log.d("TextEditDialog", "heightDifference : %d", Integer.valueOf(heightDifference));
                if (heightDifference > 0) {
                    if (TextEditDialog.this.mKeyBoardHeight != heightDifference) {
                        TextEditDialog.this.mKeyBoardHeight = heightDifference;
                    }
                    if (TextEditDialog.this.mCurrentHeight <= 0 && TextEditDialog.this.mCurrentHeight != heightDifference) {
                        TextEditDialog.this.mCurrentHeight = heightDifference;
                        TextEditDialog.this.checkMenuIndex(Tab.KEYBOARD.ordinal());
                    }
                    TextEditDialog.this.notifyKeyboardHeightChange();
                } else {
                    if (TextEditDialog.this.mCurrentHeight > 0 && TextEditDialog.this.mCurrentTab == Tab.KEYBOARD) {
                        Log.d("TextEditDialog", "onGlobalLayout dismiss");
                        TextEditDialog.this.dismissSafely();
                    }
                    TextEditDialog.this.mCurrentHeight = heightDifference;
                }
                TextEditDialog.this.notifyHeightChange(TextEditDialog.this.mKeyBoardHeight);
                Log.d("TextEditDialog", "onGlobalLayout mCurrentHeight %d", Integer.valueOf(TextEditDialog.this.mCurrentHeight));
            }
        }
    }

    public enum Tab {
        KEYBOARD,
        STYLE,
        FONT;

        public DialogSubMenu getSubMenu(Context context, ConfigChangeListener configChangeListener, ViewGroup parent) {
            switch (this) {
                case KEYBOARD:
                    return new DialogKeyboardMenu(context);
                case STYLE:
                    return new DialogStyleMenu(context, parent, configChangeListener);
                case FONT:
                    return new DialogFontMenu(context, parent, configChangeListener);
                default:
                    return null;
            }
        }
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        this.mContainerView = new FrameLayout(getActivity());
        this.mContainerView.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        this.mContainerView.getViewTreeObserver().addOnGlobalLayoutListener(new LayoutListener(this, null));
        if (this.mWholeView == null) {
            initView(inflater);
        }
        this.mContainerView.addView(this.mWholeView);
        return this.mContainerView;
    }

    private void initView(LayoutInflater inflater) {
        this.mWholeView = (ViewGroup) inflater.inflate(R.layout.text_edit_text_dialog, null);
        this.mNavigationContainer = (LinearLayout) this.mWholeView.findViewById(R.id.text_append_edit_text_tab_group);
        this.mTabContainer = (FrameLayout) this.mWholeView.findViewById(R.id.text_append_edit_text_tab_container);
        this.mEditView = (RelativeLayout) this.mWholeView.findViewById(R.id.text_append_edit_text_layout);
        LinearLayout.LayoutParams linearParams = new LinearLayout.LayoutParams(0, -2);
        linearParams.weight = 1.0f;
        for (Tab tab : Tab.values()) {
            DialogSubMenu dialogSubMenu = tab.getSubMenu(getActivity(), this.mConfigChangeListener, this.mTabContainer);
            if (tab.ordinal() == 0) {
                dialogSubMenu.setChecked(true);
            }
            View navigationButton = dialogSubMenu.getNavigationButton();
            navigationButton.setOnClickListener(this.mNavigationClickListener);
            this.mNavigationContainer.addView(navigationButton, linearParams);
            this.mDialogSubMenuList.add(dialogSubMenu);
        }
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
        LayoutTransition layoutTransition = new LayoutTransition();
        layoutTransition.enableTransitionType(4);
        this.mWholeView.setLayoutTransition(layoutTransition);
    }

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Dialog dialog = new Dialog(getActivity(), R.style.f178PhotoEditor.Dialog.TextDialog);
        dialog.setOnShowListener(new OnShowListener() {
            public void onShow(DialogInterface dialog) {
                Log.d("TextEditDialog", "onShow");
                TextEditDialog.this.mEditText.setFocusable(true);
                TextEditDialog.this.mEditText.setFocusableInTouchMode(true);
                TextEditDialog.this.mEditText.requestFocus();
                if (TextEditDialog.this.mCurrentTab == Tab.KEYBOARD) {
                    TextEditDialog.this.showKeyboard();
                }
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
                TextEditDialog.this.notifyShow();
                TextEditDialog.this.notifyHeightChange(TextEditDialog.this.mKeyBoardHeight);
            }
        });
        Window window = dialog.getWindow();
        if (window != null) {
            Point screenSize = new Point();
            window.getWindowManager().getDefaultDisplay().getSize(screenSize);
            this.mScreenHeight = screenSize.y;
            window.getAttributes().windowAnimations = R.style.f178PhotoEditor.Dialog.TextDialog;
        }
        return dialog;
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
        this.mCurrentHeight = 0;
        Log.d("TextEditDialog", "onStart");
        notifyKeyboardHeightChange();
        for (DialogSubMenu dialogSubMenu : this.mDialogSubMenuList) {
            dialogSubMenu.initializeData(this.mInitializeData);
        }
    }

    public void onPause() {
        dismissSafely();
        super.onPause();
    }

    public void setTextWatch(TextWatcher textWatcher) {
        this.mTextWatcher = textWatcher;
    }

    public void setWillEditText(String willEditText, boolean isSelection) {
        this.mWillEditText = willEditText;
        this.mWillSelection = isSelection;
    }

    public void setConfigChangeListener(ConfigChangeListener configChangeListener) {
        this.mConfigChangeListener = configChangeListener;
    }

    private void showKeyboard() {
        this.mEditText.post(new Runnable() {
            public void run() {
                if (TextEditDialog.this.isAdded()) {
                    ((InputMethodManager) GalleryApp.sGetAndroidContext().getSystemService("input_method")).showSoftInput(TextEditDialog.this.mEditText, 1);
                }
            }
        });
    }

    private void hideKeyboard() {
        if (isAdded()) {
            Log.d("TextEditDialog", "hideKeyboard");
            ((InputMethodManager) getActivity().getSystemService("input_method")).hideSoftInputFromWindow(this.mEditText.getWindowToken(), 0);
        }
    }

    private static int getHeightDifference(View targetView, int screenHeight, Rect rect) {
        int[] location = new int[2];
        targetView.getLocationOnScreen(location);
        int heightOffset = (screenHeight - location[1]) - targetView.getHeight();
        targetView.getWindowVisibleDisplayFrame(rect);
        return (screenHeight - (rect.bottom - rect.top)) - heightOffset;
    }

    private void checkMenuIndex(int index) {
        if (index <= 0 || index >= this.mDialogSubMenuList.size()) {
            this.mNavigationClickListener.onClick(((DialogSubMenu) this.mDialogSubMenuList.get(index)).getNavigationButton());
        }
    }

    private void notifyKeyboardHeightChange() {
        if (this.mKeyBoardHeight != 0) {
            if (this.mTabContainer.getVisibility() != 0 || this.mTabContainer.getHeight() != this.mKeyBoardHeight) {
                this.mTabContainer.setVisibility(0);
                this.mTabContainer.setLayoutParams(new LinearLayout.LayoutParams(-1, this.mKeyBoardHeight));
            }
        }
    }

    public void onDestroyView() {
        for (DialogSubMenu dialogSubMenu : this.mDialogSubMenuList) {
            if (dialogSubMenu != null) {
                dialogSubMenu.release();
            }
        }
        this.mContainerView.removeAllViews();
        super.onDestroyView();
    }

    public void onDismiss(DialogInterface dialog) {
        super.onDismiss(dialog);
        notifyHeightChange(0);
        notifyDismiss();
        if (this.mTextWatcher != null) {
            this.mEditText.removeTextChangedListener(this.mTextWatcher);
        }
    }

    public void setInitializeData(DialogStatusData initializeData) {
        this.mInitializeData = initializeData;
    }

    private void notifyShow() {
        if (this.mStatusListener != null) {
            this.mStatusListener.onShow();
        }
    }

    private void notifyDismiss() {
        if (this.mStatusListener != null) {
            this.mStatusListener.onDismiss();
        }
    }

    private void notifyHeightChange(int height) {
        if (this.mStatusListener != null) {
            int navigation = (this.mNavigationContainer.getHeight() + ((LinearLayout.LayoutParams) this.mEditView.getLayoutParams()).topMargin) + this.mEditView.getHeight();
            int bottom = (this.mScreenHeight - height) - navigation;
            Log.d("TextEditDialog", "navigation: %d", Integer.valueOf(navigation));
            if (height == 0) {
                this.mStatusListener.onBottomChange(this.mScreenHeight);
                Log.d("TextEditDialog", "notifyHeightChange: %d", Integer.valueOf(this.mScreenHeight));
                return;
            }
            this.mStatusListener.onBottomChange(bottom);
            Log.d("TextEditDialog", "notifyHeightChange: %d", Integer.valueOf(bottom));
        }
    }

    public void setStatusListener(StatusListener statusListener) {
        this.mStatusListener = statusListener;
    }

    public boolean isShowing() {
        Dialog dialog = getDialog();
        return dialog != null && dialog.isShowing();
    }
}
