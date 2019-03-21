package com.miui.gallery.editor.photo.sdk;

import android.app.job.JobInfo;
import android.app.job.JobInfo.Builder;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobService;
import android.content.ComponentName;
import android.content.Context;
import android.database.Cursor;
import android.os.AsyncTask;
import android.os.AsyncTask.Status;
import android.os.PersistableBundle;
import android.provider.MediaStore.Files;
import android.text.TextUtils;
import android.util.ArraySet;
import com.miui.gallery.util.Log;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Set;

public class CleanService extends JobService {
    private CleanTask mCleanTask;

    private class CleanTask extends AsyncTask<JobParameters, Void, Void> {
        private CleanTask() {
        }

        protected Void doInBackground(JobParameters... params) {
            boolean failed = false;
            Object<File> files = CleanService.this.parse(params[0]);
            Log.d("CleanService.CleanTask", "start clean files: %s", (Object) files);
            for (File file : files) {
                if (file.exists()) {
                    failed |= !delete(file) ? 1 : 0;
                }
            }
            Log.d("CleanService.CleanTask", "job finish, reschedule ? %b", Boolean.valueOf(failed));
            CleanService.this.jobFinished(params[0], failed);
            return null;
        }

        protected void onPostExecute(Void aVoid) {
            super.onPostExecute(aVoid);
            CleanService.this.mCleanTask = null;
        }

        private boolean delete(File file) {
            boolean success;
            if (file == null) {
                throw new NullPointerException("file can't be null");
            } else if (file.isFile()) {
                success = !file.exists() || file.delete();
                Log.d("CleanService.CleanTask", "deleting file: %s. deleted: %b", file, Boolean.valueOf(success));
                return success;
            } else if (!file.isDirectory()) {
                return false;
            } else {
                long id = -1;
                Cursor cursor = CleanService.this.getContentResolver().query(Files.getContentUri("external"), new String[]{"_id"}, "_data=?", new String[]{file.getAbsolutePath()}, null);
                if (cursor != null) {
                    try {
                        if (cursor.moveToFirst()) {
                            id = cursor.getLong(0);
                        }
                        cursor.close();
                    } catch (Throwable th) {
                        cursor.close();
                    }
                }
                Log.d("CleanService.CleanTask", "cleaning directory(%d)", Long.valueOf(id));
                Set<String> mediaItems = new ArraySet();
                if (id != -1) {
                    cursor = CleanService.this.getContentResolver().query(Files.getContentUri("external"), new String[]{"_data"}, "parent=?", new String[]{String.valueOf(id)}, null);
                    Log.d("CleanService.CleanTask", "mark children of %d, count: %d", Long.valueOf(id), Integer.valueOf(cursor == null ? -1 : cursor.getCount()));
                    if (cursor != null) {
                        while (cursor.moveToNext()) {
                            try {
                                mediaItems.add(cursor.getString(0));
                            } finally {
                                cursor.close();
                            }
                        }
                    }
                }
                success = true;
                for (File f : file.listFiles()) {
                    String path = f.getAbsolutePath();
                    if (mediaItems.contains(path)) {
                        int count = CleanService.this.getContentResolver().delete(Files.getContentUri("external"), "_data=?", new String[]{path});
                        Log.d("CleanService.CleanTask", "deleted %d item from MediaProvider", Integer.valueOf(count));
                        if (count > 0) {
                            mediaItems.remove(path);
                            success &= delete(f);
                        } else {
                            success = false;
                        }
                    } else {
                        success &= delete(f);
                    }
                }
                return success;
            }
        }
    }

    public boolean onStartJob(JobParameters params) {
        List<File> files = parse(params);
        if (files == null || files.isEmpty()) {
            return false;
        }
        this.mCleanTask = new CleanTask();
        this.mCleanTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new JobParameters[]{params});
        return true;
    }

    public boolean onStopJob(JobParameters params) {
        boolean reschedule = true;
        if (!(this.mCleanTask == null || this.mCleanTask.getStatus() == Status.FINISHED)) {
            this.mCleanTask.cancel(true);
            this.mCleanTask = null;
        }
        List<File> files = parse(params);
        if (files == null || files.isEmpty()) {
            reschedule = false;
        }
        Log.d("CleanService", "onStopJob: %b", Boolean.valueOf(reschedule));
        return reschedule;
    }

    private List<File> parse(JobParameters params) {
        String[] paths;
        List<File> files = null;
        if (params == null || params.getExtras() == null) {
            paths = null;
        } else {
            paths = params.getExtras().getStringArray("extra_file_paths");
        }
        if (paths != null && paths.length >= 1) {
            files = new ArrayList((paths.length / 2) + 1);
            for (String path : paths) {
                File file = new File(path);
                if (file.exists()) {
                    files.add(file);
                }
            }
        }
        return files;
    }

    public static void schedule(Context context, String path) {
        if (context == null) {
            throw new NullPointerException("context can't be null");
        } else if (TextUtils.isEmpty(path)) {
            throw new IllegalArgumentException("illegal path");
        } else {
            Log.d("CleanService", "received file: %s", (Object) path);
            JobScheduler scheduler = (JobScheduler) context.getSystemService("jobscheduler");
            List<JobInfo> jobs = scheduler.getAllPendingJobs();
            JobInfo exists = null;
            if (jobs != null && !jobs.isEmpty()) {
                for (JobInfo job : jobs) {
                    if (job.getId() == 1000) {
                        exists = job;
                        break;
                    }
                }
            }
            PersistableBundle bundle = new PersistableBundle();
            if (exists == null) {
                Log.d("CleanService", "non job exists, create one");
                bundle.putStringArray("extra_file_paths", new String[]{path});
            } else {
                String[] previous = exists.getExtras().getStringArray("extra_file_paths");
                ArraySet<String> paths = new ArraySet(previous.length + 1);
                paths.addAll(Arrays.asList(previous));
                paths.add(path);
                String[] current = new String[paths.size()];
                paths.toArray(current);
                Log.d("CleanService", "append, current files: %s", Arrays.toString(current));
                bundle.putStringArray("extra_file_paths", new String[]{path});
                scheduler.cancel(1000);
            }
            scheduler.schedule(new Builder(1000, new ComponentName(context, CleanService.class)).setPersisted(false).setRequiresDeviceIdle(true).setExtras(bundle).build());
        }
    }
}
