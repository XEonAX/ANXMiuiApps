package com.uploader.export;

public interface ITaskListener {
    void onCancel(IUploaderTask iUploaderTask);

    void onFailure(IUploaderTask iUploaderTask, TaskError taskError);

    void onPause(IUploaderTask iUploaderTask);

    void onProgress(IUploaderTask iUploaderTask, int i);

    void onResume(IUploaderTask iUploaderTask);

    void onStart(IUploaderTask iUploaderTask);

    void onSuccess(IUploaderTask iUploaderTask, ITaskResult iTaskResult);

    void onWait(IUploaderTask iUploaderTask);
}
