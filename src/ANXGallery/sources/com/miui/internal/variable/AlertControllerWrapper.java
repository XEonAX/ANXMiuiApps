package com.miui.internal.variable;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnShowListener;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Message;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.CheckedTextView;
import android.widget.CursorAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SimpleCursorAdapter;
import android.widget.TextView;
import com.android.internal.app.AlertController;
import com.miui.internal.app.AlertControllerImpl;
import java.util.ArrayList;

public class AlertControllerWrapper extends AlertController {
    AlertControllerImpl jX;

    public static class AlertParams extends com.android.internal.app.AlertController.AlertParams {
        public ArrayList<ActionItem> mActionItems;
        public CharSequence mCheckBoxMessage;
        public boolean mEditMode;
        public boolean mIsChecked;
        public OnClickListener mOnActionItemClickListener;
        public OnDismissListener mOnDismissListener;
        public OnShowListener mOnShowListener;

        public static class ActionItem {
            public int icon;
            public int id;
            public CharSequence label;

            public ActionItem(CharSequence charSequence, int i, int i2) {
                this.label = charSequence;
                this.icon = i;
                this.id = i2;
            }
        }

        public AlertParams(Context context) {
            super(context);
        }

        public void apply(AlertController alertController) {
            if (this.mCustomTitleView != null) {
                alertController.setCustomTitle(this.mCustomTitleView);
            } else if (this.mTitle != null) {
                alertController.setTitle(this.mTitle);
            }
            if (this.mIcon != null) {
                alertController.setIcon(this.mIcon);
            }
            if (this.mIconId != 0) {
                alertController.setIcon(this.mIconId);
            }
            if (this.mMessage != null) {
                alertController.setMessage(this.mMessage);
            }
            if (this.mCheckBoxMessage != null) {
                ((AlertControllerWrapper) alertController).getImpl().setCheckBox(this.mIsChecked, this.mCheckBoxMessage);
            }
            if (this.mPositiveButtonText != null) {
                alertController.setButton(-1, this.mPositiveButtonText, this.mPositiveButtonListener, null);
            }
            if (this.mNegativeButtonText != null) {
                alertController.setButton(-2, this.mNegativeButtonText, this.mNegativeButtonListener, null);
            }
            if (this.mNeutralButtonText != null) {
                alertController.setButton(-3, this.mNeutralButtonText, this.mNeutralButtonListener, null);
            }
            if (!(this.mItems == null && this.mCursor == null && this.mAdapter == null)) {
                a(alertController);
            }
            if (this.mView != null) {
                alertController.setView(this.mView);
            }
            if (this.mActionItems != null) {
                ((AlertControllerWrapper) alertController).getImpl().setActionItems(this.mActionItems, this.mOnActionItemClickListener);
            }
        }

        private ListAdapter a(ListView listView, int i) {
            if (this.mCursor != null) {
                final ListView listView2 = listView;
                final int i2 = i;
                BaseAdapter anonymousClass2 = new CursorAdapter(this.mContext, this.mCursor, false) {
                    private final int ka;
                    private final int kb;

                    public void bindView(View view, Context context, Cursor cursor) {
                        ((CheckedTextView) view.findViewById(16908308)).setText(cursor.getString(this.ka));
                        if (!AlertParams.this.mEditMode) {
                            ListView listView = listView2;
                            int position = cursor.getPosition();
                            boolean z = true;
                            if (cursor.getInt(this.kb) != 1) {
                                z = false;
                            }
                            listView.setItemChecked(position, z);
                        }
                    }

                    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
                        return AlertParams.this.mInflater.inflate(i2, null);
                    }
                };
            } else if (this.mEditMode && this.mAdapter != null) {
                return this.mAdapter;
            } else {
                final ListView listView3 = listView;
                AnonymousClass1 anonymousClass1 = new ArrayAdapter<CharSequence>(this.mContext, i, 16908308, this.mItems) {
                    public View getView(int i, View view, ViewGroup viewGroup) {
                        view = super.getView(i, view, viewGroup);
                        if (!(AlertParams.this.mEditMode || AlertParams.this.mCheckedItems == null || !AlertParams.this.mCheckedItems[i])) {
                            listView3.setItemChecked(i, true);
                        }
                        return view;
                    }
                };
            }
            return r7;
        }

        private ListAdapter h(int i) {
            if (this.mCursor != null) {
                return new SimpleCursorAdapter(this.mContext, i, this.mCursor, new String[]{this.mLabelColumn}, new int[]{16908308});
            } else if (this.mAdapter != null) {
                return this.mAdapter;
            } else {
                return new ArrayAdapter(this.mContext, i, 16908308, this.mItems);
            }
        }

        private void a(AlertController alertController) {
            final AlertControllerImpl impl = ((AlertControllerWrapper) alertController).getImpl();
            final ListView listView = (ListView) this.mInflater.inflate(impl.getListLayout(), null);
            if (listView != null) {
                ListAdapter a;
                if (this.mIsMultiChoice) {
                    a = a(listView, impl.getMultiChoiceItemLayout());
                } else {
                    int singleChoiceItemLayout;
                    if (this.mIsSingleChoice) {
                        singleChoiceItemLayout = impl.getSingleChoiceItemLayout();
                    } else {
                        singleChoiceItemLayout = impl.getListItemLayout();
                    }
                    a = h(singleChoiceItemLayout);
                }
                impl.setAdapter(a);
                impl.setCheckedItem(this.mCheckedItem);
                impl.setCheckedItems(this.mCheckedItems);
                if (this.mOnClickListener != null) {
                    listView.setOnItemClickListener(new OnItemClickListener() {
                        public void onItemClick(AdapterView adapterView, View view, int i, long j) {
                            AlertParams.this.mOnClickListener.onClick(impl.getDialogInterface(), i);
                            if (!AlertParams.this.mIsSingleChoice) {
                                impl.getDialogInterface().dismiss();
                            }
                        }
                    });
                } else if (this.mOnCheckboxClickListener != null) {
                    listView.setOnItemClickListener(new OnItemClickListener() {
                        public void onItemClick(AdapterView adapterView, View view, int i, long j) {
                            if (AlertParams.this.mCheckedItems != null) {
                                AlertParams.this.mCheckedItems[i] = listView.isItemChecked(i);
                            }
                            AlertParams.this.mOnCheckboxClickListener.onClick(impl.getDialogInterface(), i, listView.isItemChecked(i));
                        }
                    });
                }
                if (this.mOnItemSelectedListener != null) {
                    listView.setOnItemSelectedListener(this.mOnItemSelectedListener);
                }
                if (this.mIsSingleChoice) {
                    listView.setChoiceMode(1);
                } else if (this.mIsMultiChoice) {
                    listView.setChoiceMode(2);
                }
                impl.setListView(listView);
            }
        }
    }

    public AlertControllerWrapper(Context context, DialogInterface dialogInterface, Window window) {
        super(context, dialogInterface, window);
        this.jX = new AlertControllerImpl(context, dialogInterface, window);
    }

    public AlertControllerImpl getImpl() {
        return this.jX;
    }

    public void installContent() {
        this.jX.installContent();
    }

    public void setTitle(CharSequence charSequence) {
        this.jX.setTitle(charSequence);
    }

    public void setCustomTitle(View view) {
        this.jX.setCustomTitle(view);
    }

    public void setMessage(CharSequence charSequence) {
        this.jX.setMessage(charSequence);
    }

    public TextView getMessageView() {
        return this.jX.getMessageView();
    }

    public void setView(View view) {
        this.jX.setView(view);
    }

    public void setButton(int i, CharSequence charSequence, OnClickListener onClickListener, Message message) {
        this.jX.setButton(i, charSequence, onClickListener, message);
    }

    public void setIcon(Drawable drawable) {
        this.jX.setIcon(drawable);
    }

    public void setIcon(int i) {
        this.jX.setIcon(i);
    }

    public void setInverseBackgroundForced(boolean z) {
    }

    public ListView getListView() {
        return this.jX.getListView();
    }

    public Button getButton(int i) {
        return this.jX.getButton(i);
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return this.jX.onKeyDown(i, keyEvent);
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        return this.jX.onKeyUp(i, keyEvent);
    }

    public boolean[] getCheckedItems() {
        return this.jX.getCheckedItems();
    }

    public void setCheckBox(boolean z, CharSequence charSequence) {
        this.jX.setCheckBox(z, charSequence);
    }

    public boolean isChecked() {
        return this.jX.isChecked();
    }
}
