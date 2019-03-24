package com.miui.gallery.net.download;

import android.os.AsyncTask;
import android.os.AsyncTask.Status;
import com.miui.gallery.net.download.Request.Listener;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.security.MessageDigest;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import miui.hybrid.Response;

public class DownloadTask {
    private static final long RETRY_INTERVAL_MILLI = TimeUnit.SECONDS.toMillis(10);
    private CoreTask mCoreTask;
    private TaskInfo mTaskInfo;

    private class CoreTask extends AsyncTask<Void, Integer, Integer> {
        Request mRequest;

        CoreTask(Request request) {
            this.mRequest = request;
        }

        protected Integer doInBackground(Void... params) {
            return Integer.valueOf(DownloadTask.this.process(this.mRequest));
        }

        protected void onPostExecute(Integer downloadResult) {
            Log.d("DownloadTask", "process download finish %d", (Object) downloadResult);
            onComplete(downloadResult.intValue());
        }

        protected void onProgressUpdate(Integer... values) {
            Listener listener = this.mRequest.getListener();
            if (listener != null) {
                listener.onProgressUpdate(values[0].intValue());
            }
        }

        protected void onCancelled(Integer downloadResult) {
            int status = downloadResult != null ? downloadResult.intValue() : -2;
            Log.d("DownloadTask", "process download cancelled %d", Integer.valueOf(status));
            onComplete(status);
        }

        void publishProgress(int progress) {
            if (this.mRequest.getListener() != null) {
                super.publishProgress(new Integer[]{Integer.valueOf(progress)});
            }
        }

        private void onComplete(int result) {
            if (this.mRequest != null) {
                Listener listener = this.mRequest.getListener();
                if (listener != null) {
                    listener.onComplete(result);
                }
                this.mRequest.setListener(null);
                this.mRequest = null;
            }
        }
    }

    private static class TaskInfo {
        long mContentLength;
        MessageDigest mDigest;
        long mDownloadSize;

        private TaskInfo() {
        }

        /* synthetic */ TaskInfo(AnonymousClass1 x0) {
            this();
        }
    }

    DownloadTask(Request request) {
        this.mCoreTask = new CoreTask(request);
    }

    boolean cancel(boolean mayInterruptIfRunning) {
        return this.mCoreTask.cancel(mayInterruptIfRunning);
    }

    void execute(Executor exec) {
        this.mCoreTask.executeOnExecutor(exec, new Void[0]);
    }

    boolean isDone() {
        return this.mCoreTask.getStatus() == Status.FINISHED;
    }

    private int process(Request request) {
        int code;
        Log.d("DownloadTask", "start to download request[%s, %s]", request.getUri(), request.getDestination());
        preProcess(request);
        int maxRetry = request.getMaxRetryTimes();
        int i = 0;
        do {
            code = tryDownload(request);
            if (!isRetryState(code)) {
                break;
            }
            Log.d("DownloadTask", "retry for %d", Integer.valueOf(code));
            try {
                Thread.sleep(RETRY_INTERVAL_MILLI, 0);
                i++;
            } catch (InterruptedException e) {
                code = 5;
            }
        } while (i <= maxRetry);
        return postProcess(code);
    }

    private void preProcess(final Request request) {
        this.mTaskInfo = new TaskInfo();
        if (request.getListener() != null) {
            ThreadManager.getMainHandler().post(new Runnable() {
                public void run() {
                    Listener listener = request.getListener();
                    if (listener != null) {
                        listener.onStart();
                    }
                }
            });
        }
    }

    private int tryDownload(Request request) {
        Holder<HttpURLConnection> ret = ConnectionController.open(request.getUri(), request.getNetworkType());
        HttpURLConnection conn = ret.value;
        if (conn == null) {
            Log.d("DownloadTask", "open connection failed");
            return translateErrorCode(ret.reason);
        }
        InputStream in = null;
        OutputStream out = null;
        try {
            configure(conn);
            conn.connect();
            int result = translateResponseCode(conn.getResponseCode());
            if (result != 0) {
                Log.d("DownloadTask", "response code not valid");
                conn.disconnect();
                if (in != null) {
                    try {
                        in.close();
                    } catch (Throwable e) {
                        Log.w("DownloadTask", e);
                    }
                }
                if (out == null) {
                    return result;
                }
                try {
                    out.close();
                    return result;
                } catch (Throwable e2) {
                    Log.w("DownloadTask", e2);
                    return result;
                }
            }
            processHeader(conn);
            in = conn.getInputStream();
            out = openOutputStream(request.getDestination());
            if (out == null) {
                Log.d("DownloadTask", "open output stream failed");
                conn.disconnect();
                if (in != null) {
                    try {
                        in.close();
                    } catch (Throwable e22) {
                        Log.w("DownloadTask", e22);
                    }
                }
                if (out == null) {
                    return 4;
                }
                try {
                    out.close();
                    return 4;
                } catch (Throwable e222) {
                    Log.w("DownloadTask", e222);
                    return 4;
                }
            }
            preTransferContent(request);
            Log.d("DownloadTask", "start to transfer data");
            int bytesRead = 0;
            byte[] buffer = new byte[8192];
            while (!this.mCoreTask.isCancelled()) {
                bytesRead = in.read(buffer);
                if (bytesRead == -1) {
                    break;
                }
                out.write(buffer, 0, bytesRead);
                performProgressUpdate(buffer, bytesRead);
            }
            if (bytesRead == -1) {
                Log.d("DownloadTask", "download success");
                result = postTransferContent();
                conn.disconnect();
                if (in != null) {
                    try {
                        in.close();
                    } catch (Throwable e2222) {
                        Log.w("DownloadTask", e2222);
                    }
                }
                if (out == null) {
                    return result;
                }
                try {
                    out.close();
                    return result;
                } catch (Throwable e22222) {
                    Log.w("DownloadTask", e22222);
                    return result;
                }
            }
            Log.d("DownloadTask", "cancelled, during download");
            conn.disconnect();
            if (in != null) {
                try {
                    in.close();
                } catch (Throwable e222222) {
                    Log.w("DownloadTask", e222222);
                }
            }
            if (out == null) {
                return 5;
            }
            try {
                out.close();
                return 5;
            } catch (Throwable e2222222) {
                Log.w("DownloadTask", e2222222);
                return 5;
            }
        } catch (IOException e3) {
            Log.w("DownloadTask", "tryDownload occur error.");
            conn.disconnect();
            if (in != null) {
                try {
                    in.close();
                } catch (Throwable e22222222) {
                    Log.w("DownloadTask", e22222222);
                }
            }
            if (out == null) {
                return 11;
            }
            try {
                out.close();
                return 11;
            } catch (Throwable e222222222) {
                Log.w("DownloadTask", e222222222);
                return 11;
            }
        } catch (Throwable th) {
            conn.disconnect();
            if (in != null) {
                try {
                    in.close();
                } catch (Throwable e2222222222) {
                    Log.w("DownloadTask", e2222222222);
                }
            }
            if (out != null) {
                try {
                    out.close();
                } catch (Throwable e22222222222) {
                    Log.w("DownloadTask", e22222222222);
                }
            }
        }
    }

    private void configure(HttpURLConnection conn) {
        conn.setConnectTimeout(10000);
        conn.setReadTimeout(15000);
        conn.setRequestProperty("Accept-Encoding", "identity");
    }

    private void processHeader(HttpURLConnection conn) {
        this.mTaskInfo.mContentLength = (long) conn.getContentLength();
        Log.d("DownloadTask", "content length: %d", Long.valueOf(this.mTaskInfo.mContentLength));
    }

    private void preTransferContent(Request request) {
        Verifier verifier = request.getVerifier();
        if (verifier != null) {
            Log.d("DownloadTask", "need verify, try to get MessageDigest");
            this.mTaskInfo.mDigest = verifier.getInstance();
        }
    }

    private void performProgressUpdate(byte[] buff, int size) {
        long downloadSize = this.mTaskInfo.mDownloadSize;
        TaskInfo taskInfo = this.mTaskInfo;
        taskInfo.mDownloadSize += (long) size;
        if (this.mTaskInfo.mDigest != null) {
            this.mTaskInfo.mDigest.update(buff, 0, size);
        }
        if (this.mTaskInfo.mContentLength > 0) {
            int percent = (int) ((((double) this.mTaskInfo.mDownloadSize) / ((double) this.mTaskInfo.mContentLength)) * 100.0d);
            if (((int) ((((double) downloadSize) / ((double) this.mTaskInfo.mContentLength)) * 100.0d)) != percent) {
                this.mCoreTask.publishProgress(percent);
            }
        }
    }

    private int postTransferContent() {
        if (this.mCoreTask.mRequest.getVerifier() == null || this.mCoreTask.mRequest.getVerifier().verify(this.mTaskInfo.mDigest.digest())) {
            Log.d("DownloadTask", "verify success");
            return 0;
        }
        Log.d("DownloadTask", "verify fail");
        return 6;
    }

    private int postProcess(int code) {
        if (code != 0) {
            Object tmpFile = getTempFile(this.mCoreTask.mRequest.getDestination());
            if (!tmpFile.exists() || tmpFile.delete()) {
                return code;
            }
            Log.d("DownloadTask", "delete tmp file failed %s", tmpFile);
            return code;
        }
        File dst = this.mCoreTask.mRequest.getDestination();
        File tmpFile2 = getTempFile(dst);
        if (!tmpFile2.exists()) {
            Log.w("DownloadTask", "downloaded file missing");
            return 9;
        } else if (tmpFile2.renameTo(dst)) {
            Log.w("DownloadTask", "rename tmp file success");
            return code;
        } else {
            Log.w("DownloadTask", "downloaded file rename failed");
            return 9;
        }
    }

    private static File getTempFile(File dst) {
        return new File(dst.getParent(), dst.getName() + ".download");
    }

    private static int translateResponseCode(int code) {
        if (code != Response.CODE_GENERIC_ERROR) {
            Log.d("DownloadTask", "processing http code %d", Integer.valueOf(code));
            int cat = code / 100;
            if (cat == 3) {
                return 7;
            }
            if (cat == 4) {
                if (code == 408) {
                    return 12;
                }
                return 7;
            } else if (cat != 5) {
                if (cat == 2) {
                }
                return 7;
            } else if (code == 504) {
                return 12;
            } else {
                return 8;
            }
        }
        Log.d("DownloadTask", "http status is ok");
        return 0;
    }

    private static boolean isRetryState(int state) {
        return state == 12 || state == 11;
    }

    private static int translateErrorCode(int code) {
        switch (code) {
            case 0:
                return 0;
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
                return 3;
            default:
                return 11;
        }
    }

    private static OutputStream openOutputStream(File file) {
        File folder = file.getParentFile();
        if (folder.exists() || folder.mkdirs()) {
            if (file.exists()) {
                if (file.isDirectory()) {
                    Log.d("DownloadTask", "output file is a directory");
                    return null;
                }
                Log.w("DownloadTask", "output file will be overwritten");
            }
            File tempFile = getTempFile(file);
            if (tempFile.exists()) {
                Log.w("DownloadTask", "temp file exists, try delete");
                if (!tempFile.delete()) {
                    Log.w("DownloadTask", "temp file delete failed, will overwrite");
                }
            }
            try {
                return new FileOutputStream(tempFile);
            } catch (Throwable e) {
                Log.w("DownloadTask", e);
                return null;
            }
        }
        Log.d("DownloadTask", "create folder failed");
        return null;
    }
}
