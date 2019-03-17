.class Lcom/miui/gallery/cloud/SyncConditionManager$ForeDownloadThumbnailChecker;
.super Lcom/miui/gallery/cloud/SyncConditionManager$Checker;
.source "SyncConditionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/SyncConditionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ForeDownloadThumbnailChecker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/miui/gallery/cloud/SyncConditionManager$Checker;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/cloud/SyncConditionManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/cloud/SyncConditionManager$1;

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/miui/gallery/cloud/SyncConditionManager$ForeDownloadThumbnailChecker;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkInternal(Lcom/miui/gallery/cloud/syncstate/SyncType;)I
    .locals 1
    .param p1, "syncType"    # Lcom/miui/gallery/cloud/syncstate/SyncType;

    .prologue
    .line 319
    const/4 v0, 0x0

    return v0
.end method
