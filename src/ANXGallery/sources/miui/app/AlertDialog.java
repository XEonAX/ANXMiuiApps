package miui.app;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnKeyListener;
import android.content.DialogInterface.OnMultiChoiceClickListener;
import android.content.DialogInterface.OnShowListener;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Message;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.miui.internal.variable.AlertControllerWrapper;
import com.miui.internal.variable.AlertControllerWrapper.AlertParams;
import com.miui.internal.variable.AlertControllerWrapper.AlertParams.ActionItem;
import com.nexstreaming.nexeditorsdk.nexEngine;
import java.util.ArrayList;
import miui.R;
import miui.util.AttributeResolver;

public class AlertDialog extends Dialog implements DialogInterface {
    public static final int THEME_DARK = 2;
    public static final int THEME_DARK_EDIT = 4;
    public static final int THEME_DARK_EDIT_DEFAULT = 6;
    public static final int THEME_DAYNIGHT = 8;
    public static final int THEME_DAYNIGHT_EDIT = 9;
    public static final int THEME_DAYNIGHT_EDIT_DEFAULT = 10;
    public static final int THEME_LIGHT = 3;
    public static final int THEME_LIGHT_EDIT = 5;
    public static final int THEME_LIGHT_EDIT_DEFAULT = 7;
    private AlertControllerWrapper wR;

    public static class Builder {
        private AlertParams wS;
        private int wT;

        public Builder(Context context) {
            this(context, AlertDialog.a(context, 0));
        }

        public Builder(Context context, int i) {
            this.wS = new AlertParams(new ContextThemeWrapper(context, AlertDialog.a(context, i)));
            AlertParams alertParams = this.wS;
            boolean z = i >= 4 && i <= 7;
            alertParams.mEditMode = z;
            this.wT = i;
        }

        public Context getContext() {
            return this.wS.mContext;
        }

        public Builder setTitle(int i) {
            this.wS.mTitle = this.wS.mContext.getText(i);
            return this;
        }

        public Builder setTitle(CharSequence charSequence) {
            this.wS.mTitle = charSequence;
            return this;
        }

        public Builder setCustomTitle(View view) {
            this.wS.mCustomTitleView = view;
            return this;
        }

        public Builder setMessage(int i) {
            this.wS.mMessage = this.wS.mContext.getText(i);
            return this;
        }

        public Builder setMessage(CharSequence charSequence) {
            this.wS.mMessage = charSequence;
            return this;
        }

        public Builder setCheckBox(boolean z, CharSequence charSequence) {
            this.wS.mIsChecked = z;
            this.wS.mCheckBoxMessage = charSequence;
            return this;
        }

        public Builder setIcon(int i) {
            this.wS.mIconId = i;
            return this;
        }

        public Builder setIcon(Drawable drawable) {
            this.wS.mIcon = drawable;
            return this;
        }

        public Builder setIconAttribute(int i) {
            this.wS.mIconId = AttributeResolver.resolve(this.wS.mContext, i);
            return this;
        }

        public Builder setPositiveButton(int i, OnClickListener onClickListener) {
            this.wS.mPositiveButtonText = this.wS.mContext.getText(i);
            this.wS.mPositiveButtonListener = onClickListener;
            return this;
        }

        public Builder setPositiveButton(CharSequence charSequence, OnClickListener onClickListener) {
            this.wS.mPositiveButtonText = charSequence;
            this.wS.mPositiveButtonListener = onClickListener;
            return this;
        }

        public Builder setNegativeButton(int i, OnClickListener onClickListener) {
            this.wS.mNegativeButtonText = this.wS.mContext.getText(i);
            this.wS.mNegativeButtonListener = onClickListener;
            return this;
        }

        public Builder setNegativeButton(CharSequence charSequence, OnClickListener onClickListener) {
            this.wS.mNegativeButtonText = charSequence;
            this.wS.mNegativeButtonListener = onClickListener;
            return this;
        }

        public Builder setNeutralButton(int i, OnClickListener onClickListener) {
            this.wS.mNeutralButtonText = this.wS.mContext.getText(i);
            this.wS.mNeutralButtonListener = onClickListener;
            return this;
        }

        public Builder setNeutralButton(CharSequence charSequence, OnClickListener onClickListener) {
            this.wS.mNeutralButtonText = charSequence;
            this.wS.mNeutralButtonListener = onClickListener;
            return this;
        }

        public Builder setCancelable(boolean z) {
            this.wS.mCancelable = z;
            return this;
        }

        public Builder setOnCancelListener(OnCancelListener onCancelListener) {
            this.wS.mOnCancelListener = onCancelListener;
            return this;
        }

        public Builder setOnDismissListener(OnDismissListener onDismissListener) {
            this.wS.mOnDismissListener = onDismissListener;
            return this;
        }

        public Builder setOnShowListener(OnShowListener onShowListener) {
            this.wS.mOnShowListener = onShowListener;
            return this;
        }

        public Builder setOnKeyListener(OnKeyListener onKeyListener) {
            this.wS.mOnKeyListener = onKeyListener;
            return this;
        }

        public Builder addActionItem(CharSequence charSequence, int i, int i2) {
            if (this.wS.mActionItems == null) {
                this.wS.mActionItems = new ArrayList();
            }
            this.wS.mActionItems.add(new ActionItem(charSequence, i, i2));
            return this;
        }

        public Builder addActionItem(int i, int i2, int i3) {
            return addActionItem(this.wS.mContext.getText(i), i2, i3);
        }

        public Builder setOnActionItemClickListener(OnClickListener onClickListener) {
            this.wS.mOnActionItemClickListener = onClickListener;
            return this;
        }

        public Builder setItems(int i, OnClickListener onClickListener) {
            this.wS.mItems = this.wS.mContext.getResources().getTextArray(i);
            this.wS.mOnClickListener = onClickListener;
            return this;
        }

        public Builder setItems(CharSequence[] charSequenceArr, OnClickListener onClickListener) {
            this.wS.mItems = charSequenceArr;
            this.wS.mOnClickListener = onClickListener;
            return this;
        }

        public Builder setAdapter(ListAdapter listAdapter, OnClickListener onClickListener) {
            this.wS.mAdapter = listAdapter;
            this.wS.mOnClickListener = onClickListener;
            return this;
        }

        public Builder setCursor(Cursor cursor, OnClickListener onClickListener, String str) {
            this.wS.mCursor = cursor;
            this.wS.mLabelColumn = str;
            this.wS.mOnClickListener = onClickListener;
            return this;
        }

        public Builder setMultiChoiceItems(int i, boolean[] zArr, OnMultiChoiceClickListener onMultiChoiceClickListener) {
            this.wS.mItems = this.wS.mContext.getResources().getTextArray(i);
            this.wS.mOnCheckboxClickListener = onMultiChoiceClickListener;
            this.wS.mCheckedItems = zArr;
            this.wS.mIsMultiChoice = true;
            return this;
        }

        public Builder setMultiChoiceItems(CharSequence[] charSequenceArr, boolean[] zArr, OnMultiChoiceClickListener onMultiChoiceClickListener) {
            this.wS.mItems = charSequenceArr;
            this.wS.mOnCheckboxClickListener = onMultiChoiceClickListener;
            this.wS.mCheckedItems = zArr;
            this.wS.mIsMultiChoice = true;
            return this;
        }

        public Builder setMultiChoiceItems(Cursor cursor, String str, String str2, OnMultiChoiceClickListener onMultiChoiceClickListener) {
            this.wS.mCursor = cursor;
            this.wS.mOnCheckboxClickListener = onMultiChoiceClickListener;
            this.wS.mIsCheckedColumn = str;
            this.wS.mLabelColumn = str2;
            this.wS.mIsMultiChoice = true;
            return this;
        }

        public Builder setMultiChoiceAdapter(ListAdapter listAdapter, OnMultiChoiceClickListener onMultiChoiceClickListener) {
            this.wS.mAdapter = listAdapter;
            this.wS.mIsMultiChoice = true;
            this.wS.mOnCheckboxClickListener = onMultiChoiceClickListener;
            return this;
        }

        public Builder setSingleChoiceItems(int i, int i2, OnClickListener onClickListener) {
            this.wS.mItems = this.wS.mContext.getResources().getTextArray(i);
            this.wS.mOnClickListener = onClickListener;
            this.wS.mCheckedItem = i2;
            this.wS.mIsSingleChoice = true;
            return this;
        }

        public Builder setSingleChoiceItems(Cursor cursor, int i, String str, OnClickListener onClickListener) {
            this.wS.mCursor = cursor;
            this.wS.mOnClickListener = onClickListener;
            this.wS.mCheckedItem = i;
            this.wS.mLabelColumn = str;
            this.wS.mIsSingleChoice = true;
            return this;
        }

        public Builder setSingleChoiceItems(CharSequence[] charSequenceArr, int i, OnClickListener onClickListener) {
            this.wS.mItems = charSequenceArr;
            this.wS.mOnClickListener = onClickListener;
            this.wS.mCheckedItem = i;
            this.wS.mIsSingleChoice = true;
            return this;
        }

        public Builder setSingleChoiceItems(ListAdapter listAdapter, int i, OnClickListener onClickListener) {
            this.wS.mAdapter = listAdapter;
            this.wS.mOnClickListener = onClickListener;
            this.wS.mCheckedItem = i;
            this.wS.mIsSingleChoice = true;
            return this;
        }

        public Builder setOnItemSelectedListener(OnItemSelectedListener onItemSelectedListener) {
            this.wS.mOnItemSelectedListener = onItemSelectedListener;
            return this;
        }

        public Builder setView(int i) {
            this.wS.mView = this.wS.mInflater.inflate(i, null);
            return this;
        }

        public Builder setView(View view) {
            this.wS.mView = view;
            return this;
        }

        public AlertDialog create() {
            AlertDialog alertDialog = new AlertDialog(this.wS.mContext, this.wT);
            this.wS.apply(alertDialog.wR);
            alertDialog.setCancelable(this.wS.mCancelable);
            if (this.wS.mCancelable) {
                alertDialog.setCanceledOnTouchOutside(true);
            }
            alertDialog.setOnCancelListener(this.wS.mOnCancelListener);
            alertDialog.setOnDismissListener(this.wS.mOnDismissListener);
            alertDialog.setOnShowListener(this.wS.mOnShowListener);
            if (this.wS.mOnKeyListener != null) {
                alertDialog.setOnKeyListener(this.wS.mOnKeyListener);
            }
            return alertDialog;
        }

        public AlertDialog show() {
            AlertDialog create = create();
            create.show();
            return create;
        }
    }

    protected AlertDialog(Context context) {
        this(context, a(context, 0));
    }

    protected AlertDialog(Context context, int i) {
        super(context, a(context, i));
        this.wR = new AlertControllerWrapper(context, this, getWindow());
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.wR.installContent();
    }

    public ActionBar getMiuiActionBar() {
        return this.wR.getImpl().getActionBar();
    }

    static int a(Context context, int i) {
        switch (i) {
            case 2:
                return R.style.Theme_Dark_Dialog_Alert;
            case 3:
                return R.style.Theme_Light_Dialog_Alert;
            case 4:
                return com.miui.internal.R.style.Theme_Dark_Dialog_Edit;
            case 5:
                return com.miui.internal.R.style.Theme_Light_Dialog_Edit;
            case 6:
                return com.miui.internal.R.style.Theme_Dark_Dialog_Edit_Default;
            case 7:
                return com.miui.internal.R.style.Theme_Light_Dialog_Edit_Default;
            case 8:
                return R.style.Theme_DayNight_Dialog_Alert;
            case 9:
                return com.miui.internal.R.style.Theme_DayNight_Dialog_Edit;
            case 10:
                return com.miui.internal.R.style.Theme_DayNight_Dialog_Edit_Default;
            default:
                if (i >= nexEngine.ExportHEVCMainTierLevel62) {
                    return i;
                }
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(16843529, typedValue, true);
                return typedValue.resourceId;
        }
    }

    public Button getButton(int i) {
        return this.wR.getButton(i);
    }

    public ListView getListView() {
        return this.wR.getListView();
    }

    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.wR.setTitle(charSequence);
    }

    public void setCustomTitle(View view) {
        this.wR.setCustomTitle(view);
    }

    public void setMessage(CharSequence charSequence) {
        this.wR.setMessage(charSequence);
    }

    public TextView getMessageView() {
        return this.wR.getMessageView();
    }

    public void setView(View view) {
        this.wR.setView(view);
    }

    public void setButton(int i, CharSequence charSequence, Message message) {
        this.wR.setButton(i, charSequence, null, message);
    }

    public void setButton(int i, CharSequence charSequence, OnClickListener onClickListener) {
        this.wR.setButton(i, charSequence, onClickListener, null);
    }

    public void setIcon(int i) {
        this.wR.setIcon(i);
    }

    public void setIcon(Drawable drawable) {
        this.wR.setIcon(drawable);
    }

    public void setIconAttribute(int i) {
        this.wR.setIcon(AttributeResolver.resolve(getContext(), i));
    }

    public boolean[] getCheckedItems() {
        return this.wR.getCheckedItems();
    }

    public boolean isChecked() {
        return this.wR.isChecked();
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        return this.wR.onKeyUp(i, keyEvent) || super.onKeyUp(i, keyEvent);
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return this.wR.onKeyDown(i, keyEvent) || super.onKeyDown(i, keyEvent);
    }
}
