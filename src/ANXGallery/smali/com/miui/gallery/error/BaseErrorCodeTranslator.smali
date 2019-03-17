.class public Lcom/miui/gallery/error/BaseErrorCodeTranslator;
.super Ljava/lang/Object;
.source "BaseErrorCodeTranslator.java"

# interfaces
.implements Lcom/miui/gallery/error/core/ErrorCodeTranslator;


# instance fields
.field private mTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Lcom/miui/gallery/error/core/ErrorCode;",
            "Ljava/lang/Void;",
            "Lcom/miui/gallery/error/core/ErrorTip;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/error/BaseErrorCodeTranslator;)Landroid/os/AsyncTask;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/error/BaseErrorCodeTranslator;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/miui/gallery/error/BaseErrorCodeTranslator;->mTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/gallery/error/BaseErrorCodeTranslator;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/error/BaseErrorCodeTranslator;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/miui/gallery/error/BaseErrorCodeTranslator;->mTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/gallery/error/BaseErrorCodeTranslator;Landroid/content/Context;Lcom/miui/gallery/error/core/ErrorCode;)Lcom/miui/gallery/error/core/ErrorTip;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/error/BaseErrorCodeTranslator;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/miui/gallery/error/core/ErrorCode;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/error/BaseErrorCodeTranslator;->translateInternal(Landroid/content/Context;Lcom/miui/gallery/error/core/ErrorCode;)Lcom/miui/gallery/error/core/ErrorTip;

    move-result-object v0

    return-object v0
.end method

.method private translateInternal(Landroid/content/Context;Lcom/miui/gallery/error/core/ErrorCode;)Lcom/miui/gallery/error/core/ErrorTip;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "code"    # Lcom/miui/gallery/error/core/ErrorCode;

    .prologue
    .line 21
    sget-object v3, Lcom/miui/gallery/error/BaseErrorCodeTranslator$2;->$SwitchMap$com$miui$gallery$error$core$ErrorCode:[I

    invoke-virtual {p2}, Lcom/miui/gallery/error/core/ErrorCode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 69
    new-instance v3, Lcom/miui/gallery/error/ErrorUnknownTip;

    sget-object v4, Lcom/miui/gallery/error/core/ErrorCode;->UNKNOWN:Lcom/miui/gallery/error/core/ErrorCode;

    invoke-direct {v3, v4}, Lcom/miui/gallery/error/ErrorUnknownTip;-><init>(Lcom/miui/gallery/error/core/ErrorCode;)V

    :goto_0
    return-object v3

    .line 23
    :pswitch_0
    new-instance v3, Lcom/miui/gallery/error/ErrorNoCTAPermissionTip;

    sget-object v4, Lcom/miui/gallery/error/core/ErrorCode;->NO_CTA_PERMISSION:Lcom/miui/gallery/error/core/ErrorCode;

    invoke-direct {v3, v4}, Lcom/miui/gallery/error/ErrorNoCTAPermissionTip;-><init>(Lcom/miui/gallery/error/core/ErrorCode;)V

    goto :goto_0

    .line 25
    :pswitch_1
    new-instance v3, Lcom/miui/gallery/error/ErrorNoNetworkTip;

    sget-object v4, Lcom/miui/gallery/error/core/ErrorCode;->NO_NETWORK:Lcom/miui/gallery/error/core/ErrorCode;

    invoke-direct {v3, v4}, Lcom/miui/gallery/error/ErrorNoNetworkTip;-><init>(Lcom/miui/gallery/error/core/ErrorCode;)V

    goto :goto_0

    .line 27
    :pswitch_2
    new-instance v3, Lcom/miui/gallery/error/ErrorNoWifiTip;

    sget-object v4, Lcom/miui/gallery/error/core/ErrorCode;->NO_WIFI_CONNECTED:Lcom/miui/gallery/error/core/ErrorCode;

    invoke-direct {v3, v4}, Lcom/miui/gallery/error/ErrorNoWifiTip;-><init>(Lcom/miui/gallery/error/core/ErrorCode;)V

    goto :goto_0

    .line 29
    :pswitch_3
    new-instance v3, Lcom/miui/gallery/error/ErrorSyncOffTip;

    sget-object v4, Lcom/miui/gallery/error/core/ErrorCode;->SYNC_OFF:Lcom/miui/gallery/error/core/ErrorCode;

    invoke-direct {v3, v4}, Lcom/miui/gallery/error/ErrorSyncOffTip;-><init>(Lcom/miui/gallery/error/core/ErrorCode;)V

    goto :goto_0

    .line 31
    :pswitch_4
    const/4 v0, 0x0

    .line 32
    .local v0, "changeStorage":Z
    invoke-static {p1}, Lcom/miui/gallery/util/StorageUtils;->hasExternalSDCard(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 33
    invoke-static {p1}, Lcom/miui/gallery/util/StorageUtils;->getMountedVolumePaths(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 34
    .local v2, "roots":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 35
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 36
    .local v1, "root":Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/gallery/util/StorageUtils;->getAvailableBytes(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/32 v6, 0x6400000

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 37
    const/4 v0, 0x1

    .line 43
    .end local v1    # "root":Ljava/lang/String;
    .end local v2    # "roots":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    if-eqz v0, :cond_2

    new-instance v3, Lcom/miui/gallery/error/ErrorChangeStorageTip;

    sget-object v4, Lcom/miui/gallery/error/core/ErrorCode;->STORAGE_FULL:Lcom/miui/gallery/error/core/ErrorCode;

    invoke-direct {v3, v4}, Lcom/miui/gallery/error/ErrorChangeStorageTip;-><init>(Lcom/miui/gallery/error/core/ErrorCode;)V

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/miui/gallery/error/ErrorStorageFullTip;

    sget-object v4, Lcom/miui/gallery/error/core/ErrorCode;->STORAGE_FULL:Lcom/miui/gallery/error/core/ErrorCode;

    invoke-direct {v3, v4}, Lcom/miui/gallery/error/ErrorStorageFullTip;-><init>(Lcom/miui/gallery/error/core/ErrorCode;)V

    goto :goto_0

    .line 45
    .end local v0    # "changeStorage":Z
    :pswitch_5
    new-instance v3, Lcom/miui/gallery/error/ErrorStorageFullTip;

    sget-object v4, Lcom/miui/gallery/error/core/ErrorCode;->STORAGE_LOW:Lcom/miui/gallery/error/core/ErrorCode;

    invoke-direct {v3, v4}, Lcom/miui/gallery/error/ErrorStorageFullTip;-><init>(Lcom/miui/gallery/error/core/ErrorCode;)V

    goto :goto_0

    .line 47
    :pswitch_6
    new-instance v3, Lcom/miui/gallery/error/ErrorPrimaryStorageWriteTip;

    sget-object v4, Lcom/miui/gallery/error/core/ErrorCode;->PRIMARY_STORAGE_WRITE_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    invoke-direct {v3, v4}, Lcom/miui/gallery/error/ErrorPrimaryStorageWriteTip;-><init>(Lcom/miui/gallery/error/core/ErrorCode;)V

    goto :goto_0

    .line 49
    :pswitch_7
    new-instance v3, Lcom/miui/gallery/error/ErrorSecondaryStorageWriteTip;

    sget-object v4, Lcom/miui/gallery/error/core/ErrorCode;->SECONDARY_STORAGE_WRITE_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    invoke-direct {v3, v4}, Lcom/miui/gallery/error/ErrorSecondaryStorageWriteTip;-><init>(Lcom/miui/gallery/error/core/ErrorCode;)V

    goto :goto_0

    .line 51
    :pswitch_8
    new-instance v3, Lcom/miui/gallery/error/ErrorDecodeTip;

    sget-object v4, Lcom/miui/gallery/error/core/ErrorCode;->DECODE_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    invoke-direct {v3, v4}, Lcom/miui/gallery/error/ErrorDecodeTip;-><init>(Lcom/miui/gallery/error/core/ErrorCode;)V

    goto/16 :goto_0

    .line 53
    :pswitch_9
    new-instance v3, Lcom/miui/gallery/error/ErrorNetworkRestrictTip;

    sget-object v4, Lcom/miui/gallery/error/core/ErrorCode;->NETWORK_RESTRICT:Lcom/miui/gallery/error/core/ErrorCode;

    invoke-direct {v3, v4}, Lcom/miui/gallery/error/ErrorNetworkRestrictTip;-><init>(Lcom/miui/gallery/error/core/ErrorCode;)V

    goto/16 :goto_0

    .line 55
    :pswitch_a
    new-instance v3, Lcom/miui/gallery/error/ErrorNoAccountTip;

    sget-object v4, Lcom/miui/gallery/error/core/ErrorCode;->NO_ACCOUNT:Lcom/miui/gallery/error/core/ErrorCode;

    invoke-direct {v3, v4}, Lcom/miui/gallery/error/ErrorNoAccountTip;-><init>(Lcom/miui/gallery/error/core/ErrorCode;)V

    goto/16 :goto_0

    .line 57
    :pswitch_b
    new-instance v3, Lcom/miui/gallery/error/ErrorConnectTimeoutTip;

    sget-object v4, Lcom/miui/gallery/error/core/ErrorCode;->CONNECT_TIMEOUT:Lcom/miui/gallery/error/core/ErrorCode;

    invoke-direct {v3, v4}, Lcom/miui/gallery/error/ErrorConnectTimeoutTip;-><init>(Lcom/miui/gallery/error/core/ErrorCode;)V

    goto/16 :goto_0

    .line 59
    :pswitch_c
    new-instance v3, Lcom/miui/gallery/error/ErrorSocketTimeoutTip;

    sget-object v4, Lcom/miui/gallery/error/core/ErrorCode;->SOCKET_TIMEOUT:Lcom/miui/gallery/error/core/ErrorCode;

    invoke-direct {v3, v4}, Lcom/miui/gallery/error/ErrorSocketTimeoutTip;-><init>(Lcom/miui/gallery/error/core/ErrorCode;)V

    goto/16 :goto_0

    .line 61
    :pswitch_d
    new-instance v3, Lcom/miui/gallery/error/ErrorOverQuotaTip;

    sget-object v4, Lcom/miui/gallery/error/core/ErrorCode;->OVER_QUOTA:Lcom/miui/gallery/error/core/ErrorCode;

    invoke-direct {v3, v4}, Lcom/miui/gallery/error/ErrorOverQuotaTip;-><init>(Lcom/miui/gallery/error/core/ErrorCode;)V

    goto/16 :goto_0

    .line 63
    :pswitch_e
    new-instance v3, Lcom/miui/gallery/error/ErrorBuildThumbnailTip;

    sget-object v4, Lcom/miui/gallery/error/core/ErrorCode;->THUMBNAIL_BUILD_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    invoke-direct {v3, v4}, Lcom/miui/gallery/error/ErrorBuildThumbnailTip;-><init>(Lcom/miui/gallery/error/core/ErrorCode;)V

    goto/16 :goto_0

    .line 65
    :pswitch_f
    new-instance v3, Lcom/miui/gallery/error/ErrorNotSyncedTip;

    sget-object v4, Lcom/miui/gallery/error/core/ErrorCode;->NOT_SYNCED:Lcom/miui/gallery/error/core/ErrorCode;

    invoke-direct {v3, v4}, Lcom/miui/gallery/error/ErrorNotSyncedTip;-><init>(Lcom/miui/gallery/error/core/ErrorCode;)V

    goto/16 :goto_0

    .line 67
    :pswitch_10
    new-instance v3, Lcom/miui/gallery/error/ErrorWriteExifTip;

    sget-object v4, Lcom/miui/gallery/error/core/ErrorCode;->WRITE_EXIF_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    invoke-direct {v3, v4}, Lcom/miui/gallery/error/ErrorWriteExifTip;-><init>(Lcom/miui/gallery/error/core/ErrorCode;)V

    goto/16 :goto_0

    .line 21
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method public translate(Landroid/content/Context;Lcom/miui/gallery/error/core/ErrorCode;Lcom/miui/gallery/error/core/ErrorTranslateCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "code"    # Lcom/miui/gallery/error/core/ErrorCode;
    .param p3, "callback"    # Lcom/miui/gallery/error/core/ErrorTranslateCallback;

    .prologue
    .line 75
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/error/BaseErrorCodeTranslator$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/miui/gallery/error/BaseErrorCodeTranslator$1;-><init>(Lcom/miui/gallery/error/BaseErrorCodeTranslator;Landroid/content/Context;Lcom/miui/gallery/error/core/ErrorTranslateCallback;Lcom/miui/gallery/error/core/ErrorCode;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 97
    return-void
.end method
