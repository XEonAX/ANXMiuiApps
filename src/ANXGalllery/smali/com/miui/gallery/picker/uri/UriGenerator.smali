.class public Lcom/miui/gallery/picker/uri/UriGenerator;
.super Ljava/lang/Object;
.source "UriGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/picker/uri/UriGenerator$UriGenerateListener;,
        Lcom/miui/gallery/picker/uri/UriGenerator$OriginUrlRequestProgressListener;
    }
.end annotation


# static fields
.field private static final CHECKED_ITEM_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mActivityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelConfirmListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mCancelDownloadListener:Landroid/content/DialogInterface$OnClickListener;

.field private mCancelOriginInfoListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mCheckedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContinueDownloadListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDataBaseQueryTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDownloadPendings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadProgressDialog:Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

.field private mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

.field private mImageType:Lcom/miui/gallery/picker/helper/Picker$ImageType;

.field private mOriginRequestPendings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginUrlRequestTask;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginRequestProgressDialog:Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

.field private mOriginUrlRequestor:Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

.field private mResults:[Landroid/net/Uri;

.field private mSha1s:[Ljava/lang/String;

.field private mUriGenerateListener:Lcom/miui/gallery/picker/uri/UriGenerator$UriGenerateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "sha1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "serverType"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "size"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "exifImageLength"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "exifImageWidth"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/picker/uri/UriGenerator;->CHECKED_ITEM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/miui/gallery/picker/helper/Picker$ImageType;Lcom/miui/gallery/picker/uri/UriGenerator$UriGenerateListener;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "imageType"    # Lcom/miui/gallery/picker/helper/Picker$ImageType;
    .param p4, "uriGenerateListener"    # Lcom/miui/gallery/picker/uri/UriGenerator$UriGenerateListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;",
            ">;",
            "Lcom/miui/gallery/picker/helper/Picker$ImageType;",
            "Lcom/miui/gallery/picker/uri/UriGenerator$UriGenerateListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 129
    .local p2, "checkedItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/miui/gallery/picker/uri/UriGenerator$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/picker/uri/UriGenerator$1;-><init>(Lcom/miui/gallery/picker/uri/UriGenerator;)V

    iput-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mDataBaseQueryTask:Landroid/os/AsyncTask;

    .line 254
    new-instance v0, Lcom/miui/gallery/picker/uri/UriGenerator$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/picker/uri/UriGenerator$3;-><init>(Lcom/miui/gallery/picker/uri/UriGenerator;)V

    iput-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mDownloadListener:Landroid/content/DialogInterface$OnClickListener;

    .line 267
    new-instance v0, Lcom/miui/gallery/picker/uri/UriGenerator$4;

    invoke-direct {v0, p0}, Lcom/miui/gallery/picker/uri/UriGenerator$4;-><init>(Lcom/miui/gallery/picker/uri/UriGenerator;)V

    iput-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mCancelDownloadListener:Landroid/content/DialogInterface$OnClickListener;

    .line 276
    new-instance v0, Lcom/miui/gallery/picker/uri/UriGenerator$5;

    invoke-direct {v0, p0}, Lcom/miui/gallery/picker/uri/UriGenerator$5;-><init>(Lcom/miui/gallery/picker/uri/UriGenerator;)V

    iput-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mContinueDownloadListener:Landroid/content/DialogInterface$OnClickListener;

    .line 286
    new-instance v0, Lcom/miui/gallery/picker/uri/UriGenerator$6;

    invoke-direct {v0, p0}, Lcom/miui/gallery/picker/uri/UriGenerator$6;-><init>(Lcom/miui/gallery/picker/uri/UriGenerator;)V

    iput-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mCancelOriginInfoListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 295
    new-instance v0, Lcom/miui/gallery/picker/uri/UriGenerator$7;

    invoke-direct {v0, p0}, Lcom/miui/gallery/picker/uri/UriGenerator$7;-><init>(Lcom/miui/gallery/picker/uri/UriGenerator;)V

    iput-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mCancelConfirmListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 130
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    .line 131
    iput-object p2, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mCheckedItems:Ljava/util/List;

    .line 132
    iput-object p3, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mImageType:Lcom/miui/gallery/picker/helper/Picker$ImageType;

    .line 133
    iput-object p4, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mUriGenerateListener:Lcom/miui/gallery/picker/uri/UriGenerator$UriGenerateListener;

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/picker/uri/UriGenerator;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/picker/uri/UriGenerator;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/miui/gallery/picker/uri/UriGenerator;->queryCheckedItems()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/picker/uri/UriGenerator;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/picker/uri/UriGenerator;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/miui/gallery/picker/uri/UriGenerator;->getUrisFromCheckedItems()V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/picker/uri/UriGenerator;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/uri/UriGenerator;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mContinueDownloadListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/gallery/picker/uri/UriGenerator;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/uri/UriGenerator;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mCancelConfirmListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/gallery/picker/uri/UriGenerator;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/picker/uri/UriGenerator;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/miui/gallery/picker/uri/UriGenerator;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/gallery/picker/uri/UriGenerator;)[Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/uri/UriGenerator;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mResults:[Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/gallery/picker/uri/UriGenerator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/uri/UriGenerator;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mDownloadPendings:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/miui/gallery/picker/uri/UriGenerator;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/uri/UriGenerator;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mOriginRequestProgressDialog:Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/miui/gallery/picker/uri/UriGenerator;Lcom/miui/gallery/picker/uri/PrepareProgressDialog;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/picker/uri/UriGenerator;
    .param p1, "x1"    # Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mOriginRequestProgressDialog:Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/miui/gallery/picker/uri/UriGenerator;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/uri/UriGenerator;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mCancelOriginInfoListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/miui/gallery/picker/uri/UriGenerator;)Lcom/miui/gallery/picker/uri/UriGenerator$UriGenerateListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/uri/UriGenerator;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mUriGenerateListener:Lcom/miui/gallery/picker/uri/UriGenerator$UriGenerateListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/miui/gallery/picker/uri/UriGenerator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/uri/UriGenerator;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mOriginRequestPendings:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/picker/uri/UriGenerator;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/picker/uri/UriGenerator;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/miui/gallery/picker/uri/UriGenerator;->showDownloadConfirmDialog(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/picker/uri/UriGenerator;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/picker/uri/UriGenerator;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/miui/gallery/picker/uri/UriGenerator;->startDownload()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/gallery/picker/uri/UriGenerator;)Lcom/miui/gallery/picker/uri/Downloader;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/uri/UriGenerator;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    return-object v0
.end method

.method static synthetic access$502(Lcom/miui/gallery/picker/uri/UriGenerator;Lcom/miui/gallery/picker/uri/Downloader;)Lcom/miui/gallery/picker/uri/Downloader;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/picker/uri/UriGenerator;
    .param p1, "x1"    # Lcom/miui/gallery/picker/uri/Downloader;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    return-object p1
.end method

.method static synthetic access$600(Lcom/miui/gallery/picker/uri/UriGenerator;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/uri/UriGenerator;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/picker/uri/UriGenerator;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/uri/UriGenerator;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mDownloadProgressDialog:Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/miui/gallery/picker/uri/UriGenerator;Lcom/miui/gallery/picker/uri/PrepareProgressDialog;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/picker/uri/UriGenerator;
    .param p1, "x1"    # Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mDownloadProgressDialog:Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/miui/gallery/picker/uri/UriGenerator;)Lcom/miui/gallery/picker/uri/OriginUrlRequestor;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/uri/UriGenerator;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mOriginUrlRequestor:Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    return-object v0
.end method

.method static synthetic access$802(Lcom/miui/gallery/picker/uri/UriGenerator;Lcom/miui/gallery/picker/uri/OriginUrlRequestor;)Lcom/miui/gallery/picker/uri/OriginUrlRequestor;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/picker/uri/UriGenerator;
    .param p1, "x1"    # Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mOriginUrlRequestor:Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    return-object p1
.end method

.method static synthetic access$900(Lcom/miui/gallery/picker/uri/UriGenerator;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/uri/UriGenerator;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mCancelDownloadListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method private deliverResult(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;>;"
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mResults:[Landroid/net/Uri;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mUriGenerateListener:Lcom/miui/gallery/picker/uri/UriGenerator$UriGenerateListener;

    invoke-interface {v0}, Lcom/miui/gallery/picker/uri/UriGenerator$UriGenerateListener;->onFail()V

    .line 252
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mImageType:Lcom/miui/gallery/picker/helper/Picker$ImageType;

    sget-object v1, Lcom/miui/gallery/picker/helper/Picker$ImageType;->ORIGIN_OR_DOWNLOAD_INFO:Lcom/miui/gallery/picker/helper/Picker$ImageType;

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    new-instance v0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mOriginRequestPendings:Ljava/util/ArrayList;

    new-instance v2, Lcom/miui/gallery/picker/uri/UriGenerator$OriginUrlRequestProgressListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/gallery/picker/uri/UriGenerator$OriginUrlRequestProgressListener;-><init>(Lcom/miui/gallery/picker/uri/UriGenerator;Lcom/miui/gallery/picker/uri/UriGenerator$1;)V

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/picker/uri/OriginUrlRequestor;-><init>(Ljava/util/ArrayList;Lcom/miui/gallery/picker/uri/OriginUrlRequestor$ProgressListener;)V

    iput-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mOriginUrlRequestor:Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    .line 248
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mOriginUrlRequestor:Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mResults:[Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mSha1s:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/picker/uri/OriginUrlRequestor;->start([Landroid/net/Uri;[Ljava/lang/String;)V

    goto :goto_0

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mUriGenerateListener:Lcom/miui/gallery/picker/uri/UriGenerator$UriGenerateListener;

    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mResults:[Landroid/net/Uri;

    invoke-interface {v0, v1, p1}, Lcom/miui/gallery/picker/uri/UriGenerator$UriGenerateListener;->onSuccess([Landroid/net/Uri;Ljava/util/List;)V

    goto :goto_0
.end method

.method private getUrisFromCheckedItems()V
    .locals 14

    .prologue
    .line 159
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mCheckedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/Uri;

    iput-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mResults:[Landroid/net/Uri;

    .line 160
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mCheckedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mSha1s:[Ljava/lang/String;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mDownloadPendings:Ljava/util/ArrayList;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mOriginRequestPendings:Ljava/util/ArrayList;

    .line 163
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mCheckedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 164
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mCheckedItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;

    .line 165
    .local v7, "checkedItem":Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mSha1s:[Ljava/lang/String;

    invoke-virtual {v7}, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;->getSha1()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 166
    invoke-virtual {v7}, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;->getOriginFile()Ljava/lang/String;

    move-result-object v10

    .line 168
    .local v10, "path":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mResults:[Landroid/net/Uri;

    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    .line 163
    .end local v9    # "file":Ljava/io/File;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mImageType:Lcom/miui/gallery/picker/helper/Picker$ImageType;

    sget-object v2, Lcom/miui/gallery/picker/helper/Picker$ImageType;->ORIGIN:Lcom/miui/gallery/picker/helper/Picker$ImageType;

    if-ne v0, v2, :cond_2

    .line 178
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isActiveNetworkMetered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    sget-object v8, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN_FORCE:Lcom/miui/gallery/sdk/download/DownloadType;

    .line 184
    .local v8, "downloadType":Lcom/miui/gallery/sdk/download/DownloadType;
    :goto_2
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mDownloadPendings:Ljava/util/ArrayList;

    new-instance v2, Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;

    .line 185
    invoke-virtual {v7}, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/miui/gallery/util/uil/CloudUriAdapter;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v3

    .line 186
    invoke-virtual {v7}, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;->getSize()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-direct {v2, v3, v8, v4, v1}, Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;-><init>(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;II)V

    .line 184
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 181
    .end local v8    # "downloadType":Lcom/miui/gallery/sdk/download/DownloadType;
    :cond_1
    sget-object v8, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN:Lcom/miui/gallery/sdk/download/DownloadType;

    .restart local v8    # "downloadType":Lcom/miui/gallery/sdk/download/DownloadType;
    goto :goto_2

    .line 190
    .end local v8    # "downloadType":Lcom/miui/gallery/sdk/download/DownloadType;
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mImageType:Lcom/miui/gallery/picker/helper/Picker$ImageType;

    sget-object v2, Lcom/miui/gallery/picker/helper/Picker$ImageType;->ORIGIN_OR_DOWNLOAD_INFO:Lcom/miui/gallery/picker/helper/Picker$ImageType;

    if-ne v0, v2, :cond_3

    .line 192
    iget-object v13, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mOriginRequestPendings:Ljava/util/ArrayList;

    new-instance v0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginUrlRequestTask;

    .line 193
    invoke-virtual {v7}, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/miui/gallery/util/uil/CloudUriAdapter;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v2

    .line 194
    invoke-virtual {v7}, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;->getHeight()I

    move-result v3

    invoke-virtual {v7}, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;->getWidth()I

    move-result v4

    invoke-virtual {v7}, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;->getServerType()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginUrlRequestTask;-><init>(ILandroid/net/Uri;III)V

    .line 192
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_3
    invoke-virtual {v7}, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;->getThumbnailFile()Ljava/lang/String;

    move-result-object v12

    .line 197
    .local v12, "thumbPath":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 198
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    .restart local v9    # "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 200
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mResults:[Landroid/net/Uri;

    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    .line 204
    .end local v9    # "file":Ljava/io/File;
    :cond_4
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mDownloadPendings:Ljava/util/ArrayList;

    new-instance v2, Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;

    .line 205
    invoke-virtual {v7}, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/miui/gallery/util/uil/CloudUriAdapter;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;-><init>(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;II)V

    .line 204
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 209
    .end local v7    # "checkedItem":Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;
    .end local v10    # "path":Ljava/lang/String;
    .end local v12    # "thumbPath":Ljava/lang/String;
    :cond_5
    const-string v0, "UriGenerator"

    const-string v2, "picked file: %d, pending: %d"

    iget-object v3, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mResults:[Landroid/net/Uri;

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mDownloadPendings:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 210
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    .line 211
    .local v6, "activity":Landroid/app/Activity;
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mDownloadPendings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 212
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/picker/uri/UriGenerator;->deliverResult(Ljava/util/List;)V

    .line 237
    :goto_3
    return-void

    .line 213
    :cond_6
    invoke-static {v6}, Lcom/miui/gallery/util/SyncUtil;->existXiaomiAccount(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 214
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e0035

    iget-object v3, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mDownloadPendings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v13, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mDownloadPendings:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 215
    .local v11, "text":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mResults:[Landroid/net/Uri;

    array-length v0, v0

    if-nez v0, :cond_7

    .line 217
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mUriGenerateListener:Lcom/miui/gallery/picker/uri/UriGenerator$UriGenerateListener;

    invoke-interface {v0}, Lcom/miui/gallery/picker/uri/UriGenerator$UriGenerateListener;->onFail()V

    goto :goto_3

    .line 219
    :cond_7
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/picker/uri/UriGenerator;->deliverResult(Ljava/util/List;)V

    goto :goto_3

    .line 221
    .end local v11    # "text":Ljava/lang/String;
    :cond_8
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isActiveNetworkMetered()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 222
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/picker/uri/UriGenerator;->showDownloadConfirmDialog(Z)V

    goto :goto_3

    .line 225
    :cond_9
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 226
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mResults:[Landroid/net/Uri;

    array-length v0, v0

    if-nez v0, :cond_a

    .line 227
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e002e

    iget-object v3, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mDownloadPendings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v11

    .line 231
    .restart local v11    # "text":Ljava/lang/String;
    :goto_4
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 232
    invoke-direct {p0}, Lcom/miui/gallery/picker/uri/UriGenerator;->startDownload()V

    goto :goto_3

    .line 229
    .end local v11    # "text":Ljava/lang/String;
    :cond_a
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c03c5

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mDownloadPendings:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "text":Ljava/lang/String;
    goto :goto_4

    .line 234
    .end local v11    # "text":Ljava/lang/String;
    :cond_b
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/picker/uri/UriGenerator;->showDownloadConfirmDialog(Z)V

    goto/16 :goto_3
.end method

.method private queryCheckedItems()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 90
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mCheckedItems:Ljava/util/List;

    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    new-instance v8, Landroid/util/LongSparseArray;

    invoke-direct {v8}, Landroid/util/LongSparseArray;-><init>()V

    .line 92
    .local v8, "checkedItemMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v10, "pickResults":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mCheckedItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mCheckedItems:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;

    .line 95
    .local v7, "checkedItem":Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;
    invoke-virtual {v7}, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;->getId()J

    move-result-wide v2

    invoke-virtual {v8, v2, v3, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 96
    if-eqz v9, :cond_0

    .line 97
    const-string v1, ","

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_0
    invoke-virtual {v7}, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;->getId()J

    move-result-wide v2

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 93
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 101
    .end local v7    # "checkedItem":Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 102
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 103
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_PICKER:Landroid/net/Uri;

    const-string/jumbo v2, "sha1"

    invoke-static {v1, v2, v4}, Lcom/miui/gallery/util/UriUtil;->appendGroupBy(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/picker/uri/UriGenerator;->CHECKED_ITEM_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id IN (%s) AND (localGroupId!=-1000) AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\'))"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 104
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/miui/gallery/picker/uri/UriGenerator$2;

    invoke-direct {v6, p0, v8}, Lcom/miui/gallery/picker/uri/UriGenerator$2;-><init>(Lcom/miui/gallery/picker/uri/UriGenerator;Landroid/util/LongSparseArray;)V

    move-object v5, v4

    .line 103
    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    .line 126
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v8    # "checkedItemMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;>;"
    .end local v9    # "i":I
    .end local v10    # "pickResults":Ljava/lang/StringBuilder;
    :cond_2
    return-void
.end method

.method private showDownloadConfirmDialog(Z)V
    .locals 7
    .param p1, "retry"    # Z

    .prologue
    .line 314
    iget-object v5, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 315
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 316
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 317
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v5, "download_file_count"

    iget-object v6, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mDownloadPendings:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 318
    const-string v5, "local_file_count"

    iget-object v6, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mResults:[Landroid/net/Uri;

    array-length v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 319
    const/4 v3, 0x0

    .line 320
    .local v3, "size":I
    iget-object v5, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mDownloadPendings:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;

    .line 321
    .local v4, "task":Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;
    iget v6, v4, Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;->mSize:I

    add-int/2addr v3, v6

    .line 322
    goto :goto_0

    .line 323
    .end local v4    # "task":Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;
    :cond_0
    const-string v5, "download_file_size"

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 324
    const-string v5, "retry_mode"

    invoke-virtual {v1, v5, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 326
    new-instance v2, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;

    invoke-direct {v2}, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;-><init>()V

    .line 327
    .local v2, "dialog":Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;
    iget-object v5, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mDownloadListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v5}, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;->setPositiveListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 328
    iget-object v5, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mCancelDownloadListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v5}, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;->setNegativeListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 330
    invoke-virtual {v2, v1}, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;->setArguments(Landroid/os/Bundle;)V

    .line 331
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "confirm_dialog"

    invoke-virtual {v2, v5, v6}, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 333
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "dialog":Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;
    .end local v3    # "size":I
    :cond_1
    return-void
.end method

.method private startDownload()V
    .locals 3

    .prologue
    .line 336
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    invoke-virtual {v0}, Lcom/miui/gallery/picker/uri/Downloader;->cancel()V

    .line 338
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    invoke-virtual {v0}, Lcom/miui/gallery/picker/uri/Downloader;->destroy()V

    .line 341
    :cond_0
    new-instance v0, Lcom/miui/gallery/picker/uri/Downloader;

    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mDownloadPendings:Ljava/util/ArrayList;

    new-instance v2, Lcom/miui/gallery/picker/uri/UriGenerator$8;

    invoke-direct {v2, p0}, Lcom/miui/gallery/picker/uri/UriGenerator$8;-><init>(Lcom/miui/gallery/picker/uri/UriGenerator;)V

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/picker/uri/Downloader;-><init>(Ljava/util/ArrayList;Lcom/miui/gallery/picker/uri/Downloader$DownloadListener;)V

    iput-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    .line 423
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    invoke-virtual {v0}, Lcom/miui/gallery/picker/uri/Downloader;->start()V

    .line 424
    return-void
.end method


# virtual methods
.method public generate()V
    .locals 3

    .prologue
    .line 140
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 141
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mCheckedItems:Ljava/util/List;

    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mImageType:Lcom/miui/gallery/picker/helper/Picker$ImageType;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mUriGenerateListener:Lcom/miui/gallery/picker/uri/UriGenerator$UriGenerateListener;

    if-nez v1, :cond_2

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mUriGenerateListener:Lcom/miui/gallery/picker/uri/UriGenerator$UriGenerateListener;

    if-eqz v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mUriGenerateListener:Lcom/miui/gallery/picker/uri/UriGenerator$UriGenerateListener;

    invoke-interface {v1}, Lcom/miui/gallery/picker/uri/UriGenerator$UriGenerateListener;->onFail()V

    .line 155
    :cond_1
    :goto_0
    return-void

    .line 149
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mImageType:Lcom/miui/gallery/picker/helper/Picker$ImageType;

    sget-object v2, Lcom/miui/gallery/picker/helper/Picker$ImageType;->ORIGIN:Lcom/miui/gallery/picker/helper/Picker$ImageType;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mImageType:Lcom/miui/gallery/picker/helper/Picker$ImageType;

    sget-object v2, Lcom/miui/gallery/picker/helper/Picker$ImageType;->ORIGIN_OR_DOWNLOAD_INFO:Lcom/miui/gallery/picker/helper/Picker$ImageType;

    if-ne v1, v2, :cond_4

    .line 151
    :cond_3
    iget-object v1, p0, Lcom/miui/gallery/picker/uri/UriGenerator;->mDataBaseQueryTask:Landroid/os/AsyncTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 153
    :cond_4
    invoke-direct {p0}, Lcom/miui/gallery/picker/uri/UriGenerator;->getUrisFromCheckedItems()V

    goto :goto_0
.end method
