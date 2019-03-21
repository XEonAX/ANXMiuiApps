package com.miui.gallery.util;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.provider.GalleryDBHelper;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.ui.ProcessTask;
import com.miui.gallery.ui.ProcessTask.OnCompleteListener;
import com.miui.gallery.ui.ProcessTask.ProcessCallback;
import com.miui.gallery.ui.ProgressDialogFragment;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.lang.ref.WeakReference;
import java.nio.channels.FileChannel;
import java.util.concurrent.atomic.AtomicBoolean;

public class DebugUtil {
    private static AtomicBoolean sDBExporting = new AtomicBoolean(false);

    private static class DebugTask extends AsyncTask<Void, Void, Void> {
        private static AtomicBoolean sDebugging = new AtomicBoolean(false);
        private WeakReference<Activity> mActivityRef;
        private ProgressDialogFragment mProgress;

        DebugTask(Activity activity) {
            this.mActivityRef = new WeakReference(activity);
        }

        private Activity getActivity() {
            if (this.mActivityRef != null) {
                Activity activity = (Activity) this.mActivityRef.get();
                if (activity != null) {
                    return activity;
                }
            }
            if (this.mProgress != null) {
                this.mProgress.dismissAllowingStateLoss();
            }
            return null;
        }

        protected void onPreExecute() {
            Activity activity = getActivity();
            if (activity != null) {
                this.mProgress = new ProgressDialogFragment();
                this.mProgress.setTitle(activity.getResources().getString(R.string.debugging_tip));
                this.mProgress.setCancelable(false);
                this.mProgress.showAllowingStateLoss(activity.getFragmentManager(), "DebugUtil");
            }
        }

        protected Void doInBackground(Void... params) {
            if (!sDebugging.get()) {
                sDebugging.set(true);
                DebugUtil.doExportDB();
                sDebugging.set(false);
            }
            return null;
        }

        protected void onPostExecute(Void aVoid) {
            if (this.mProgress != null && this.mProgress.getFragmentManager() != null) {
                this.mProgress.dismissAllowingStateLoss();
                final Activity activity = getActivity();
                if (activity != null) {
                    DialogUtil.showConfirmAlert(activity, new OnClickListener() {
                        public void onClick(DialogInterface dialog, int which) {
                            String path = DebugUtil.getDebugPath();
                            if (!TextUtils.isEmpty(path)) {
                                IntentUtil.jumpToExplore(activity, path);
                            }
                        }
                    }, activity.getString(R.string.title_tip), activity.getString(R.string.debugging_info), activity.getString(R.string.ok));
                }
            }
        }
    }

    private static String getDebugPath() {
        return StorageUtils.getPathInPrimaryStorage("MIUI/Gallery/Debug");
    }

    private static void doExportDB() {
        if (!sDBExporting.get()) {
            sDBExporting.set(true);
            File folder = new File(getDebugPath());
            if (!folder.exists()) {
                folder.mkdirs();
            }
            FileChannel fic = null;
            FileChannel foc = null;
            try {
                File file = new File(folder, "DBTest.db");
                File dbFile = new File(GalleryApp.sGetAndroidContext().getFilesDir().getParentFile(), "databases/gallery.db");
                foc = new FileOutputStream(file).getChannel();
                fic = new FileInputStream(dbFile).getChannel();
                foc.transferFrom(fic, 0, fic.size());
                Log.d("DebugUtil", "Done exporting db");
                MediaFileUtils.triggerMediaScan(true, file);
                BaseMiscUtil.closeSilently(fic);
                BaseMiscUtil.closeSilently(foc);
                file = new File(folder, "DBTest_sub.db");
                dbFile = new File(GalleryApp.sGetAndroidContext().getFilesDir().getParentFile(), "databases/gallery_sub.db");
                foc = new FileOutputStream(file).getChannel();
                fic = new FileInputStream(dbFile).getChannel();
                foc.transferFrom(fic, 0, fic.size());
                Log.d("DebugUtil", "Done exporting sub db");
                MediaFileUtils.triggerMediaScan(true, file);
            } catch (Exception e) {
                Log.w("DebugUtil", "Error occurred while exporting db, %s", e);
            } finally {
                BaseMiscUtil.closeSilently(fic);
                BaseMiscUtil.closeSilently(foc);
                sDBExporting.set(false);
            }
        }
    }

    public static void exportDB(boolean async) {
        if (async) {
            ThreadManager.getMiscPool().submit(new Job<Object>() {
                public Object run(JobContext jc) {
                    DebugUtil.doExportDB();
                    return null;
                }
            });
        } else {
            doExportDB();
        }
    }

    public static void generateDebugLog(Activity activity) {
        new DebugTask(activity).execute(new Void[0]);
    }

    private static void doCorrectPhotoTime(Context context) {
        GalleryDBHelper.getInstance(context).getWritableDatabase().execSQL("UPDATE cloud SET mixedDateTime=dateTaken WHERE _id IN (SELECT _id FROM cloud WHERE serverType IN (1,2) AND exifGPSDateStamp LIKE '1970%' AND dateTaken > mixedDateTime)");
    }

    public static void correctPhotoTime(Activity activity) {
        final Context context = activity.getApplication();
        ProcessTask<Void, Void> deletionTask = new ProcessTask(new ProcessCallback<Void, Void>() {
            public Void doProcess(Void[] params) {
                DebugUtil.doCorrectPhotoTime(context);
                return null;
            }
        });
        deletionTask.setCompleteListener(new OnCompleteListener() {
            public void onCompleteProcess(Object result) {
                ToastUtils.makeText(context, (int) R.string.correct_time_success);
            }
        });
        deletionTask.showProgress(activity, activity.getString(R.string.correct_time_tip));
        deletionTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }
}
