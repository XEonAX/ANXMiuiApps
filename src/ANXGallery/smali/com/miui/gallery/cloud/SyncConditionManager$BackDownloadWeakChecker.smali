.class Lcom/miui/gallery/cloud/SyncConditionManager$BackDownloadWeakChecker;
.super Lcom/miui/gallery/cloud/SyncConditionManager$Checker;
.source "SyncConditionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/SyncConditionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackDownloadWeakChecker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/miui/gallery/cloud/SyncConditionManager$Checker;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/cloud/SyncConditionManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/cloud/SyncConditionManager$1;

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/miui/gallery/cloud/SyncConditionManager$BackDownloadWeakChecker;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkInternal(Lcom/miui/gallery/cloud/syncstate/SyncType;)I
    .locals 6
    .param p1, "syncType"    # Lcom/miui/gallery/cloud/syncstate/SyncType;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 269
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->isGalleryCloudSyncable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    move v3, v4

    .line 278
    :cond_0
    :goto_0
    return v3

    .line 272
    :cond_1
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isActiveNetworkMetered()Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v2, 0x1

    .line 273
    .local v2, "networkFree":Z
    :goto_1
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->getPowerCanSync()Z

    move-result v1

    .line 274
    .local v1, "isPowerOk":Z
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/gallery/util/MiscUtil;->isAppProcessInForeground(Landroid/content/Context;)Z

    move-result v0

    .line 275
    .local v0, "isAppForeground":Z
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    :cond_2
    move v3, v4

    .line 278
    goto :goto_0

    .end local v0    # "isAppForeground":Z
    .end local v1    # "isPowerOk":Z
    .end local v2    # "networkFree":Z
    :cond_3
    move v2, v3

    .line 272
    goto :goto_1
.end method
