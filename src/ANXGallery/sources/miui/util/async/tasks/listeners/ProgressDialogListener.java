package miui.util.async.tasks.listeners;

import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.util.Log;
import java.lang.ref.WeakReference;
import java.util.LinkedHashMap;
import miui.app.ProgressDialog;
import miui.util.async.Task;
import miui.util.async.TaskManager;

public class ProgressDialogListener extends BaseTaskListener {
    static final LinkedHashMap<String, ProgressDialogListener> LW = new LinkedHashMap();
    int DG = 0;
    int DH = 0;
    int DI = 0;
    WeakReference<Task<?>> LO;
    ProgressDialogFragment LX;
    FragmentManager bn;
    int fr = 0;
    boolean mCancelable = false;
    CharSequence mMessage = null;
    CharSequence mTitle = null;
    int wT = 0;
    int xi = 0;
    boolean xs = false;

    public static class ProgressDialogFragment extends DialogFragment implements OnClickListener {
        private ProgressDialogListener LZ;

        void setIndeterminate(boolean z) {
            Dialog dialog = getDialog();
            if (dialog instanceof ProgressDialog) {
                ((ProgressDialog) dialog).setIndeterminate(z);
            }
        }

        void setProgress(int i) {
            Dialog dialog = getDialog();
            if (dialog instanceof ProgressDialog) {
                ((ProgressDialog) dialog).setProgress(i);
            }
        }

        void ab(int i) {
            Dialog dialog = getDialog();
            if (dialog instanceof ProgressDialog) {
                ((ProgressDialog) dialog).setMax(i);
            }
        }

        public void onSaveInstanceState(Bundle bundle) {
            super.onSaveInstanceState(bundle);
            if (this.LZ != null) {
                this.LZ.LX = null;
                this.LZ.bn = null;
                this.LZ = null;
            }
        }

        public void onResume() {
            super.onResume();
            this.LZ = (ProgressDialogListener) ProgressDialogListener.LW.get(getArguments().getString("ProgressDialogListener"));
            if (this.LZ == null) {
                FragmentTransaction beginTransaction = getFragmentManager().beginTransaction();
                beginTransaction.remove(this);
                beginTransaction.commit();
                return;
            }
            this.LZ.LX = this;
            this.LZ.bn = getFragmentManager();
            WeakReference weakReference = this.LZ.LO;
            Task task = null;
            if (weakReference != null) {
                task = (Task) weakReference.get();
            }
            if (task == null || !task.isRunning()) {
                dismiss();
                ProgressDialogListener.LW.remove(getArguments().getString("ProgressDialogListener"));
            }
        }

        public void onCancel(DialogInterface dialogInterface) {
            if (this.LZ != null && this.LZ.mCancelable) {
                WeakReference weakReference = this.LZ.LO;
                if (weakReference != null) {
                    Task task = (Task) weakReference.get();
                    if (task != null) {
                        task.cancel();
                    }
                }
            }
            super.onCancel(dialogInterface);
        }

        public Dialog onCreateDialog(Bundle bundle) {
            if (this.LZ == null) {
                return super.onCreateDialog(bundle);
            }
            Dialog progressDialog = new ProgressDialog(getActivity(), this.LZ.wT);
            if (this.LZ.DG != 0) {
                progressDialog.setTitle(this.LZ.DG);
            } else {
                progressDialog.setTitle(this.LZ.mTitle);
            }
            if (this.LZ.DH != 0) {
                progressDialog.setTitle(this.LZ.DH);
            } else {
                progressDialog.setMessage(this.LZ.mMessage);
            }
            progressDialog.setProgressStyle(this.LZ.xi);
            progressDialog.setIndeterminate(this.LZ.xs);
            if (this.LZ.xs) {
                progressDialog.setMax(this.LZ.DI);
                progressDialog.setProgress(this.LZ.fr);
            }
            if (this.LZ.mCancelable) {
                progressDialog.setButton(-2, progressDialog.getContext().getText(17039360), (OnClickListener) this);
                progressDialog.setCancelable(true);
            } else {
                progressDialog.setButton(-2, null, (OnClickListener) null);
                progressDialog.setCancelable(false);
            }
            return progressDialog;
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            onCancel(dialogInterface);
        }
    }

    public ProgressDialogListener(FragmentManager fragmentManager) {
        this.bn = fragmentManager;
    }

    public ProgressDialogListener setTheme(int i) {
        this.wT = i;
        return this;
    }

    public ProgressDialogListener setTitle(int i) {
        this.DG = i;
        this.mTitle = null;
        return this;
    }

    public ProgressDialogListener setTitle(CharSequence charSequence) {
        this.mTitle = charSequence;
        this.DG = 0;
        return this;
    }

    public ProgressDialogListener setMessage(int i) {
        this.DH = i;
        this.mMessage = null;
        return this;
    }

    public ProgressDialogListener setMessage(CharSequence charSequence) {
        this.mMessage = charSequence;
        this.DH = 0;
        return this;
    }

    public ProgressDialogListener setCancelable(boolean z) {
        this.mCancelable = z;
        return this;
    }

    public ProgressDialogListener setProgressStyle(int i) {
        this.xi = i;
        return this;
    }

    public ProgressDialogListener setIndeterminate(boolean z) {
        this.xs = z;
        return this;
    }

    public ProgressDialogListener setMaxProgress(int i) {
        this.DI = i;
        return this;
    }

    public void onPrepare(TaskManager taskManager, Task<?> task) {
        this.LO = new WeakReference(task);
        try {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("ProgressDialogListener@");
            stringBuilder.append(hashCode());
            String stringBuilder2 = stringBuilder.toString();
            LW.put(stringBuilder2, this);
            this.LX = new ProgressDialogFragment();
            Bundle bundle = new Bundle();
            bundle.putString("ProgressDialogListener", stringBuilder2);
            this.LX.setArguments(bundle);
            this.LX.show(this.bn, stringBuilder2);
        } catch (Throwable e) {
            Log.w("ProgressDialogListener", "cannot show dialog", e);
            this.LX = null;
            this.bn = null;
            task.removeListener(this);
        }
    }

    public void onProgress(TaskManager taskManager, Task<?> task, int i, int i2) {
        ProgressDialogFragment progressDialogFragment = this.LX;
        if (i >= 0) {
            if (this.xs) {
                setIndeterminate(false);
                if (progressDialogFragment != null) {
                    progressDialogFragment.setIndeterminate(this.xs);
                }
            }
            if (this.DI != i) {
                setMaxProgress(i);
                if (progressDialogFragment != null) {
                    progressDialogFragment.ab(this.DI);
                }
            }
            if (this.fr != i2) {
                this.fr = i2;
                if (progressDialogFragment != null) {
                    progressDialogFragment.setProgress(this.fr);
                }
            }
        } else if (!this.xs) {
            setIndeterminate(true);
            if (progressDialogFragment != null) {
                progressDialogFragment.setIndeterminate(this.xs);
            }
        }
    }

    public void onFinalize(TaskManager taskManager, Task<?> task) {
        if (this.LX != null) {
            this.LX.dismiss();
        }
        LinkedHashMap linkedHashMap = LW;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("ProgressDialogListener@");
        stringBuilder.append(hashCode());
        linkedHashMap.remove(stringBuilder.toString());
    }
}
