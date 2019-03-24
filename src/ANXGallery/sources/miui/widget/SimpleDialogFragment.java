package miui.widget;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.os.Bundle;

public class SimpleDialogFragment extends DialogFragment {
    public static final String ARG_CANCELABLE = "cancelable";
    public static final String ARG_MESSAGE = "msg_res_id";
    public static final String ARG_TITLE = "title";
    public static final String ARG_TYPE = "type";
    public static final int TYPE_ALERT = 1;
    public static final int TYPE_PROGRESS = 2;
    private String aa;
    private String aag;
    private int aah;
    private int aai;
    private int aaj;
    private OnClickListener aak;
    private OnClickListener aal;
    private boolean mCancelable = true;
    private OnDismissListener mOnDismissListener;

    public static final class AlertDialogFragmentBuilder {
        private String aa;
        private String aag;
        private int aah;
        private boolean aam;
        private boolean mCancelable = true;

        public AlertDialogFragmentBuilder(int i) {
            this.aah = i;
        }

        public AlertDialogFragmentBuilder setMessage(String str) {
            this.aa = str;
            return this;
        }

        public AlertDialogFragmentBuilder setCancelable(boolean z) {
            this.mCancelable = z;
            return this;
        }

        public AlertDialogFragmentBuilder setTitle(String str) {
            this.aag = str;
            return this;
        }

        public SimpleDialogFragment create() {
            if (this.aam) {
                throw new IllegalStateException("dialog has been created");
            }
            this.aam = true;
            SimpleDialogFragment simpleDialogFragment = new SimpleDialogFragment();
            Bundle bundle = new Bundle();
            bundle.putString("title", this.aag);
            bundle.putString(SimpleDialogFragment.ARG_MESSAGE, this.aa);
            bundle.putBoolean(SimpleDialogFragment.ARG_CANCELABLE, this.mCancelable);
            bundle.putInt("type", this.aah);
            simpleDialogFragment.setArguments(bundle);
            return simpleDialogFragment;
        }
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        bundle = getArguments();
        if (bundle != null) {
            this.aah = bundle.getInt("type");
            this.aa = bundle.getString(ARG_MESSAGE);
            this.aag = bundle.getString("title");
            this.mCancelable = bundle.getBoolean(ARG_CANCELABLE, true);
            return;
        }
        throw new IllegalStateException("no argument");
    }

    public Dialog onCreateDialog(Bundle bundle) {
        switch (this.aah) {
            case 1:
                Builder title = new Builder(getActivity()).setMessage(this.aa).setCancelable(this.mCancelable).setTitle(this.aag);
                if (this.aai > 0) {
                    title.setPositiveButton(this.aai, this.aak);
                }
                if (this.aaj > 0) {
                    title.setNegativeButton(this.aaj, this.aal);
                }
                return title.create();
            case 2:
                Dialog progressDialog = new ProgressDialog(getActivity());
                progressDialog.setMessage(this.aa);
                progressDialog.setCancelable(this.mCancelable);
                return progressDialog;
            default:
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("unknown dialog type:");
                stringBuilder.append(this.aah);
                throw new IllegalStateException(stringBuilder.toString());
        }
    }

    public void setOnDismissListener(OnDismissListener onDismissListener) {
        this.mOnDismissListener = onDismissListener;
    }

    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        if (this.mOnDismissListener != null) {
            this.mOnDismissListener.onDismiss(dialogInterface);
        }
    }

    public void setNegativeButton(int i, OnClickListener onClickListener) {
        this.aaj = i;
        this.aal = onClickListener;
    }

    public void setPositiveButton(int i, OnClickListener onClickListener) {
        this.aai = i;
        this.aak = onClickListener;
    }
}
