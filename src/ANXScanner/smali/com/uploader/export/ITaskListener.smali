.class public interface abstract Lcom/uploader/export/ITaskListener;
.super Ljava/lang/Object;
.source "ITaskListener.java"


# virtual methods
.method public abstract onCancel(Lcom/uploader/export/IUploaderTask;)V
.end method

.method public abstract onFailure(Lcom/uploader/export/IUploaderTask;Lcom/uploader/export/TaskError;)V
.end method

.method public abstract onPause(Lcom/uploader/export/IUploaderTask;)V
.end method

.method public abstract onProgress(Lcom/uploader/export/IUploaderTask;I)V
.end method

.method public abstract onResume(Lcom/uploader/export/IUploaderTask;)V
.end method

.method public abstract onStart(Lcom/uploader/export/IUploaderTask;)V
.end method

.method public abstract onSuccess(Lcom/uploader/export/IUploaderTask;Lcom/uploader/export/ITaskResult;)V
.end method

.method public abstract onWait(Lcom/uploader/export/IUploaderTask;)V
.end method
