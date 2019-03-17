.class Lcom/miui/gallery/video/editor/ui/MenuFragment$2;
.super Ljava/lang/Object;
.source "MenuFragment.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/video/editor/ui/MenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/ui/MenuFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/ui/MenuFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/ui/MenuFragment;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2;->this$0:Lcom/miui/gallery/video/editor/ui/MenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/video/editor/ui/MenuFragment$2;Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/MenuFragment$2;
    .param p1, "x1"    # Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;
    .param p2, "x2"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/video/editor/ui/MenuFragment$2;->unZipDownloadFile(Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;I)V

    return-void
.end method

.method private unZipDownloadFile(Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;I)V
    .locals 8
    .param p1, "data"    # Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;
    .param p2, "position"    # I

    .prologue
    .line 186
    iget-object v7, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2;->this$0:Lcom/miui/gallery/video/editor/ui/MenuFragment;

    new-instance v0, Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2;->this$0:Lcom/miui/gallery/video/editor/ui/MenuFragment;

    iget-object v1, v1, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;->isTemplate()Z

    move-result v2

    invoke-virtual {p0, p1}, Lcom/miui/gallery/video/editor/ui/MenuFragment$2;->getDownloadPath(Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/miui/gallery/video/editor/ui/MenuFragment$2;->getUnzipPath(Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/miui/gallery/video/editor/ui/MenuFragment$2$2;

    invoke-direct {v6, p0, p1, p2}, Lcom/miui/gallery/video/editor/ui/MenuFragment$2$2;-><init>(Lcom/miui/gallery/video/editor/ui/MenuFragment$2;Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;I)V

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;-><init>(Landroid/content/Context;ZLcom/miui/gallery/video/editor/model/VideoEditorBaseModel;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IUnzipFileListener;)V

    invoke-static {v7, v0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->access$102(Lcom/miui/gallery/video/editor/ui/MenuFragment;Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;)Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;

    .line 200
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2;->this$0:Lcom/miui/gallery/video/editor/ui/MenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->access$100(Lcom/miui/gallery/video/editor/ui/MenuFragment;)Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 201
    return-void
.end method


# virtual methods
.method public downloadResource(Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;IZ)V
    .locals 8
    .param p1, "data"    # Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;
    .param p2, "position"    # I
    .param p3, "isActiveNetworkMetered"    # Z

    .prologue
    .line 148
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2;->this$0:Lcom/miui/gallery/video/editor/ui/MenuFragment;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mResourceDownloadManager:Lcom/miui/gallery/video/editor/manager/DownloadManager;

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2;->this$0:Lcom/miui/gallery/video/editor/ui/MenuFragment;

    new-instance v1, Lcom/miui/gallery/video/editor/manager/DownloadManager;

    invoke-direct {v1}, Lcom/miui/gallery/video/editor/manager/DownloadManager;-><init>()V

    iput-object v1, v0, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mResourceDownloadManager:Lcom/miui/gallery/video/editor/manager/DownloadManager;

    .line 151
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 152
    .local v2, "startTime":J
    const-string v0, "MenuFragment"

    const-string v1, "downloadResource start."

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;->setDownloadState(I)V

    .line 154
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2;->this$0:Lcom/miui/gallery/video/editor/ui/MenuFragment;

    iget-object v6, v0, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mResourceDownloadManager:Lcom/miui/gallery/video/editor/manager/DownloadManager;

    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2;->this$0:Lcom/miui/gallery/video/editor/ui/MenuFragment;

    iget-object v7, v0, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mIDownloadListener:Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IDownloadListener;

    new-instance v0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2$1;

    move-object v1, p0

    move v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/video/editor/ui/MenuFragment$2$1;-><init>(Lcom/miui/gallery/video/editor/ui/MenuFragment$2;JILcom/miui/gallery/video/editor/model/VideoEditorBaseModel;)V

    invoke-virtual {v6, p1, v7, v0, p3}, Lcom/miui/gallery/video/editor/manager/DownloadManager;->download(Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IDownloadListener;Lcom/miui/gallery/net/download/Request$Listener;Z)V

    .line 183
    return-void
.end method

.method public downloadResourceWithCheck(Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;I)V
    .locals 2
    .param p1, "data"    # Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;
    .param p2, "position"    # I

    .prologue
    .line 210
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2;->this$0:Lcom/miui/gallery/video/editor/ui/MenuFragment;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0528

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 229
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isActiveNetworkMetered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2;->this$0:Lcom/miui/gallery/video/editor/ui/MenuFragment;

    new-instance v1, Lcom/miui/gallery/video/editor/ui/MenuFragment$2$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/gallery/video/editor/ui/MenuFragment$2$3;-><init>(Lcom/miui/gallery/video/editor/ui/MenuFragment$2;Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;I)V

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->access$200(Lcom/miui/gallery/video/editor/ui/MenuFragment;Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;)V

    goto :goto_0

    .line 227
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/gallery/video/editor/ui/MenuFragment$2;->downloadResource(Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;IZ)V

    goto :goto_0
.end method

.method public getDownloadPath(Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;)Ljava/lang/String;
    .locals 4
    .param p1, "data"    # Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2;->this$0:Lcom/miui/gallery/video/editor/ui/MenuFragment;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mModuleFactory:Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 138
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2;->this$0:Lcom/miui/gallery/video/editor/ui/MenuFragment;

    iget-object v1, v1, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mModuleFactory:Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;

    invoke-virtual {p1}, Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;->getTemplateDir(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUnzipPath(Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;)Ljava/lang/String;
    .locals 1
    .param p1, "data"    # Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2;->this$0:Lcom/miui/gallery/video/editor/ui/MenuFragment;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mModuleFactory:Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;->getUnzipPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
