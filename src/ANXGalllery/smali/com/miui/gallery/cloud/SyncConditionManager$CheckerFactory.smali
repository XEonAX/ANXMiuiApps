.class Lcom/miui/gallery/cloud/SyncConditionManager$CheckerFactory;
.super Ljava/lang/Object;
.source "SyncConditionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/SyncConditionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckerFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/cloud/SyncConditionManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/cloud/SyncConditionManager$1;

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/miui/gallery/cloud/SyncConditionManager$CheckerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createChecker(I)Lcom/miui/gallery/cloud/SyncConditionManager$Checker;
    .locals 2
    .param p1, "priority"    # I

    .prologue
    const/4 v1, 0x0

    .line 326
    packed-switch p1, :pswitch_data_0

    .line 349
    new-instance v0, Lcom/miui/gallery/cloud/SyncConditionManager$InvalidChecker;

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/SyncConditionManager$InvalidChecker;-><init>(Lcom/miui/gallery/cloud/SyncConditionManager$1;)V

    :goto_0
    return-object v0

    .line 329
    :pswitch_0
    new-instance v0, Lcom/miui/gallery/cloud/SyncConditionManager$ServerTagChecker;

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/SyncConditionManager$ServerTagChecker;-><init>(Lcom/miui/gallery/cloud/SyncConditionManager$1;)V

    goto :goto_0

    .line 334
    :pswitch_1
    new-instance v0, Lcom/miui/gallery/cloud/SyncConditionManager$BackUploadChecker;

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/SyncConditionManager$BackUploadChecker;-><init>(Lcom/miui/gallery/cloud/SyncConditionManager$1;)V

    goto :goto_0

    .line 337
    :pswitch_2
    new-instance v0, Lcom/miui/gallery/cloud/SyncConditionManager$BackDownloadChecker;

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/SyncConditionManager$BackDownloadChecker;-><init>(Lcom/miui/gallery/cloud/SyncConditionManager$1;)V

    goto :goto_0

    .line 339
    :pswitch_3
    new-instance v0, Lcom/miui/gallery/cloud/SyncConditionManager$BackDownloadWeakChecker;

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/SyncConditionManager$BackDownloadWeakChecker;-><init>(Lcom/miui/gallery/cloud/SyncConditionManager$1;)V

    goto :goto_0

    .line 342
    :pswitch_4
    new-instance v0, Lcom/miui/gallery/cloud/SyncConditionManager$ForeDownloadThumbnailChecker;

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/SyncConditionManager$ForeDownloadThumbnailChecker;-><init>(Lcom/miui/gallery/cloud/SyncConditionManager$1;)V

    goto :goto_0

    .line 345
    :pswitch_5
    new-instance v0, Lcom/miui/gallery/cloud/SyncConditionManager$ForeDownloadOriginChecker;

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/SyncConditionManager$ForeDownloadOriginChecker;-><init>(Lcom/miui/gallery/cloud/SyncConditionManager$1;)V

    goto :goto_0

    .line 347
    :pswitch_6
    new-instance v0, Lcom/miui/gallery/cloud/SyncConditionManager$ForceForeDownloadOriginChecker;

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/SyncConditionManager$ForceForeDownloadOriginChecker;-><init>(Lcom/miui/gallery/cloud/SyncConditionManager$1;)V

    goto :goto_0

    .line 326
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
