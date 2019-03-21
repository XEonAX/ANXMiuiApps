package com.miui.gallery.video.editor.manager;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.video.editor.interfaces.IVideoEditorListener.IUnzipFileListener;
import com.miui.gallery.video.editor.model.VideoEditorBaseModel;
import com.miui.gallery.video.editor.util.FileHelper;

public class UnzipTaskManager extends AsyncTask<Void, Void, Boolean> {
    private String TAG = "UnzipTaskManager";
    private Context mContext;
    private VideoEditorBaseModel mData;
    private boolean mIsTemplate;
    private String mUnZipPath;
    private IUnzipFileListener mUnzipFileListener;
    private String mZipPath;

    public UnzipTaskManager(Context context, boolean isTemplate, VideoEditorBaseModel data, String zipPath, String unZipPath, IUnzipFileListener listener) {
        this.mContext = context;
        this.mIsTemplate = isTemplate;
        this.mData = data;
        this.mZipPath = zipPath;
        this.mUnzipFileListener = listener;
        if (TextUtils.isEmpty(unZipPath)) {
            this.mUnZipPath = this.mZipPath;
        } else {
            this.mUnZipPath = unZipPath;
        }
    }

    protected Boolean doInBackground(Void... voids) {
        boolean result = false;
        if (this.mContext != null) {
            if (this.mIsTemplate) {
                FileHelper.unZipTemplateFile(this.mZipPath, this.mUnZipPath);
            } else {
                this.mUnZipPath = FileHelper.unZipFile(this.mUnZipPath);
            }
            if (!TextUtils.isEmpty(this.mUnZipPath)) {
                this.mData.setUnZipPath(this.mUnZipPath);
                result = true;
            }
        }
        return Boolean.valueOf(result);
    }

    protected void onPostExecute(Boolean aBoolean) {
        super.onPostExecute(aBoolean);
        if (!aBoolean.booleanValue() || this.mData == null) {
            Log.d(this.TAG, "file unzip fail");
            if (this.mUnzipFileListener != null) {
                this.mUnzipFileListener.onUnzipFileFailed();
                return;
            }
            return;
        }
        Log.d(this.TAG, "file unzip success");
        if (this.mUnzipFileListener != null) {
            this.mUnzipFileListener.onUzipFileSuccess();
        }
    }

    public void setListener(IUnzipFileListener unzipFileListener) {
        this.mUnzipFileListener = unzipFileListener;
    }
}
