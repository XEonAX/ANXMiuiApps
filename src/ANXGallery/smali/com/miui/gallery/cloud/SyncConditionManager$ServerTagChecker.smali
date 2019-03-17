.class Lcom/miui/gallery/cloud/SyncConditionManager$ServerTagChecker;
.super Lcom/miui/gallery/cloud/SyncConditionManager$Checker;
.source "SyncConditionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/SyncConditionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServerTagChecker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/miui/gallery/cloud/SyncConditionManager$Checker;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/cloud/SyncConditionManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/cloud/SyncConditionManager$1;

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/miui/gallery/cloud/SyncConditionManager$ServerTagChecker;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkInternal(Lcom/miui/gallery/cloud/syncstate/SyncType;)I
    .locals 4
    .param p1, "syncType"    # Lcom/miui/gallery/cloud/syncstate/SyncType;

    .prologue
    const/4 v1, 0x2

    .line 187
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->isGalleryCloudSyncable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 206
    :goto_0
    return v1

    .line 190
    :cond_0
    invoke-static {}, Lcom/miui/gallery/cloud/policy/SyncPolicyManager;->getInstance()Lcom/miui/gallery/cloud/policy/SyncPolicyManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/miui/gallery/cloud/policy/SyncPolicyManager;->getPolicy(Lcom/miui/gallery/cloud/syncstate/SyncType;)Lcom/miui/gallery/cloud/policy/IPolicy;

    move-result-object v0

    .line 191
    .local v0, "policy":Lcom/miui/gallery/cloud/policy/IPolicy;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/miui/gallery/cloud/policy/IPolicy;->isEnable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 192
    :cond_1
    const-string v2, "SyncConditionManager"

    const-string v3, "policy not enable"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_2
    invoke-interface {v0}, Lcom/miui/gallery/cloud/policy/IPolicy;->isIgnoreBatteryLow()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->getPowerCanSync()Z

    move-result v2

    if-nez v2, :cond_3

    .line 203
    const-string v2, "SyncConditionManager"

    const-string v3, "battery low"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method
