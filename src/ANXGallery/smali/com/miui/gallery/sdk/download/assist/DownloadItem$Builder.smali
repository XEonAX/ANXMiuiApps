.class public Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;
.super Ljava/lang/Object;
.source "DownloadItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/sdk/download/assist/DownloadItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDownloadListener:Lcom/miui/gallery/sdk/download/listener/DownloadListener;

.field private mDownloader:Lcom/miui/gallery/sdk/download/downloader/IDownloader;

.field private mManual:Z

.field private mProgressListener:Lcom/miui/gallery/sdk/download/listener/DownloadProgressListener;

.field private mRequireCharging:Z

.field private mRequireDeviceStorage:Z

.field private mRequirePower:Z

.field private mRequireWLAN:Z

.field private mType:Lcom/miui/gallery/sdk/download/DownloadType;

.field private mUri:Landroid/net/Uri;

.field private mUriAdapter:Lcom/miui/gallery/sdk/download/adapter/IUriAdapter;

.field private mUriLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;)Lcom/miui/gallery/sdk/download/adapter/IUriAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->mUriAdapter:Lcom/miui/gallery/sdk/download/adapter/IUriAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->mRequireDeviceStorage:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->mManual:Z

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->mUriLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;)Lcom/miui/gallery/sdk/download/DownloadType;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->mType:Lcom/miui/gallery/sdk/download/DownloadType;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;)Lcom/miui/gallery/sdk/download/listener/DownloadListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->mDownloadListener:Lcom/miui/gallery/sdk/download/listener/DownloadListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;)Lcom/miui/gallery/sdk/download/listener/DownloadProgressListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->mProgressListener:Lcom/miui/gallery/sdk/download/listener/DownloadProgressListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;)Lcom/miui/gallery/sdk/download/downloader/IDownloader;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->mDownloader:Lcom/miui/gallery/sdk/download/downloader/IDownloader;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->mRequirePower:Z

    return v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->mRequireCharging:Z

    return v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->mRequireWLAN:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/miui/gallery/sdk/download/assist/DownloadItem;
    .locals 2

    .prologue
    .line 242
    new-instance v0, Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;-><init>(Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;Lcom/miui/gallery/sdk/download/assist/DownloadItem$1;)V

    return-object v0
.end method

.method public cloneFrom(Lcom/miui/gallery/sdk/download/assist/DownloadItem;)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;
    .locals 1
    .param p1, "item"    # Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    .prologue
    .line 225
    invoke-virtual {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->mUri:Landroid/net/Uri;

    .line 226
    invoke-virtual {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->mType:Lcom/miui/gallery/sdk/download/DownloadType;

    .line 227
    invoke-virtual {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getUriAdapter()Lcom/miui/gallery/sdk/download/adapter/IUriAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->mUriAdapter:Lcom/miui/gallery/sdk/download/adapter/IUriAdapter;

    .line 228
    invoke-virtual {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getUriLock()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->mUriLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 229
    invoke-virtual {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getDownloadListener()Lcom/miui/gallery/sdk/download/listener/DownloadListener;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->mDownloadListener:Lcom/miui/gallery/sdk/download/listener/DownloadListener;

    .line 230
    invoke-virtual {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getProgressListener()Lcom/miui/gallery/sdk/download/listener/DownloadProgressListener;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->mProgressListener:Lcom/miui/gallery/sdk/download/listener/DownloadProgressListener;

    .line 231
    invoke-virtual {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getDownloader()Lcom/miui/gallery/sdk/download/downloader/IDownloader;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->mDownloader:Lcom/miui/gallery/sdk/download/downloader/IDownloader;

    .line 233
    invoke-virtual {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->isRequirePower()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->mRequirePower:Z

    .line 234
    invoke-virtual {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->isRequireCharging()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->mRequireCharging:Z

    .line 235
    invoke-virtual {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->isRequireWLAN()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->mRequireWLAN:Z

    .line 236
    invoke-virtual {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->isRequireDeviceStorage()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->mRequireDeviceStorage:Z

    .line 237
    invoke-virtual {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->isManual()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->mManual:Z

    .line 238
    return-object p0
.end method

.method public setDownloadListener(Lcom/miui/gallery/sdk/download/listener/DownloadListener;)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;
    .locals 0
    .param p1, "downloadListener"    # Lcom/miui/gallery/sdk/download/listener/DownloadListener;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->mDownloadListener:Lcom/miui/gallery/sdk/download/listener/DownloadListener;

    .line 186
    return-object p0
.end method

.method public setDownloader(Lcom/miui/gallery/sdk/download/downloader/IDownloader;)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;
    .locals 0
    .param p1, "downloader"    # Lcom/miui/gallery/sdk/download/downloader/IDownloader;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->mDownloader:Lcom/miui/gallery/sdk/download/downloader/IDownloader;

    .line 196
    return-object p0
.end method

.method public setManual(Z)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;
    .locals 0
    .param p1, "manual"    # Z

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->mManual:Z

    .line 221
    return-object p0
.end method

.method public setProgressListener(Lcom/miui/gallery/sdk/download/listener/DownloadProgressListener;)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;
    .locals 0
    .param p1, "progressListener"    # Lcom/miui/gallery/sdk/download/listener/DownloadProgressListener;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->mProgressListener:Lcom/miui/gallery/sdk/download/listener/DownloadProgressListener;

    .line 191
    return-object p0
.end method

.method public setRequireCharging(Z)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;
    .locals 0
    .param p1, "requireCharging"    # Z

    .prologue
    .line 205
    iput-boolean p1, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->mRequireCharging:Z

    .line 206
    return-object p0
.end method

.method public setRequireDeviceStorage(Z)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;
    .locals 0
    .param p1, "requireDeviceStorage"    # Z

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->mRequireDeviceStorage:Z

    .line 216
    return-object p0
.end method

.method public setRequirePower(Z)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;
    .locals 0
    .param p1, "requirePower"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->mRequirePower:Z

    .line 201
    return-object p0
.end method

.method public setRequireWLAN(Z)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;
    .locals 0
    .param p1, "requireWLAN"    # Z

    .prologue
    .line 210
    iput-boolean p1, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->mRequireWLAN:Z

    .line 211
    return-object p0
.end method

.method public setType(Lcom/miui/gallery/sdk/download/DownloadType;)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;
    .locals 0
    .param p1, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->mType:Lcom/miui/gallery/sdk/download/DownloadType;

    .line 181
    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->mUri:Landroid/net/Uri;

    .line 166
    return-object p0
.end method

.method public setUriAdapter(Lcom/miui/gallery/sdk/download/adapter/IUriAdapter;)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;
    .locals 0
    .param p1, "uriAdapter"    # Lcom/miui/gallery/sdk/download/adapter/IUriAdapter;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->mUriAdapter:Lcom/miui/gallery/sdk/download/adapter/IUriAdapter;

    .line 171
    return-object p0
.end method

.method public setUriLock(Ljava/util/concurrent/locks/ReentrantLock;)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;
    .locals 0
    .param p1, "uriLock"    # Ljava/util/concurrent/locks/ReentrantLock;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->mUriLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 176
    return-object p0
.end method
