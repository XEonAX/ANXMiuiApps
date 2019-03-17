.class public Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;
.super Landroid/os/AsyncTask;
.source "UnzipTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mData:Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;

.field private mIsTemplate:Z

.field private mUnZipPath:Ljava/lang/String;

.field private mUnzipFileListener:Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IUnzipFileListener;

.field private mZipPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/miui/gallery/video/editor/model/VideoEditorBaseModel;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IUnzipFileListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isTemplate"    # Z
    .param p3, "data"    # Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;
    .param p4, "zipPath"    # Ljava/lang/String;
    .param p5, "unZipPath"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IUnzipFileListener;

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 17
    const-string v0, "UnzipTaskManager"

    iput-object v0, p0, Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;->TAG:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;->mContext:Landroid/content/Context;

    .line 23
    iput-boolean p2, p0, Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;->mIsTemplate:Z

    .line 24
    iput-object p3, p0, Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;->mData:Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;

    .line 25
    iput-object p4, p0, Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;->mZipPath:Ljava/lang/String;

    .line 26
    iput-object p6, p0, Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;->mUnzipFileListener:Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IUnzipFileListener;

    .line 27
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;->mZipPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;->mUnZipPath:Ljava/lang/String;

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    iput-object p5, p0, Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;->mUnZipPath:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "result":Z
    iget-object v1, p0, Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 37
    iget-boolean v1, p0, Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;->mIsTemplate:Z

    if-eqz v1, :cond_1

    .line 38
    iget-object v1, p0, Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;->mZipPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;->mUnZipPath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miui/gallery/video/editor/util/FileHelper;->unZipTemplateFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;->mUnZipPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;->mData:Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;

    iget-object v2, p0, Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;->mUnZipPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;->setUnZipPath(Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x1

    .line 47
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 40
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;->mUnZipPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/util/FileHelper;->unZipFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;->mUnZipPath:Ljava/lang/String;

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "aBoolean"    # Ljava/lang/Boolean;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 52
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;->mData:Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;->TAG:Ljava/lang/String;

    const-string v1, "file unzip success"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;->mUnzipFileListener:Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IUnzipFileListener;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;->mUnzipFileListener:Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IUnzipFileListener;

    invoke-interface {v0}, Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IUnzipFileListener;->onUzipFileSuccess()V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;->TAG:Ljava/lang/String;

    const-string v1, "file unzip fail"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;->mUnzipFileListener:Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IUnzipFileListener;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;->mUnzipFileListener:Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IUnzipFileListener;

    invoke-interface {v0}, Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IUnzipFileListener;->onUnzipFileFailed()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setListener(Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IUnzipFileListener;)V
    .locals 0
    .param p1, "unzipFileListener"    # Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IUnzipFileListener;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;->mUnzipFileListener:Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IUnzipFileListener;

    .line 67
    return-void
.end method
