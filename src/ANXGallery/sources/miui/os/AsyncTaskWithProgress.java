package miui.os;

import android.app.Activity;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.os.AsyncTask;
import android.os.Bundle;
import java.util.HashMap;
import miui.app.ProgressDialog;

public abstract class AsyncTaskWithProgress<Params, Result> extends AsyncTask<Params, Integer, Result> {
    private static final HashMap<String, AsyncTaskWithProgress<?, ?>> DF = new HashMap();
    private int DG = 0;
    private int DH = 0;
    private int DI = 0;
    private volatile ProgressDialogFragment DL = null;
    private final Listeners DN = new Listeners();
    private final FragmentManager bn;
    private int fr = 0;
    private boolean mCancelable = false;
    private CharSequence mMessage = null;
    private CharSequence mTitle = null;
    private int wT = 0;
    private int xi = 0;
    private boolean xs = false;

    private class Listeners implements OnCancelListener, OnClickListener {
        private Listeners() {
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            if (AsyncTaskWithProgress.this.DL != null) {
                DialogInterface dialog = AsyncTaskWithProgress.this.DL.getDialog();
                if (dialog != null && dialogInterface == dialog && i == -2) {
                    AsyncTaskWithProgress.this.cancel(true);
                }
            }
        }

        public void onCancel(DialogInterface dialogInterface) {
            onClick(dialogInterface, -2);
        }
    }

    public static class ProgressDialogFragment extends DialogFragment {
        private AsyncTaskWithProgress<?, ?> DQ;

        static ProgressDialogFragment G(String str) {
            ProgressDialogFragment progressDialogFragment = new ProgressDialogFragment();
            Bundle bundle = new Bundle();
            bundle.putString("task", str);
            progressDialogFragment.setArguments(bundle);
            return progressDialogFragment;
        }

        public void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            this.DQ = (AsyncTaskWithProgress) AsyncTaskWithProgress.DF.get(getArguments().getString("task"));
            if (this.DQ == null) {
                FragmentTransaction beginTransaction = getFragmentManager().beginTransaction();
                beginTransaction.remove(this);
                beginTransaction.commit();
            }
        }

        public void onStart() {
            super.onStart();
            if (this.DQ != null) {
                this.DQ.DL = this;
            }
        }

        public void onStop() {
            if (this.DQ != null) {
                this.DQ.DL = null;
            }
            super.onStop();
        }

        void setProgress(int i) {
            Dialog dialog = getDialog();
            if (dialog instanceof ProgressDialog) {
                ((ProgressDialog) dialog).setProgress(i);
            }
        }

        public void onCancel(DialogInterface dialogInterface) {
            if (this.DQ != null && this.DQ.mCancelable) {
                this.DQ.DN.onCancel(dialogInterface);
            }
            super.onCancel(dialogInterface);
        }

        public Dialog onCreateDialog(Bundle bundle) {
            if (this.DQ == null) {
                return super.onCreateDialog(bundle);
            }
            Dialog progressDialog = new ProgressDialog(getActivity(), this.DQ.wT);
            if (this.DQ.DG != 0) {
                progressDialog.setTitle(this.DQ.DG);
            } else {
                progressDialog.setTitle(this.DQ.mTitle);
            }
            if (this.DQ.DH != 0) {
                progressDialog.setMessage(getActivity().getText(this.DQ.DH));
            } else {
                progressDialog.setMessage(this.DQ.mMessage);
            }
            progressDialog.setProgressStyle(this.DQ.xi);
            progressDialog.setIndeterminate(this.DQ.xs);
            if (!this.DQ.xs) {
                progressDialog.setMax(this.DQ.DI);
                progressDialog.setProgress(this.DQ.fr);
            }
            if (this.DQ.mCancelable) {
                progressDialog.setButton(-2, progressDialog.getContext().getText(17039360), this.DQ.DN);
                progressDialog.setCancelable(true);
            } else {
                progressDialog.setButton(-2, null, (OnClickListener) null);
                progressDialog.setCancelable(false);
            }
            return progressDialog;
        }
    }

    public AsyncTaskWithProgress(FragmentManager fragmentManager) {
        this.bn = fragmentManager;
    }

    public AsyncTaskWithProgress<Params, Result> setTheme(int i) {
        this.wT = i;
        return this;
    }

    public AsyncTaskWithProgress<Params, Result> setTitle(int i) {
        this.DG = i;
        this.mTitle = null;
        return this;
    }

    public AsyncTaskWithProgress<Params, Result> setTitle(CharSequence charSequence) {
        this.DG = 0;
        this.mTitle = charSequence;
        return this;
    }

    public AsyncTaskWithProgress<Params, Result> setMessage(int i) {
        this.DH = i;
        this.mMessage = null;
        return this;
    }

    public AsyncTaskWithProgress<Params, Result> setMessage(CharSequence charSequence) {
        this.DH = 0;
        this.mMessage = charSequence;
        return this;
    }

    public AsyncTaskWithProgress<Params, Result> setCancelable(boolean z) {
        this.mCancelable = z;
        return this;
    }

    public AsyncTaskWithProgress<Params, Result> setProgressStyle(int i) {
        this.xi = i;
        return this;
    }

    public AsyncTaskWithProgress<Params, Result> setIndeterminate(boolean z) {
        this.xs = z;
        return this;
    }

    public AsyncTaskWithProgress<Params, Result> setMaxProgress(int i) {
        this.DI = i;
        return this;
    }

    protected void onPreExecute() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("AsyncTaskWithProgress@");
        stringBuilder.append(hashCode());
        String stringBuilder2 = stringBuilder.toString();
        DF.put(stringBuilder2, this);
        if (this.bn != null) {
            this.DL = ProgressDialogFragment.G(stringBuilder2);
            this.DL.setCancelable(this.mCancelable);
            this.DL.show(this.bn, stringBuilder2);
        }
    }

    protected void onProgressUpdate(Integer... numArr) {
        super.onProgressUpdate(numArr);
        this.fr = numArr[0].intValue();
        if (this.DL != null) {
            this.DL.setProgress(this.fr);
        }
    }

    protected void onPostExecute(Result result) {
        HashMap hashMap = DF;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("AsyncTaskWithProgress@");
        stringBuilder.append(hashCode());
        hashMap.remove(stringBuilder.toString());
        ba();
    }

    public void onCancelled() {
        HashMap hashMap = DF;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("AsyncTaskWithProgress@");
        stringBuilder.append(hashCode());
        hashMap.remove(stringBuilder.toString());
        ba();
    }

    public Activity getActivity() {
        if (this.DL != null) {
            return this.DL.getActivity();
        }
        return null;
    }

    private void ba() {
        FragmentManager fragmentManager = this.bn;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("AsyncTaskWithProgress@");
        stringBuilder.append(hashCode());
        ProgressDialogFragment progressDialogFragment = (ProgressDialogFragment) fragmentManager.findFragmentByTag(stringBuilder.toString());
        if (progressDialogFragment != null) {
            progressDialogFragment.dismissAllowingStateLoss();
        }
    }
}
