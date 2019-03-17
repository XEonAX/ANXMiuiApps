.class public Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;
.super Ljava/lang/Object;
.source "FontDownloadManager.java"


# instance fields
.field private mFontResDownloadManager:Lcom/miui/gallery/editor/photo/core/imports/net/FontResDownloadManager;

.field private mUnzipFontTask:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/UnzipFontTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadCallback;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;
    .param p2, "x2"    # Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadCallback;
    .param p3, "x3"    # Z

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;->downloadResource(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadCallback;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;
    .param p2, "x2"    # Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadCallback;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;->unZipDownloadFile(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadCallback;)V

    return-void
.end method

.method private downloadResource(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadCallback;Z)V
    .locals 3
    .param p1, "data"    # Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;
    .param p2, "downloadListener"    # Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadCallback;
    .param p3, "isActiveNetworkMetered"    # Z

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;->mFontResDownloadManager:Lcom/miui/gallery/editor/photo/core/imports/net/FontResDownloadManager;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/net/FontResDownloadManager;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/net/FontResDownloadManager;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;->mFontResDownloadManager:Lcom/miui/gallery/editor/photo/core/imports/net/FontResDownloadManager;

    .line 56
    :cond_0
    if-eqz p2, :cond_1

    .line 57
    const-string v0, "FontDownloadManager"

    const-string v1, "font is ready to download."

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-interface {p2}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadCallback;->onStart()V

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;->mFontResDownloadManager:Lcom/miui/gallery/editor/photo/core/imports/net/FontResDownloadManager;

    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->getDownloadFilePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager$2;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadCallback;)V

    invoke-virtual {v0, p1, v1, v2, p3}, Lcom/miui/gallery/editor/photo/core/imports/net/FontResDownloadManager;->download(Lcom/miui/gallery/editor/photo/core/imports/text/model/FontBean;Ljava/lang/String;Lcom/miui/gallery/net/download/Request$Listener;Z)V

    .line 88
    return-void
.end method

.method private unZipDownloadFile(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadCallback;)V
    .locals 3
    .param p1, "data"    # Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;
    .param p2, "downloadListener"    # Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadCallback;

    .prologue
    .line 91
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/UnzipFontTask;

    invoke-direct {v0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/UnzipFontTask;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadCallback;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;->mUnzipFontTask:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/UnzipFontTask;

    .line 92
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;->mUnzipFontTask:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/UnzipFontTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/UnzipFontTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 93
    return-void
.end method


# virtual methods
.method public cancelAll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;->mFontResDownloadManager:Lcom/miui/gallery/editor/photo/core/imports/net/FontResDownloadManager;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;->mFontResDownloadManager:Lcom/miui/gallery/editor/photo/core/imports/net/FontResDownloadManager;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/net/FontResDownloadManager;->cancelAll()V

    .line 98
    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;->mFontResDownloadManager:Lcom/miui/gallery/editor/photo/core/imports/net/FontResDownloadManager;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;->mUnzipFontTask:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/UnzipFontTask;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;->mUnzipFontTask:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/UnzipFontTask;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/UnzipFontTask;->release()V

    .line 102
    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;->mUnzipFontTask:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/UnzipFontTask;

    .line 104
    :cond_1
    return-void
.end method

.method public downloadFontResource(Landroid/content/Context;Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadCallback;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;
    .param p3, "callBack"    # Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadCallback;

    .prologue
    .line 25
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    const v0, 0x7f0c038e

    invoke-static {p1, v0}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 27
    const-string v0, "FontDownloadManager"

    const-string v1, "download resource no network"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :goto_0
    return-void

    .line 28
    :cond_0
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isActiveNetworkMetered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    new-instance v5, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager$1;

    invoke-direct {v5, p0, p2, p3}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager$1;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadCallback;)V

    .local v5, "confirmDialogInterface":Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;
    move-object v0, p1

    .line 40
    check-cast v0, Landroid/app/Activity;

    .line 41
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0390

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c038f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c038c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0c038d

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 40
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/ui/ConfirmDialog;->showConfirmDialog(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;)V

    goto :goto_0

    .line 48
    .end local v5    # "confirmDialogInterface":Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;->downloadResource(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadCallback;Z)V

    goto :goto_0
.end method
