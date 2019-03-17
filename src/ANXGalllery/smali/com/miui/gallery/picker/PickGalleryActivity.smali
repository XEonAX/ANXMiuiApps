.class public Lcom/miui/gallery/picker/PickGalleryActivity;
.super Lcom/miui/gallery/picker/PickerActivity;
.source "PickGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/picker/PickGalleryActivity$MediaScanJob;,
        Lcom/miui/gallery/picker/PickGalleryActivity$DownloadProgressListener;,
        Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;,
        Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;
    }
.end annotation


# instance fields
.field private mCancelConfirmListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mCancelDownloadListener:Landroid/content/DialogInterface$OnClickListener;

.field private mCloseType:I

.field private mContinueDownloadListener:Landroid/content/DialogInterface$OnClickListener;

.field private mCurrentPagePosition:I

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

.field private mParseTask:Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;

.field private mPickIntent:Landroid/content/Intent;

.field private mResults:[Landroid/net/Uri;

.field private mSha1s:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickerActivity;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mCurrentPagePosition:I

    .line 648
    new-instance v0, Lcom/miui/gallery/picker/PickGalleryActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/picker/PickGalleryActivity$2;-><init>(Lcom/miui/gallery/picker/PickGalleryActivity;)V

    iput-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloadListener:Landroid/content/DialogInterface$OnClickListener;

    .line 660
    new-instance v0, Lcom/miui/gallery/picker/PickGalleryActivity$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/picker/PickGalleryActivity$3;-><init>(Lcom/miui/gallery/picker/PickGalleryActivity;)V

    iput-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mCancelDownloadListener:Landroid/content/DialogInterface$OnClickListener;

    .line 673
    new-instance v0, Lcom/miui/gallery/picker/PickGalleryActivity$4;

    invoke-direct {v0, p0}, Lcom/miui/gallery/picker/PickGalleryActivity$4;-><init>(Lcom/miui/gallery/picker/PickGalleryActivity;)V

    iput-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mContinueDownloadListener:Landroid/content/DialogInterface$OnClickListener;

    .line 682
    new-instance v0, Lcom/miui/gallery/picker/PickGalleryActivity$5;

    invoke-direct {v0, p0}, Lcom/miui/gallery/picker/PickGalleryActivity$5;-><init>(Lcom/miui/gallery/picker/PickGalleryActivity;)V

    iput-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mCancelConfirmListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 792
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/picker/PickGalleryActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;

    .prologue
    .line 65
    iget v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mCurrentPagePosition:I

    return v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/picker/PickGalleryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->parseResult()V

    return-void
.end method

.method static synthetic access$102(Lcom/miui/gallery/picker/PickGalleryActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mCurrentPagePosition:I

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/gallery/picker/PickGalleryActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/miui/gallery/picker/PickGalleryActivity;->showConfirmDialog(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/gallery/picker/PickGalleryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->startDownload()V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/gallery/picker/PickGalleryActivity;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mOriginRequestProgressDialog:Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/miui/gallery/picker/PickGalleryActivity;Lcom/miui/gallery/picker/uri/PrepareProgressDialog;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;
    .param p1, "x1"    # Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mOriginRequestProgressDialog:Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/miui/gallery/picker/PickGalleryActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/miui/gallery/picker/PickGalleryActivity;->parseOriginUrlResult(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/miui/gallery/picker/PickGalleryActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mOriginRequestPendings:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/miui/gallery/picker/PickGalleryActivity;)Lcom/miui/gallery/picker/uri/OriginUrlRequestor;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mOriginUrlRequestor:Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/miui/gallery/picker/PickGalleryActivity;Lcom/miui/gallery/picker/uri/OriginUrlRequestor;)Lcom/miui/gallery/picker/uri/OriginUrlRequestor;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;
    .param p1, "x1"    # Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mOriginUrlRequestor:Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/miui/gallery/picker/PickGalleryActivity;)Lcom/miui/gallery/picker/uri/Downloader;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/miui/gallery/picker/PickGalleryActivity;Lcom/miui/gallery/picker/uri/Downloader;)Lcom/miui/gallery/picker/uri/Downloader;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;
    .param p1, "x1"    # Lcom/miui/gallery/picker/uri/Downloader;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/gallery/picker/PickGalleryActivity;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/miui/gallery/picker/PickGalleryActivity;->getPageName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/miui/gallery/picker/PickGalleryActivity;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloadProgressDialog:Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/miui/gallery/picker/PickGalleryActivity;Lcom/miui/gallery/picker/uri/PrepareProgressDialog;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;
    .param p1, "x1"    # Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloadProgressDialog:Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    return-object p1
.end method

.method static synthetic access$302(Lcom/miui/gallery/picker/PickGalleryActivity;Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;)Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;
    .param p1, "x1"    # Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mParseTask:Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;

    return-object p1
.end method

.method static synthetic access$400(Lcom/miui/gallery/picker/PickGalleryActivity;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getResultIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/picker/PickGalleryActivity;II)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/picker/PickGalleryActivity;->statBestImageCount(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/gallery/picker/PickGalleryActivity;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/miui/gallery/picker/PickGalleryActivity;->doCompleteOperation(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/gallery/picker/PickGalleryActivity;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/miui/gallery/picker/PickGalleryActivity;->prepareResult(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/gallery/picker/PickGalleryActivity;)[Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/picker/PickGalleryActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloadPendings:Ljava/util/ArrayList;

    return-object v0
.end method

.method private doCompleteOperation(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 535
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->isPickIntentMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 536
    iget v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mCloseType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 537
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mPickIntent:Landroid/content/Intent;

    const/16 v1, 0x2a

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/picker/PickGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 548
    :goto_0
    return-void

    .line 538
    :cond_0
    iget v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mCloseType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 539
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->finish()V

    .line 540
    invoke-virtual {p0, p1}, Lcom/miui/gallery/picker/PickGalleryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 542
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/gallery/picker/PickGalleryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 545
    :cond_2
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/miui/gallery/picker/PickGalleryActivity;->setResult(ILandroid/content/Intent;)V

    .line 546
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->finish()V

    goto :goto_0
.end method

.method private getPageName(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 160
    if-nez p1, :cond_0

    .line 161
    const-string v0, "home"

    .line 165
    :goto_0
    return-object v0

    .line 162
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 163
    const-string v0, "album"

    goto :goto_0

    .line 165
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getResultIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 526
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->isPickIntentMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mPickIntent:Landroid/content/Intent;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    goto :goto_0
.end method

.method private isPickIntentMode()Z
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mPickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseOriginUrlResult(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 507
    .local p1, "originRequestResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;>;"
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getResultIntent()Landroid/content/Intent;

    move-result-object v1

    .line 509
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 510
    .local v2, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 511
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;

    invoke-virtual {v3}, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;->toJson()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 513
    :cond_0
    const-string v3, "pick-result-origin-download-info"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 514
    const-string v3, "pick-result-data"

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 515
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 517
    invoke-direct {p0, v1}, Lcom/miui/gallery/picker/PickGalleryActivity;->doCompleteOperation(Landroid/content/Intent;)V

    .line 518
    return-void
.end method

.method private parseResult()V
    .locals 15

    .prologue
    const/4 v12, 0x2

    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 385
    iget-object v9, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    array-length v9, v9

    if-nez v9, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->finish()V

    .line 451
    :goto_0
    return-void

    .line 390
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 391
    .local v1, "checkedResultUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v0, "checkedResultSha1s":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v9, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    array-length v9, v9

    if-ge v3, v9, :cond_2

    .line 393
    iget-object v9, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    aget-object v9, v9, v3

    if-eqz v9, :cond_1

    .line 394
    iget-object v9, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    aget-object v9, v9, v3

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    iget-object v9, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mSha1s:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 398
    :cond_2
    iget-object v9, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    array-length v9, v9

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eq v9, v10, :cond_3

    .line 399
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Landroid/net/Uri;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/net/Uri;

    iput-object v9, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    .line 400
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mSha1s:[Ljava/lang/String;

    .line 401
    iget-object v9, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    array-length v9, v9

    if-nez v9, :cond_3

    .line 402
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->finish()V

    goto :goto_0

    .line 407
    :cond_3
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v9

    invoke-interface {v9}, Lcom/miui/gallery/picker/helper/Picker;->getResultType()Lcom/miui/gallery/picker/helper/Picker$ResultType;

    move-result-object v7

    .line 408
    .local v7, "type":Lcom/miui/gallery/picker/helper/Picker$ResultType;
    const-string v9, "PickGalleryActivity"

    const-string v10, "parse raw results[%s] for %s"

    iget-object v11, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    invoke-static {v9, v10, v11, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 410
    sget-object v9, Lcom/miui/gallery/picker/helper/Picker$ResultType;->OPEN_URI:Lcom/miui/gallery/picker/helper/Picker$ResultType;

    if-ne v7, v9, :cond_4

    .line 411
    const/4 v3, 0x0

    :goto_2
    iget-object v9, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    array-length v9, v9

    if-ge v3, v9, :cond_4

    .line 412
    iget-object v9, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    iget-object v10, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    aget-object v10, v10, v3

    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/miui/gallery/provider/GalleryOpenProvider;->translateToContent(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    aput-object v10, v9, v3

    .line 411
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 416
    :cond_4
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v9

    invoke-interface {v9}, Lcom/miui/gallery/picker/helper/Picker;->getImageType()Lcom/miui/gallery/picker/helper/Picker$ImageType;

    move-result-object v9

    sget-object v10, Lcom/miui/gallery/picker/helper/Picker$ImageType;->ORIGIN_OR_DOWNLOAD_INFO:Lcom/miui/gallery/picker/helper/Picker$ImageType;

    if-ne v9, v10, :cond_5

    .line 417
    new-instance v9, Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    iget-object v10, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mOriginRequestPendings:Ljava/util/ArrayList;

    new-instance v11, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;-><init>(Lcom/miui/gallery/picker/PickGalleryActivity;Lcom/miui/gallery/picker/PickGalleryActivity$1;)V

    invoke-direct {v9, v10, v11}, Lcom/miui/gallery/picker/uri/OriginUrlRequestor;-><init>(Ljava/util/ArrayList;Lcom/miui/gallery/picker/uri/OriginUrlRequestor$ProgressListener;)V

    iput-object v9, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mOriginUrlRequestor:Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    .line 418
    iget-object v9, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mOriginUrlRequestor:Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    iget-object v10, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    iget-object v11, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mSha1s:[Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lcom/miui/gallery/picker/uri/OriginUrlRequestor;->start([Landroid/net/Uri;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 422
    :cond_5
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getResultIntent()Landroid/content/Intent;

    move-result-object v4

    .line 423
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v9

    invoke-interface {v9}, Lcom/miui/gallery/picker/helper/Picker;->getMediaType()Lcom/miui/gallery/picker/helper/Picker$MediaType;

    move-result-object v5

    .line 424
    .local v5, "mediaType":Lcom/miui/gallery/picker/helper/Picker$MediaType;
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v9

    invoke-interface {v9}, Lcom/miui/gallery/picker/helper/Picker;->getMode()Lcom/miui/gallery/picker/helper/Picker$Mode;

    move-result-object v9

    sget-object v10, Lcom/miui/gallery/picker/helper/Picker$Mode;->MULTIPLE:Lcom/miui/gallery/picker/helper/Picker$Mode;

    if-eq v9, v10, :cond_6

    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v9

    invoke-interface {v9}, Lcom/miui/gallery/picker/helper/Picker;->getMode()Lcom/miui/gallery/picker/helper/Picker$Mode;

    move-result-object v9

    sget-object v10, Lcom/miui/gallery/picker/helper/Picker$Mode;->UNLIMITED:Lcom/miui/gallery/picker/helper/Picker$Mode;

    if-ne v9, v10, :cond_a

    .line 426
    :cond_6
    sget-object v9, Lcom/miui/gallery/picker/helper/Picker$MediaType;->IMAGE:Lcom/miui/gallery/picker/helper/Picker$MediaType;

    if-ne v5, v9, :cond_7

    .line 427
    new-instance v2, Landroid/content/ClipData;

    const-string v9, "data"

    new-array v10, v12, [Ljava/lang/String;

    const-string v11, "image/*"

    aput-object v11, v10, v13

    const-string/jumbo v11, "text/uri-list"

    aput-object v11, v10, v14

    new-instance v11, Landroid/content/ClipData$Item;

    iget-object v12, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    aget-object v12, v12, v13

    invoke-direct {v11, v12}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-direct {v2, v9, v10, v11}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 434
    .local v2, "clip":Landroid/content/ClipData;
    :goto_3
    const/4 v3, 0x1

    :goto_4
    iget-object v9, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    array-length v9, v9

    if-ge v3, v9, :cond_9

    .line 435
    new-instance v9, Landroid/content/ClipData$Item;

    iget-object v10, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    aget-object v10, v10, v3

    invoke-direct {v9, v10}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v2, v9}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 434
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 428
    .end local v2    # "clip":Landroid/content/ClipData;
    :cond_7
    sget-object v9, Lcom/miui/gallery/picker/helper/Picker$MediaType;->ALL:Lcom/miui/gallery/picker/helper/Picker$MediaType;

    if-ne v5, v9, :cond_8

    .line 429
    new-instance v2, Landroid/content/ClipData;

    const-string v9, "data"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const-string v11, "image/*"

    aput-object v11, v10, v13

    const-string/jumbo v11, "video/*"

    aput-object v11, v10, v14

    const-string/jumbo v11, "text/uri-list"

    aput-object v11, v10, v12

    new-instance v11, Landroid/content/ClipData$Item;

    iget-object v12, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    aget-object v12, v12, v13

    invoke-direct {v11, v12}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-direct {v2, v9, v10, v11}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .restart local v2    # "clip":Landroid/content/ClipData;
    goto :goto_3

    .line 431
    .end local v2    # "clip":Landroid/content/ClipData;
    :cond_8
    new-instance v2, Landroid/content/ClipData;

    const-string v9, "data"

    new-array v10, v12, [Ljava/lang/String;

    const-string/jumbo v11, "video/*"

    aput-object v11, v10, v13

    const-string/jumbo v11, "text/uri-list"

    aput-object v11, v10, v14

    new-instance v11, Landroid/content/ClipData$Item;

    iget-object v12, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    aget-object v12, v12, v13

    invoke-direct {v11, v12}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-direct {v2, v9, v10, v11}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .restart local v2    # "clip":Landroid/content/ClipData;
    goto :goto_3

    .line 438
    :cond_9
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 439
    const-string v9, "pick-result-data"

    new-instance v10, Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 448
    .end local v2    # "clip":Landroid/content/ClipData;
    :goto_5
    invoke-virtual {v4, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 450
    invoke-direct {p0, v4}, Lcom/miui/gallery/picker/PickGalleryActivity;->doCompleteOperation(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 440
    :cond_a
    sget-object v9, Lcom/miui/gallery/picker/helper/Picker$ResultType;->OPEN_URI:Lcom/miui/gallery/picker/helper/Picker$ResultType;

    if-ne v7, v9, :cond_b

    .line 441
    iget-object v9, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    aget-object v8, v9, v13

    .line 442
    .local v8, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 443
    .local v6, "mimeType":Ljava/lang/String;
    invoke-virtual {v4, v8, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    .line 445
    .end local v6    # "mimeType":Ljava/lang/String;
    .end local v8    # "uri":Landroid/net/Uri;
    :cond_b
    iget-object v9, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    aget-object v9, v9, v13

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v4, v9}, Lcom/miui/gallery/picker/PickGalleryActivity;->parseSingle(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_5
.end method

.method private parseSingle(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 5
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 568
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v3

    invoke-interface {v3}, Lcom/miui/gallery/picker/helper/Picker;->getResultType()Lcom/miui/gallery/picker/helper/Picker$ResultType;

    move-result-object v3

    sget-object v4, Lcom/miui/gallery/picker/helper/Picker$ResultType;->LEGACY_MEDIA:Lcom/miui/gallery/picker/helper/Picker$ResultType;

    if-ne v3, v4, :cond_1

    .line 569
    invoke-direct {p0, p2}, Lcom/miui/gallery/picker/PickGalleryActivity;->queryMediaUri(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 570
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/Uri;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 571
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 582
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/Uri;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 574
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 575
    .local v2, "result":Landroid/net/Uri;
    invoke-static {p2}, Lcom/miui/gallery/util/FileMimeUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 576
    .local v0, "mimeType":Ljava/lang/String;
    const-string v3, "*/*"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 577
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 579
    :cond_2
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private prepareResult(Landroid/database/Cursor;)V
    .locals 17
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 322
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 323
    .local v15, "resultCount":I
    const/4 v8, 0x0

    .line 324
    .local v8, "bestImageCount":I
    new-array v2, v15, [Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    .line 325
    new-array v2, v15, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/gallery/picker/PickGalleryActivity;->mSha1s:[Ljava/lang/String;

    .line 326
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloadPendings:Ljava/util/ArrayList;

    .line 327
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/gallery/picker/PickGalleryActivity;->mOriginRequestPendings:Ljava/util/ArrayList;

    .line 329
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 330
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 331
    .local v3, "position":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/picker/PickGalleryActivity;->mSha1s:[Ljava/lang/String;

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 332
    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 333
    .local v14, "path":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 334
    .local v12, "id":J
    invoke-static {}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getInstance()Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v12, v13, v4}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->isBestImage(JZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 335
    add-int/lit8 v8, v8, 0x1

    .line 337
    :cond_0
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 338
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 339
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_0

    .line 345
    .end local v10    # "file":Ljava/io/File;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/gallery/picker/helper/Picker;->getImageType()Lcom/miui/gallery/picker/helper/Picker$ImageType;

    move-result-object v11

    .line 346
    .local v11, "imageType":Lcom/miui/gallery/picker/helper/Picker$ImageType;
    sget-object v2, Lcom/miui/gallery/picker/helper/Picker$ImageType;->ORIGIN:Lcom/miui/gallery/picker/helper/Picker$ImageType;

    if-ne v11, v2, :cond_3

    .line 349
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isActiveNetworkMetered()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 350
    sget-object v9, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN_FORCE:Lcom/miui/gallery/sdk/download/DownloadType;

    .line 354
    .local v9, "downloadType":Lcom/miui/gallery/sdk/download/DownloadType;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloadPendings:Ljava/util/ArrayList;

    new-instance v4, Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;

    invoke-static {v12, v13}, Lcom/miui/gallery/util/uil/CloudUriAdapter;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-direct {v4, v5, v9, v6, v3}, Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;-><init>(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;II)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 352
    .end local v9    # "downloadType":Lcom/miui/gallery/sdk/download/DownloadType;
    :cond_2
    sget-object v9, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN:Lcom/miui/gallery/sdk/download/DownloadType;

    .restart local v9    # "downloadType":Lcom/miui/gallery/sdk/download/DownloadType;
    goto :goto_1

    .line 358
    .end local v9    # "downloadType":Lcom/miui/gallery/sdk/download/DownloadType;
    :cond_3
    sget-object v2, Lcom/miui/gallery/picker/helper/Picker$ImageType;->ORIGIN_OR_DOWNLOAD_INFO:Lcom/miui/gallery/picker/helper/Picker$ImageType;

    if-ne v11, v2, :cond_4

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/picker/PickGalleryActivity;->mOriginRequestPendings:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    new-instance v2, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginUrlRequestTask;

    invoke-static {v12, v13}, Lcom/miui/gallery/util/uil/CloudUriAdapter;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x7

    .line 360
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/16 v6, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-direct/range {v2 .. v7}, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginUrlRequestTask;-><init>(ILandroid/net/Uri;III)V

    .line 359
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_4
    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 364
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 365
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    .restart local v10    # "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v3

    goto/16 :goto_0

    .line 372
    .end local v10    # "file":Ljava/io/File;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloadPendings:Ljava/util/ArrayList;

    new-instance v4, Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;

    invoke-static {v12, v13}, Lcom/miui/gallery/util/uil/CloudUriAdapter;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;-><init>(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;II)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 374
    .end local v3    # "position":I
    .end local v11    # "imageType":Lcom/miui/gallery/picker/helper/Picker$ImageType;
    .end local v12    # "id":J
    .end local v14    # "path":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v8}, Lcom/miui/gallery/picker/PickGalleryActivity;->statBestImageCount(II)V

    .line 375
    return-void
.end method

.method private queryMediaUri(Ljava/lang/String;)Landroid/util/Pair;
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 585
    const/4 v7, 0x0

    .line 586
    .local v7, "dataType":Ljava/lang/String;
    const/4 v8, 0x0

    .line 587
    .local v8, "uri":Landroid/net/Uri;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 588
    const/4 v6, 0x0

    .line 590
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/picker/helper/Picker;->getMediaType()Lcom/miui/gallery/picker/helper/Picker$MediaType;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/picker/helper/Picker$MediaType;->IMAGE:Lcom/miui/gallery/picker/helper/Picker$MediaType;

    if-ne v0, v1, :cond_3

    .line 591
    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 592
    const-string/jumbo v7, "vnd.android.cursor.dir/image"

    .line 593
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 608
    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 612
    :cond_0
    if-eqz v6, :cond_1

    .line 613
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 619
    :cond_1
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v8, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .end local v6    # "c":Landroid/database/Cursor;
    :cond_2
    return-object v0

    .line 600
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_3
    :try_start_1
    sget-object v8, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 601
    const-string/jumbo v7, "vnd.android.cursor.dir/video"

    .line 602
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    goto :goto_0

    .line 612
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 613
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private sendStatistics()V
    .locals 6

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "callingPackage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    const-string/jumbo v0, "unknown"

    .line 135
    :cond_0
    const-string v1, "picker"

    const-string v2, "open_picker"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v1, "best_image"

    const-string v2, "best_image_count"

    .line 137
    invoke-static {}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getInstance()Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getBestImageCount(Z)I

    move-result v3

    int-to-long v4, v3

    .line 136
    invoke-static {v1, v2, v4, v5}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 138
    return-void
.end method

.method private setupTabFragments()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 199
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mActionBar:Lmiui/app/ActionBar;

    const-string v1, "PickHomePageFragment"

    iget-object v2, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mActionBar:Lmiui/app/ActionBar;

    .line 200
    invoke-virtual {v2}, Lmiui/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    const v3, 0x7f0c024b

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v2

    const-class v3, Lcom/miui/gallery/picker/PickHomePageFragment;

    .line 199
    invoke-virtual/range {v0 .. v5}, Lmiui/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    .line 202
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mActionBar:Lmiui/app/ActionBar;

    const-string v1, "PickAlbumPageFragment"

    iget-object v2, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mActionBar:Lmiui/app/ActionBar;

    .line 203
    invoke-virtual {v2}, Lmiui/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    const v3, 0x7f0c0046

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v2

    const-class v3, Lcom/miui/gallery/picker/PickAlbumPageFragment;

    .line 202
    invoke-virtual/range {v0 .. v5}, Lmiui/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    .line 206
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mActionBar:Lmiui/app/ActionBar;

    new-instance v1, Lcom/miui/gallery/picker/PickGalleryActivity$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/picker/PickGalleryActivity$1;-><init>(Lcom/miui/gallery/picker/PickGalleryActivity;)V

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->addOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V

    .line 228
    return-void
.end method

.method private showConfirmDialog(Z)V
    .locals 6
    .param p1, "retry"    # Z

    .prologue
    .line 623
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 624
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "download_file_count"

    iget-object v5, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloadPendings:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 625
    const-string v4, "local_file_count"

    iget-object v5, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    array-length v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 626
    const/4 v2, 0x0

    .line 627
    .local v2, "size":I
    iget-object v4, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloadPendings:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;

    .line 628
    .local v3, "task":Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;
    iget v5, v3, Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;->mSize:I

    add-int/2addr v2, v5

    .line 629
    goto :goto_0

    .line 630
    .end local v3    # "task":Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;
    :cond_0
    const-string v4, "download_file_size"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 631
    const-string v4, "retry_mode"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 633
    new-instance v1, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;

    invoke-direct {v1}, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;-><init>()V

    .line 634
    .local v1, "dialog":Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;
    invoke-virtual {v1, v0}, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;->setArguments(Landroid/os/Bundle;)V

    .line 635
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "confirm_dialog"

    invoke-virtual {v1, v4, v5}, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 636
    return-void
.end method

.method private startDownload()V
    .locals 4

    .prologue
    .line 639
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    invoke-virtual {v0}, Lcom/miui/gallery/picker/uri/Downloader;->cancel()V

    .line 641
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    invoke-virtual {v0}, Lcom/miui/gallery/picker/uri/Downloader;->destroy()V

    .line 644
    :cond_0
    new-instance v0, Lcom/miui/gallery/picker/uri/Downloader;

    iget-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloadPendings:Ljava/util/ArrayList;

    new-instance v2, Lcom/miui/gallery/picker/PickGalleryActivity$DownloadProgressListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/gallery/picker/PickGalleryActivity$DownloadProgressListener;-><init>(Lcom/miui/gallery/picker/PickGalleryActivity;Lcom/miui/gallery/picker/PickGalleryActivity$1;)V

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/picker/uri/Downloader;-><init>(Ljava/util/ArrayList;Lcom/miui/gallery/picker/uri/Downloader$DownloadListener;)V

    iput-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    .line 645
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    invoke-virtual {v0}, Lcom/miui/gallery/picker/uri/Downloader;->start()V

    .line 646
    return-void
.end method

.method private statBestImageCount(II)V
    .locals 3
    .param p1, "totalCount"    # I
    .param p2, "bestCount"    # I

    .prologue
    .line 378
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 379
    .local v0, "map":Ljava/util/Map;
    const-string v1, "count"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string v1, "best_image_count"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string v1, "picker"

    const-string v2, "pick_result"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 382
    return-void
.end method


# virtual methods
.method protected hasCustomContentView()Z
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 561
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/picker/PickerActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 562
    const/16 v0, 0x2a

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 563
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->finish()V

    .line 565
    :cond_0
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 777
    invoke-super {p0, p1}, Lcom/miui/gallery/picker/PickerActivity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 778
    instance-of v1, p1, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 779
    check-cast v0, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;

    .line 780
    .local v0, "dialog":Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;
    iget-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloadListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;->setPositiveListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 781
    iget-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mCancelDownloadListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;->setNegativeListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 790
    .end local v0    # "dialog":Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;
    :cond_0
    :goto_0
    return-void

    .line 782
    :cond_1
    instance-of v1, p1, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 783
    check-cast v0, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    .line 784
    .local v0, "dialog":Lcom/miui/gallery/picker/uri/PrepareProgressDialog;
    iget-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mCancelConfirmListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->setCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 785
    .end local v0    # "dialog":Lcom/miui/gallery/picker/uri/PrepareProgressDialog;
    :cond_2
    instance-of v1, p1, Lcom/miui/gallery/picker/uri/DownloadCancelDialog;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 786
    check-cast v0, Lcom/miui/gallery/picker/uri/DownloadCancelDialog;

    .line 787
    .local v0, "dialog":Lcom/miui/gallery/picker/uri/DownloadCancelDialog;
    iget-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mCancelDownloadListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/picker/uri/DownloadCancelDialog;->setCancelListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 788
    iget-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mContinueDownloadListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/picker/uri/DownloadCancelDialog;->setContinueListener(Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/miui/gallery/picker/PickerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    iget-object v5, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    if-nez v5, :cond_0

    .line 128
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->sendStatistics()V

    .line 97
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 98
    .local v0, "actionBar":Lmiui/app/ActionBar;
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v0, p0, v5}, Lmiui/app/ActionBar;->setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;)V

    .line 99
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->setupTabFragments()V

    .line 100
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->isCrossUserPick()Z

    move-result v5

    if-nez v5, :cond_1

    .line 101
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v5

    new-instance v6, Lcom/miui/gallery/picker/PickGalleryActivity$MediaScanJob;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/miui/gallery/picker/PickGalleryActivity$MediaScanJob;-><init>(Lcom/miui/gallery/picker/PickGalleryActivity$1;)V

    invoke-virtual {v5, v6}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    .line 104
    :cond_1
    if-eqz p1, :cond_6

    .line 105
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "confirm_dialog"

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 106
    .local v2, "confirmDialog":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "prepare_progress_dialog"

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    .line 107
    .local v3, "progressDialog":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "cancel_dialog"

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 108
    .local v1, "cancelDialog":Landroid/app/Fragment;
    if-nez v2, :cond_2

    if-nez v3, :cond_2

    if-eqz v1, :cond_6

    .line 109
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 110
    .local v4, "transaction":Landroid/app/FragmentTransaction;
    if-eqz v2, :cond_3

    .line 111
    invoke-virtual {v4, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 113
    :cond_3
    if-eqz v3, :cond_4

    .line 114
    invoke-virtual {v4, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 116
    :cond_4
    if-eqz v1, :cond_5

    .line 117
    invoke-virtual {v4, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 119
    :cond_5
    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 120
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 124
    .end local v1    # "cancelDialog":Landroid/app/Fragment;
    .end local v2    # "confirmDialog":Landroid/app/Fragment;
    .end local v3    # "progressDialog":Landroid/app/Fragment;
    .end local v4    # "transaction":Landroid/app/FragmentTransaction;
    :cond_6
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "pick_intent"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    iput-object v5, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mPickIntent:Landroid/content/Intent;

    .line 125
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "pick_close_type"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mCloseType:I

    .line 127
    invoke-static {p0}, Lcom/miui/gallery/ui/ImageSelectionTipFragment;->showImageSelectionTipDialogIfNecessary(Landroid/app/Activity;)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-super {p0}, Lcom/miui/gallery/picker/PickerActivity;->onDestroy()V

    .line 171
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloadPendings:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloadPendings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 175
    iput-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mSha1s:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 178
    iput-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mSha1s:[Ljava/lang/String;

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mOriginUrlRequestor:Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    if-eqz v0, :cond_3

    .line 181
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mOriginUrlRequestor:Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    invoke-virtual {v0}, Lcom/miui/gallery/picker/uri/OriginUrlRequestor;->cancel()V

    .line 183
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mOriginRequestPendings:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 184
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mOriginRequestPendings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 186
    :cond_4
    return-void
.end method

.method protected onDone()V
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mParseTask:Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;

    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;-><init>(Lcom/miui/gallery/picker/PickGalleryActivity;Lcom/miui/gallery/picker/helper/Picker;)V

    iput-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mParseTask:Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;

    .line 192
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mParseTask:Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_0
    const-string v0, "PickGalleryActivity"

    const-string v1, "parse task is running, skip"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Lcom/miui/gallery/picker/PickerActivity;->onPause()V

    .line 143
    iget v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mCurrentPagePosition:I

    invoke-direct {p0, v0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getPageName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordPageEnd(Landroid/app/Activity;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    invoke-virtual {v0}, Lcom/miui/gallery/picker/uri/Downloader;->pause()V

    .line 147
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Lcom/miui/gallery/picker/PickerActivity;->onResume()V

    .line 152
    iget v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mCurrentPagePosition:I

    invoke-direct {p0, v0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getPageName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    invoke-virtual {v0}, Lcom/miui/gallery/picker/uri/Downloader;->resume()V

    .line 157
    :cond_0
    return-void
.end method
