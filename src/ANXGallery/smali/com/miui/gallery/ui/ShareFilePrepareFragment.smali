.class public Lcom/miui/gallery/ui/ShareFilePrepareFragment;
.super Lcom/miui/gallery/widget/GalleryDialogFragment;
.source "ShareFilePrepareFragment.java"

# interfaces
.implements Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadListener;
.implements Lcom/miui/gallery/util/FileCompressTask$OnCompressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask;,
        Lcom/miui/gallery/ui/ShareFilePrepareFragment$OnErrorListener;,
        Lcom/miui/gallery/ui/ShareFilePrepareFragment$OutputGenerator;,
        Lcom/miui/gallery/ui/ShareFilePrepareFragment$OnPrepareListener;
    }
.end annotation


# instance fields
.field private mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private final mCompressFails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCompressFuture:Lcom/miui/gallery/threadpool/Future;

.field private mDecodeSecretTask:Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask;

.field private final mDownloadFails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadListener:Lcom/miui/gallery/ui/ShareFilePrepareFragment$OnPrepareListener;

.field private mErrorListener:Lcom/miui/gallery/ui/ShareFilePrepareFragment$OnErrorListener;

.field private mHelper:Lcom/miui/gallery/util/BulkDownloadHelper;

.field private mMaxCompressProgress:I

.field private mMaxDownloadProgress:I

.field private mMaxRenderProgress:I

.field private mMaxSecretProgress:I

.field private mPendingPrepareEnd:Z

.field private mProgressDialog:Lmiui/app/ProgressDialog;

.field private final mRenderFails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mRenderItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mRenderSuccess:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mRenderTask:Lcom/miui/gallery/editor/photo/sdk/RenderTask;

.field private mSecretIds:[J

.field private mSecretKeys:[[B

.field private final mSecretList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mShareUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mStopped:Z

.field private final mSuccessPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mSuccessPaths:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mCompressFails:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mDownloadFails:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mRenderItems:Ljava/util/Set;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mSecretList:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mRenderSuccess:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mRenderFails:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mShareUris:Ljava/util/List;

    .line 500
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)Lmiui/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    .prologue
    .line 36
    iget v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mMaxDownloadProgress:I

    return v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->onPrepareEnd()V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->scheduleCleanSecret()V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mRenderFails:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mRenderSuccess:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    .prologue
    .line 36
    iget v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mMaxRenderProgress:I

    return v0
.end method

.method static synthetic access$1600(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->scheduleClean()V

    return-void
.end method

.method static synthetic access$1702(Lcom/miui/gallery/ui/ShareFilePrepareFragment;Lcom/miui/gallery/editor/photo/sdk/RenderTask;)Lcom/miui/gallery/editor/photo/sdk/RenderTask;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/ShareFilePrepareFragment;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/sdk/RenderTask;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mRenderTask:Lcom/miui/gallery/editor/photo/sdk/RenderTask;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    .prologue
    .line 36
    iget v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mMaxSecretProgress:I

    return v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/ShareFilePrepareFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/ShareFilePrepareFragment;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->updateProgress(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mSuccessPaths:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/ui/ShareFilePrepareFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/ShareFilePrepareFragment;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->resolveError(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mSecretList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mShareUris:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mRenderItems:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->doRender()V

    return-void
.end method

.method private doCompress(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "compressItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mCompressFuture:Lcom/miui/gallery/threadpool/Future;

    if-nez v0, :cond_0

    .line 165
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/util/FileCompressTask;

    const-string v2, "MIUI/Gallery/.compressShare"

    invoke-direct {v1, p1, p0, v2}, Lcom/miui/gallery/util/FileCompressTask;-><init>(Ljava/util/List;Lcom/miui/gallery/util/FileCompressTask$OnCompressListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mCompressFuture:Lcom/miui/gallery/threadpool/Future;

    .line 167
    :cond_0
    return-void
.end method

.method private doDownload(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, "downloadItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;>;"
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mHelper:Lcom/miui/gallery/util/BulkDownloadHelper;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lcom/miui/gallery/util/BulkDownloadHelper;

    invoke-direct {v0}, Lcom/miui/gallery/util/BulkDownloadHelper;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mHelper:Lcom/miui/gallery/util/BulkDownloadHelper;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mHelper:Lcom/miui/gallery/util/BulkDownloadHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p0}, Lcom/miui/gallery/util/BulkDownloadHelper;->download(Ljava/util/List;ZLcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadListener;)V

    .line 174
    return-void
.end method

.method private doRender()V
    .locals 5

    .prologue
    .line 237
    const-string v0, "ShareFilePrepareFragment"

    const-string v1, "render items: %s"

    iget-object v2, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mRenderItems:Ljava/util/Set;

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 238
    new-instance v0, Lcom/miui/gallery/editor/photo/sdk/RenderTask;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mRenderItems:Ljava/util/Set;

    new-instance v3, Lcom/miui/gallery/ui/ShareFilePrepareFragment$OutputGenerator;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/miui/gallery/ui/ShareFilePrepareFragment$OutputGenerator;-><init>(Lcom/miui/gallery/ui/ShareFilePrepareFragment;Lcom/miui/gallery/ui/ShareFilePrepareFragment$1;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/editor/photo/sdk/RenderTask;-><init>(Landroid/content/Context;Ljava/util/Collection;Lcom/miui/gallery/editor/photo/sdk/RenderTask$Generator;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mRenderTask:Lcom/miui/gallery/editor/photo/sdk/RenderTask;

    .line 239
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mRenderTask:Lcom/miui/gallery/editor/photo/sdk/RenderTask;

    new-instance v1, Lcom/miui/gallery/ui/ShareFilePrepareFragment$3;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment$3;-><init>(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->setCallback(Lcom/miui/gallery/editor/photo/sdk/RenderTask$Callback;)V

    .line 283
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mRenderTask:Lcom/miui/gallery/editor/photo/sdk/RenderTask;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->start()V

    .line 284
    return-void
.end method

.method private doSecret()V
    .locals 6

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->getSecretFolder()Ljava/io/File;

    move-result-object v1

    .line 182
    .local v1, "mCacheFolder":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    const v0, 0x7f0c047d

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->resolveError(I)V

    .line 227
    :goto_0
    return-void

    .line 188
    :cond_0
    new-instance v0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask;

    iget-object v2, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mSecretList:Ljava/util/List;

    iget-object v3, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mSecretKeys:[[B

    iget-object v4, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mSecretIds:[J

    new-instance v5, Lcom/miui/gallery/ui/ShareFilePrepareFragment$2;

    invoke-direct {v5, p0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment$2;-><init>(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)V

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask;-><init>(Ljava/io/File;Ljava/util/List;[[B[JLcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask$DecodeSecretListener;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mDecodeSecretTask:Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask;

    .line 226
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mDecodeSecretTask:Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private getSecretFolder()Ljava/io/File;
    .locals 3

    .prologue
    .line 177
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "dc_tmp_files"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private handleFiles()V
    .locals 15

    .prologue
    const/high16 v14, 0x3f800000    # 1.0f

    .line 287
    invoke-virtual {p0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "key_compress_items"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 288
    .local v0, "compressItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "key_download_items"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 289
    .local v2, "downloadItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "key_render_items"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 290
    .local v4, "renderItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "key_secret_items"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 291
    .local v7, "secretItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "key_share_uri"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 292
    .local v10, "shareUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "key_secret_keys"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v11

    check-cast v11, [[B

    move-object v8, v11

    check-cast v8, [[B

    .line 293
    .local v8, "secretKeys":[[B
    invoke-virtual {p0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "key_secret_ids"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v6

    .line 294
    .local v6, "secretIds":[J
    if-eqz v10, :cond_0

    .line 295
    iget-object v11, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mShareUris:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 296
    iget-object v11, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mShareUris:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 298
    :cond_0
    if-eqz v4, :cond_1

    .line 299
    const-string v11, "ShareFilePrepareFragment"

    const-string v12, "render files: %s"

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 300
    iget-object v11, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mRenderItems:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Set;->clear()V

    .line 301
    iget-object v11, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mRenderFails:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 302
    iget-object v11, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mRenderSuccess:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 303
    iget-object v11, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mRenderItems:Ljava/util/Set;

    invoke-interface {v11, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 306
    :cond_1
    if-eqz v7, :cond_2

    .line 307
    iget-object v11, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mSecretList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 308
    iget-object v11, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mSecretList:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 309
    iput-object v8, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mSecretKeys:[[B

    .line 310
    iput-object v6, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mSecretIds:[J

    .line 313
    :cond_2
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 314
    const-string v11, "ShareFilePrepareFragment"

    const-string v12, "compress file."

    invoke-static {v11, v12}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 316
    .local v1, "compressSize":I
    const/4 v3, 0x0

    .line 317
    .local v3, "downloadSize":I
    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 318
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 320
    :cond_3
    const/high16 v11, 0x42c80000    # 100.0f

    int-to-float v12, v1

    mul-float/2addr v11, v12

    add-int v12, v1, v3

    int-to-float v12, v12

    div-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mMaxCompressProgress:I

    .line 321
    iget v11, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mMaxCompressProgress:I

    rsub-int/lit8 v11, v11, 0x64

    iput v11, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mMaxDownloadProgress:I

    .line 322
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->doCompress(Ljava/util/ArrayList;)V

    .line 343
    .end local v1    # "compressSize":I
    .end local v3    # "downloadSize":I
    :goto_0
    return-void

    .line 323
    :cond_4
    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 324
    iget-object v11, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mRenderItems:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v5

    .line 325
    .local v5, "renderSize":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 326
    .restart local v3    # "downloadSize":I
    iget-object v11, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mSecretList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v9

    .line 327
    .local v9, "secretSize":I
    mul-int/lit8 v11, v3, 0x64

    int-to-float v11, v11

    mul-float/2addr v11, v14

    add-int v12, v3, v5

    add-int/2addr v12, v9

    int-to-float v12, v12

    div-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mMaxDownloadProgress:I

    .line 328
    mul-int/lit8 v11, v9, 0x64

    int-to-float v11, v11

    mul-float/2addr v11, v14

    add-int v12, v3, v5

    add-int/2addr v12, v9

    int-to-float v12, v12

    div-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mMaxSecretProgress:I

    .line 329
    iget v11, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mMaxDownloadProgress:I

    rsub-int/lit8 v11, v11, 0x64

    iget v12, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mMaxSecretProgress:I

    sub-int/2addr v11, v12

    iput v11, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mMaxRenderProgress:I

    .line 330
    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->doDownload(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 331
    .end local v3    # "downloadSize":I
    .end local v5    # "renderSize":I
    .end local v9    # "secretSize":I
    :cond_5
    iget-object v11, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mSecretList:Ljava/util/List;

    invoke-static {v11}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 332
    iget-object v11, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mRenderItems:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v5

    .line 333
    .restart local v5    # "renderSize":I
    iget-object v11, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mSecretList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v9

    .line 334
    .restart local v9    # "secretSize":I
    mul-int/lit8 v11, v9, 0x64

    int-to-float v11, v11

    mul-float/2addr v11, v14

    add-int v12, v5, v9

    int-to-float v12, v12

    div-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mMaxSecretProgress:I

    .line 335
    iget v11, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mMaxSecretProgress:I

    rsub-int/lit8 v11, v11, 0x64

    iput v11, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mMaxRenderProgress:I

    .line 336
    invoke-direct {p0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->doSecret()V

    goto :goto_0

    .line 337
    .end local v5    # "renderSize":I
    .end local v9    # "secretSize":I
    :cond_6
    iget-object v11, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mRenderItems:Ljava/util/Set;

    invoke-static {v11}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 338
    const/16 v11, 0x64

    iput v11, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mMaxRenderProgress:I

    .line 339
    invoke-direct {p0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->doRender()V

    goto :goto_0

    .line 341
    :cond_7
    invoke-virtual {p0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->dismissAllowingStateLoss()V

    goto :goto_0
.end method

.method public static newInstance(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/miui/gallery/ui/ShareFilePrepareFragment;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/miui/gallery/ui/ShareFilePrepareFragment;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "compressItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p1, "downloadItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;>;"
    .local p2, "renderItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .local p3, "secretItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .local p4, "secretKeys":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local p5, "shareUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .local p6, "secretIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v2, Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    invoke-direct {v2}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;-><init>()V

    .line 66
    .local v2, "fragment":Lcom/miui/gallery/ui/ShareFilePrepareFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 67
    .local v1, "data":Landroid/os/Bundle;
    const-string v4, "key_compress_items"

    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 68
    const-string v4, "key_download_items"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 69
    const-string v4, "key_render_items"

    invoke-virtual {v1, v4, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 70
    const-string v4, "key_secret_items"

    invoke-virtual {v1, v4, p3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 71
    const-string v4, "key_secret_ids"

    invoke-static {p6}, Lcom/miui/gallery/util/Numbers;->toArray(Ljava/util/List;)[J

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 72
    const-string v4, "key_share_uri"

    invoke-virtual {v1, v4, p5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 73
    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 74
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [[B

    .line 75
    .local v0, "bytes":[[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 76
    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aput-object v4, v0, v3

    .line 75
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 78
    :cond_0
    const-string v4, "key_secret_keys"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 80
    .end local v0    # "bytes":[[B
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v2, v1}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->setArguments(Landroid/os/Bundle;)V

    .line 81
    return-object v2
.end method

.method private onPrepareEnd()V
    .locals 6

    .prologue
    .line 380
    const-string v0, "ShareFilePrepareFragment"

    const-string v1, "prepare finish, render fails: %d"

    iget-object v2, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mRenderFails:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 382
    iget-boolean v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mStopped:Z

    if-nez v0, :cond_1

    .line 383
    invoke-virtual {p0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->dismissAllowingStateLoss()V

    .line 384
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mDownloadListener:Lcom/miui/gallery/ui/ShareFilePrepareFragment$OnPrepareListener;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mDownloadListener:Lcom/miui/gallery/ui/ShareFilePrepareFragment$OnPrepareListener;

    iget-object v1, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mSuccessPaths:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mCompressFails:Ljava/util/List;

    iget-object v3, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mRenderFails:Ljava/util/List;

    iget-object v4, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mRenderSuccess:Ljava/util/List;

    iget-object v5, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mDownloadFails:Ljava/util/List;

    invoke-interface/range {v0 .. v5}, Lcom/miui/gallery/ui/ShareFilePrepareFragment$OnPrepareListener;->onPrepareComplete(Ljava/util/List;Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;)V

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mDownloadListener:Lcom/miui/gallery/ui/ShareFilePrepareFragment$OnPrepareListener;

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mPendingPrepareEnd:Z

    goto :goto_0
.end method

.method private resolveError(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 347
    invoke-virtual {p0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->dismissAllowingStateLoss()V

    .line 348
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mErrorListener:Lcom/miui/gallery/ui/ShareFilePrepareFragment$OnErrorListener;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mErrorListener:Lcom/miui/gallery/ui/ShareFilePrepareFragment$OnErrorListener;

    invoke-interface {v0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment$OnErrorListener;->onError()V

    .line 351
    :cond_0
    return-void
.end method

.method private scheduleClean()V
    .locals 4

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 486
    :goto_0
    return-void

    .line 485
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "render_tmp_files"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/sdk/CleanService;->schedule(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private scheduleCleanSecret()V
    .locals 2

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 494
    :goto_0
    return-void

    .line 493
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->getSecretFolder()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/sdk/CleanService;->schedule(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 370
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0, p1}, Lmiui/app/ProgressDialog;->setProgress(I)V

    .line 371
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 136
    invoke-direct {p0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->handleFiles()V

    .line 137
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 158
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 161
    :cond_0
    return-void
.end method

.method public onCompressComplete(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 444
    .local p1, "success":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "fails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mSuccessPaths:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 447
    :cond_0
    if-eqz p2, :cond_1

    .line 449
    iget-object v1, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mSuccessPaths:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 451
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key_download_items"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 452
    .local v0, "downloadItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;>;"
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 453
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->doDownload(Ljava/util/ArrayList;)V

    .line 457
    :goto_0
    return-void

    .line 455
    :cond_2
    invoke-direct {p0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->onPrepareEnd()V

    goto :goto_0
.end method

.method public onCompressProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    .line 438
    iget v1, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mMaxCompressProgress:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v0, v1

    .line 439
    .local v0, "uiProgress":I
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->updateProgress(I)V

    .line 440
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 104
    new-instance v0, Lmiui/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    .line 105
    invoke-virtual {p0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0170

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mTitle:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    iget-object v1, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setProgressStyle(I)V

    .line 108
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0, v4}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 109
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setMax(I)V

    .line 110
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0, v4}, Lmiui/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 111
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    const/4 v1, -0x2

    invoke-virtual {p0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/gallery/ui/ShareFilePrepareFragment$1;

    invoke-direct {v3, p0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment$1;-><init>(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lmiui/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 117
    invoke-virtual {p0, v4}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->setCancelable(Z)V

    .line 118
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v2, 0x0

    .line 355
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 356
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mHelper:Lcom/miui/gallery/util/BulkDownloadHelper;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mHelper:Lcom/miui/gallery/util/BulkDownloadHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/util/BulkDownloadHelper;->cancel()V

    .line 358
    iput-object v2, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mHelper:Lcom/miui/gallery/util/BulkDownloadHelper;

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mRenderTask:Lcom/miui/gallery/editor/photo/sdk/RenderTask;

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mRenderTask:Lcom/miui/gallery/editor/photo/sdk/RenderTask;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->cancel()V

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mDecodeSecretTask:Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask;

    if-eqz v0, :cond_2

    .line 364
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mDecodeSecretTask:Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask;->cancel(Z)Z

    .line 366
    :cond_2
    iput-object v2, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mDownloadListener:Lcom/miui/gallery/ui/ShareFilePrepareFragment$OnPrepareListener;

    .line 367
    return-void
.end method

.method public onDownloadEnd(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 395
    .local p1, "successes":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;>;"
    .local p2, "fails":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;>;"
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 396
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;

    .line 397
    .local v0, "item":Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;
    iget-object v4, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mRenderItems:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->getDownloadUri()Landroid/net/Uri;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 398
    const-string v4, "ShareFilePrepareFragment"

    const-string v5, "download success, need render: %s"

    invoke-virtual {v0}, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->getDownloadUri()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 399
    iget-object v4, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mRenderItems:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->getDownloadUri()Landroid/net/Uri;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 400
    iget-object v4, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mRenderItems:Ljava/util/Set;

    new-instance v5, Ljava/io/File;

    invoke-virtual {v0}, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->getDownloadPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 402
    :cond_0
    iget-object v4, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mSecretList:Ljava/util/List;

    invoke-virtual {v0}, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->getDownloadUri()Landroid/net/Uri;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 403
    .local v1, "secretIndex":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 404
    const-string v4, "ShareFilePrepareFragment"

    const-string v5, "download success, need secret: %s"

    invoke-virtual {v0}, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->getDownloadUri()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 405
    iget-object v4, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mSecretList:Ljava/util/List;

    new-instance v5, Ljava/io/File;

    invoke-virtual {v0}, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->getDownloadPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 407
    :cond_1
    const-string v4, "ShareFilePrepareFragment"

    const-string v5, "download success, continue"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v4, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mSuccessPaths:Ljava/util/List;

    invoke-virtual {v0}, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->getDownloadPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 412
    .end local v0    # "item":Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;
    .end local v1    # "secretIndex":I
    :cond_2
    invoke-static {p2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 413
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;

    .line 414
    .restart local v0    # "item":Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;
    invoke-virtual {v0}, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->getDownloadUri()Landroid/net/Uri;

    move-result-object v2

    .line 415
    .local v2, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mRenderItems:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 416
    const-string v4, "ShareFilePrepareFragment"

    const-string v5, "download failed, skip render: %s"

    invoke-virtual {v0}, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->getDownloadUri()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 417
    iget-object v4, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mRenderFails:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    iget-object v4, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mRenderItems:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 423
    .end local v0    # "item":Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_4
    iget-object v3, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mDownloadFails:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 425
    iget-object v3, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mSecretList:Ljava/util/List;

    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 426
    const-string v3, "ShareFilePrepareFragment"

    const-string v4, "download finish, need secret %d items"

    iget-object v5, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mSecretList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 427
    invoke-direct {p0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->doSecret()V

    .line 434
    :goto_2
    return-void

    .line 428
    :cond_5
    iget-object v3, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mRenderItems:Ljava/util/Set;

    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 429
    const-string v3, "ShareFilePrepareFragment"

    const-string v4, "download finish, need render %d items"

    iget-object v5, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mRenderItems:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 430
    invoke-direct {p0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->doRender()V

    goto :goto_2

    .line 432
    :cond_6
    invoke-direct {p0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->onPrepareEnd()V

    goto :goto_2
.end method

.method public onDownloadProgress(F)V
    .locals 3
    .param p1, "progress"    # F

    .prologue
    .line 375
    iget v1, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mMaxDownloadProgress:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iget v2, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mMaxCompressProgress:I

    add-int v0, v1, v2

    .line 376
    .local v0, "uiProgress":I
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->updateProgress(I)V

    .line 377
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 141
    iput-boolean v1, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mStopped:Z

    .line 142
    invoke-super {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onStart()V

    .line 143
    iget-boolean v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mPendingPrepareEnd:Z

    if-eqz v0, :cond_0

    .line 144
    iput-boolean v1, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mPendingPrepareEnd:Z

    .line 145
    invoke-direct {p0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->onPrepareEnd()V

    .line 147
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mStopped:Z

    .line 152
    invoke-super {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onStop()V

    .line 153
    return-void
.end method

.method public setErrorListener(Lcom/miui/gallery/ui/ShareFilePrepareFragment$OnErrorListener;)V
    .locals 0
    .param p1, "errorListener"    # Lcom/miui/gallery/ui/ShareFilePrepareFragment$OnErrorListener;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mErrorListener:Lcom/miui/gallery/ui/ShareFilePrepareFragment$OnErrorListener;

    .line 131
    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 127
    return-void
.end method

.method public setOnDownloadListener(Lcom/miui/gallery/ui/ShareFilePrepareFragment$OnPrepareListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/ui/ShareFilePrepareFragment$OnPrepareListener;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->mDownloadListener:Lcom/miui/gallery/ui/ShareFilePrepareFragment$OnPrepareListener;

    .line 123
    return-void
.end method
