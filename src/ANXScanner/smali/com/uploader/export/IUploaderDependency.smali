.class public interface abstract Lcom/uploader/export/IUploaderDependency;
.super Ljava/lang/Object;
.source "IUploaderDependency.java"


# virtual methods
.method public abstract getEnvironment()Lcom/uploader/export/IUploaderEnvironment;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getLog()Lcom/uploader/export/IUploaderLog;
.end method

.method public abstract getStatistics()Lcom/uploader/export/IUploaderStatistics;
.end method
