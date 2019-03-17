.class Lcom/miui/gallery/cloud/SyncConditionManager$ForeDownloadOriginChecker;
.super Lcom/miui/gallery/cloud/SyncConditionManager$Checker;
.source "SyncConditionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/SyncConditionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ForeDownloadOriginChecker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/miui/gallery/cloud/SyncConditionManager$Checker;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/cloud/SyncConditionManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/cloud/SyncConditionManager$1;

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/miui/gallery/cloud/SyncConditionManager$ForeDownloadOriginChecker;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkInternal(Lcom/miui/gallery/cloud/syncstate/SyncType;)I
    .locals 3
    .param p1, "syncType"    # Lcom/miui/gallery/cloud/syncstate/SyncType;

    .prologue
    const/4 v1, 0x0

    .line 290
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isActiveNetworkMetered()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 291
    .local v0, "networkFree":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 295
    :goto_1
    return v1

    .end local v0    # "networkFree":Z
    :cond_0
    move v0, v1

    .line 290
    goto :goto_0

    .line 295
    .restart local v0    # "networkFree":Z
    :cond_1
    const/4 v1, 0x3

    goto :goto_1
.end method
