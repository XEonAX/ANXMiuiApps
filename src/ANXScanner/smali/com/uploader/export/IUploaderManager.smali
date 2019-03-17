.class public interface abstract Lcom/uploader/export/IUploaderManager;
.super Ljava/lang/Object;
.source "IUploaderManager.java"


# virtual methods
.method public abstract cancelAsync(Lcom/uploader/export/IUploaderTask;)Z
    .param p1    # Lcom/uploader/export/IUploaderTask;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract initialize(Landroid/content/Context;Lcom/uploader/export/IUploaderDependency;)Z
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/uploader/export/IUploaderDependency;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract isInitialized()Z
.end method

.method public abstract uploadAsync(Lcom/uploader/export/IUploaderTask;Lcom/uploader/export/ITaskListener;Landroid/os/Handler;)Z
    .param p1    # Lcom/uploader/export/IUploaderTask;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/uploader/export/ITaskListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
