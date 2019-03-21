package com.miui.gallery.editor.photo.app;

import android.app.Activity;
import android.os.AsyncTask;
import android.widget.Toast;
import com.miui.gallery.R;

public class InitializeController {
    private Activity mActivity;
    private AsyncTask<Void, Void, Integer> mBackgroundTask = new AsyncTask<Void, Void, Integer>() {
        protected Integer doInBackground(Void... params) {
            return Integer.valueOf(InitializeController.this.mCallbacks.doInitialize());
        }

        protected void onPostExecute(Integer state) {
            super.onPostExecute(state);
            InitializeController.this.postResult(state.intValue());
        }
    };
    private Callbacks mCallbacks;

    interface Callbacks {
        int doInitialize();

        void onDone();
    }

    public InitializeController(Activity activity, Callbacks callbacks) {
        this.mActivity = activity;
        this.mCallbacks = callbacks;
    }

    public void doInitialize() {
        this.mBackgroundTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    private void postResult(int state) {
        if (!this.mActivity.isFinishing()) {
            if (state == 3) {
                this.mCallbacks.onDone();
                return;
            }
            if (state == 2) {
                Toast.makeText(this.mActivity, R.string.image_decode_failed, 0).show();
            } else if (state == 1) {
                Toast.makeText(this.mActivity, R.string.image_not_found, 0).show();
            }
            this.mActivity.finish();
        }
    }
}
