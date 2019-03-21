package com.miui.gallery.ui;

import android.app.Activity;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnShowListener;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import com.miui.gallery.R;
import com.miui.gallery.cloudcontrol.CloudControlStrategyHelper;
import com.miui.gallery.cloudcontrol.strategies.ServerReservedAlbumNamesStrategy;
import com.miui.gallery.cloudcontrol.strategies.ServerUnModifyAlbumsStrategy;
import com.miui.gallery.provider.GalleryContract.Common;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.ui.ConfirmDialog.ConfirmDialogInterface;
import com.miui.gallery.util.ActionURIHandler;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.widget.GalleryDialogFragment;
import miui.app.AlertDialog;
import miui.app.AlertDialog.Builder;

public abstract class BaseAlbumOperationDialogFragment extends GalleryDialogFragment {
    protected Button mConfirmButton;
    private OnClickListener mConfirmListener = new OnClickListener() {
        public void onClick(View v) {
            if (BaseAlbumOperationDialogFragment.this.verify(BaseAlbumOperationDialogFragment.this.mInputView.getText().toString())) {
                new AlbumOperateTask(BaseAlbumOperationDialogFragment.this.getActivity(), BaseAlbumOperationDialogFragment.this.mOnAlbumOperationDoneListener).execute(new String[]{albumName});
            }
        }
    };
    protected String mDefaultName;
    protected AlertDialog mDialog;
    protected EditText mInputView;
    protected OnAlbumOperationDoneListener mOnAlbumOperationDoneListener;
    protected ServerReservedAlbumNamesStrategy mServerReservedAlbumNamesStrategy;
    protected ServerUnModifyAlbumsStrategy mServerUnModifyAlbumsStrategy;
    protected TextWatcher mTextWatcher = new TextWatcher() {
        public void beforeTextChanged(CharSequence s, int start, int count, int after) {
        }

        public void onTextChanged(CharSequence s, int start, int before, int count) {
            if (BaseAlbumOperationDialogFragment.this.mConfirmButton != null) {
                BaseAlbumOperationDialogFragment.this.mConfirmButton.setEnabled(!TextUtils.isEmpty(s));
            }
        }

        public void afterTextChanged(Editable s) {
        }
    };

    public interface OnAlbumOperationDoneListener {
        void onOperationDone(long j, String str);
    }

    private class AlbumOperateTask extends AsyncTask<String, Void, Bundle> {
        private Activity mActivity;
        private String mAlbumName;
        private OnAlbumOperationDoneListener mOnAlbumOperationDoneListener;

        public AlbumOperateTask(Activity activity, OnAlbumOperationDoneListener listener) {
            this.mActivity = activity;
            this.mOnAlbumOperationDoneListener = listener;
        }

        protected void onPreExecute() {
            BaseAlbumOperationDialogFragment.this.mConfirmButton.setEnabled(false);
        }

        protected Bundle doInBackground(String... params) {
            this.mAlbumName = params[0];
            if (activityAlive()) {
                return BaseAlbumOperationDialogFragment.this.execAlbumOperation(this.mActivity, this.mAlbumName);
            }
            this.mActivity = null;
            Log.e("BaseAlbumOperationDialogFragment", "activity dead, abort album task(%d)", params[0]);
            return Bundle.EMPTY;
        }

        protected void onPostExecute(Bundle bundle) {
            long resultId = BaseAlbumOperationDialogFragment.this.getResultId(bundle);
            BaseAlbumOperationDialogFragment.this.mConfirmButton.setEnabled(true);
            if (this.mOnAlbumOperationDoneListener != null) {
                this.mOnAlbumOperationDoneListener.onOperationDone(resultId, this.mAlbumName);
            }
            if (activityAlive()) {
                if (resultId == -103 || resultId == -105) {
                    long conflictAlbumId = bundle.getLong("conflict_album_id");
                    if (conflictAlbumId >= 0) {
                        showAlbumConflictDialog(conflictAlbumId, this.mAlbumName);
                    } else {
                        ToastUtils.makeText(this.mActivity, BaseAlbumOperationDialogFragment.this.getString(R.string.album_already_exists_msg, new Object[]{this.mAlbumName}));
                    }
                    BaseAlbumOperationDialogFragment.this.selectAll();
                } else if (resultId < 0) {
                    ToastUtils.makeText(this.mActivity, BaseAlbumOperationDialogFragment.this.getOperationFailedString());
                    BaseAlbumOperationDialogFragment.this.selectAll();
                }
                if (resultId > 0) {
                    BaseAlbumOperationDialogFragment.this.mDialog.dismiss();
                    if (BaseAlbumOperationDialogFragment.this.getOperationSucceededString() > 0) {
                        ToastUtils.makeText(this.mActivity, BaseAlbumOperationDialogFragment.this.getOperationSucceededString());
                        return;
                    }
                    return;
                }
                return;
            }
            this.mActivity = null;
            BaseAlbumOperationDialogFragment.this.mDialog.dismiss();
            Log.w("BaseAlbumOperationDialogFragment", "activity dead, cancel toast");
        }

        private boolean activityAlive() {
            return (this.mActivity == null || this.mActivity.isDestroyed() || this.mActivity.isFinishing()) ? false : true;
        }

        private void showAlbumConflictDialog(final long conflictAlbumId, final String albumName) {
            ThreadManager.getMainHandler().post(new Runnable() {
                public void run() {
                    if (AlbumOperateTask.this.activityAlive()) {
                        ConfirmDialog.showConfirmDialog(BaseAlbumOperationDialogFragment.this.getFragmentManager(), null, BaseAlbumOperationDialogFragment.this.getString(R.string.album_already_exists_msg, new Object[]{albumName}), BaseAlbumOperationDialogFragment.this.getString(R.string.cancel), BaseAlbumOperationDialogFragment.this.getString(R.string.album_already_exists_check), new ConfirmDialogInterface() {
                            public void onConfirm(DialogFragment dialog) {
                                if (BaseAlbumOperationDialogFragment.this.mDialog != null && BaseAlbumOperationDialogFragment.this.mDialog.isShowing()) {
                                    BaseAlbumOperationDialogFragment.this.mDialog.dismiss();
                                }
                                dialog.dismiss();
                                ActionURIHandler.handleUri(BaseAlbumOperationDialogFragment.this.getActivity(), Common.URI_ALBUM_PAGE.buildUpon().appendQueryParameter("id", String.valueOf(conflictAlbumId)).build());
                            }

                            public void onCancel(DialogFragment dialog) {
                                dialog.dismiss();
                            }
                        });
                    }
                }
            });
        }
    }

    protected abstract Bundle execAlbumOperation(Context context, String str);

    protected abstract int getDialogTitle();

    protected abstract int getOperationFailedString();

    protected abstract int getOperationSucceededString();

    protected abstract long getResultId(Bundle bundle);

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        parseArguments();
        this.mInputView = (EditText) LayoutInflater.from(getActivity()).inflate(R.layout.edit_text_dialog, null, false);
        this.mInputView.setHint(R.string.album_name);
        this.mInputView.setText(this.mDefaultName);
        this.mInputView.selectAll();
        this.mInputView.addTextChangedListener(this.mTextWatcher);
        this.mServerReservedAlbumNamesStrategy = CloudControlStrategyHelper.getServerReservedAlbumNamesStrategy();
        this.mServerUnModifyAlbumsStrategy = CloudControlStrategyHelper.getServerUnModifyAlbumsStrategy();
    }

    protected void parseArguments() {
    }

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        this.mDialog = new Builder(getActivity()).setView(this.mInputView).setTitle(getDialogTitle()).setPositiveButton(17039370, null).setNegativeButton(17039360, null).create();
        this.mDialog.getWindow().setSoftInputMode(4);
        this.mDialog.setOnShowListener(new OnShowListener() {
            public void onShow(DialogInterface dialog) {
                BaseAlbumOperationDialogFragment.this.mConfirmButton = BaseAlbumOperationDialogFragment.this.mDialog.getButton(-1);
                BaseAlbumOperationDialogFragment.this.mConfirmButton.setEnabled(!TextUtils.isEmpty(BaseAlbumOperationDialogFragment.this.mInputView.getText()));
                BaseAlbumOperationDialogFragment.this.mConfirmButton.setOnClickListener(BaseAlbumOperationDialogFragment.this.mConfirmListener);
            }
        });
        return this.mDialog;
    }

    private void selectAll() {
        this.mInputView.setText(this.mInputView.getText());
        this.mInputView.selectAll();
    }

    private boolean verify(String name) {
        if (TextUtils.isEmpty(name.trim())) {
            this.mInputView.selectAll();
            return false;
        } else if ("._".indexOf(name.charAt(0)) >= 0) {
            ToastUtils.makeText(getActivity(), (int) R.string.new_album_invalid_prefix);
            return false;
        } else {
            for (int i = 0; i < name.length(); i++) {
                char invalidChar = name.charAt(i);
                if ("/\\:@*?<>\r\n\t".indexOf(invalidChar) >= 0) {
                    if ("\r\n\t".indexOf(invalidChar) >= 0) {
                        invalidChar = ' ';
                    }
                    ToastUtils.makeText(getActivity(), getString(R.string.new_album_invalid_char, new Object[]{Character.valueOf(invalidChar)}));
                    return false;
                }
            }
            if (!this.mServerReservedAlbumNamesStrategy.containsName(name) && !this.mServerUnModifyAlbumsStrategy.containsName(name)) {
                return true;
            }
            ToastUtils.makeText(getActivity(), getString(R.string.new_album_invalid_name, new Object[]{name}));
            selectAll();
            return false;
        }
    }

    public void setOnAlbumOperationDoneListener(OnAlbumOperationDoneListener onAlbumOperationDoneListener) {
        this.mOnAlbumOperationDoneListener = onAlbumOperationDoneListener;
    }
}
