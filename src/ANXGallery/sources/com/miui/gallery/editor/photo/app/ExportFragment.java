package com.miui.gallery.editor.photo.app;

import android.app.Dialog;
import android.app.DialogFragment;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.miui.gallery.R;
import java.lang.ref.WeakReference;
import miui.app.ProgressDialog;

public class ExportFragment extends DialogFragment {
    Callbacks mCallbacks;
    private Boolean mExportResult;

    interface Callbacks {
        boolean doExport();

        void onCancelled(boolean z);

        void onExported(boolean z);
    }

    private static class ExportTask extends AsyncTask<Void, Void, Boolean> {
        private final WeakReference<ExportFragment> mFragmentWeakReference;

        ExportTask(ExportFragment exportFragment) {
            this.mFragmentWeakReference = new WeakReference(exportFragment);
        }

        protected Boolean doInBackground(Void[] params) {
            ExportFragment exportFragment = (ExportFragment) this.mFragmentWeakReference.get();
            if (exportFragment != null) {
                Callbacks callbacks = exportFragment.mCallbacks;
                if (callbacks != null) {
                    return Boolean.valueOf(callbacks.doExport());
                }
            }
            return Boolean.valueOf(false);
        }

        protected void onPostExecute(Boolean success) {
            super.onPostExecute(success);
            ExportFragment exportFragment = (ExportFragment) this.mFragmentWeakReference.get();
            if (exportFragment != null) {
                exportFragment.publishResult(success);
            }
        }
    }

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        ProgressDialog dialog = new ProgressDialog(getActivity());
        dialog.setMessage(getActivity().getString(R.string.photo_editor_saving));
        dialog.setCanceledOnTouchOutside(false);
        dialog.setIndeterminate(true);
        return dialog;
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        new ExportTask(this).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        return super.onCreateView(inflater, container, savedInstanceState);
    }

    public void onResume() {
        super.onResume();
        if (this.mExportResult != null) {
            publishResult(this.mExportResult);
        }
    }

    private void publishResult(Boolean success) {
        if (!isAdded() || isRemoving()) {
            if (this.mCallbacks != null) {
                this.mCallbacks.onCancelled(success.booleanValue());
            }
        } else if (!isResumed()) {
            this.mExportResult = success;
        } else if (this.mCallbacks != null) {
            this.mCallbacks.onExported(success.booleanValue());
        }
    }

    public void onDetach() {
        super.onDetach();
        this.mCallbacks = null;
    }
}
