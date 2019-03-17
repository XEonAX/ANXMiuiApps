.class Lcom/miui/gallery/cloud/SyncConditionManager$BackUploadChecker;
.super Lcom/miui/gallery/cloud/SyncConditionManager$ServerTagChecker;
.source "SyncConditionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/SyncConditionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackUploadChecker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/SyncConditionManager$ServerTagChecker;-><init>(Lcom/miui/gallery/cloud/SyncConditionManager$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/cloud/SyncConditionManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/cloud/SyncConditionManager$1;

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/miui/gallery/cloud/SyncConditionManager$BackUploadChecker;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkInternal(Lcom/miui/gallery/cloud/syncstate/SyncType;)I
    .locals 5
    .param p1, "syncType"    # Lcom/miui/gallery/cloud/syncstate/SyncType;

    .prologue
    const/4 v2, 0x2

    .line 218
    invoke-super {p0, p1}, Lcom/miui/gallery/cloud/SyncConditionManager$ServerTagChecker;->checkInternal(Lcom/miui/gallery/cloud/syncstate/SyncType;)I

    move-result v1

    .line 219
    .local v1, "result":I
    if-nez v1, :cond_0

    .line 220
    invoke-static {}, Lcom/miui/gallery/cloud/policy/SyncPolicyManager;->getInstance()Lcom/miui/gallery/cloud/policy/SyncPolicyManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/miui/gallery/cloud/policy/SyncPolicyManager;->getPolicy(Lcom/miui/gallery/cloud/syncstate/SyncType;)Lcom/miui/gallery/cloud/policy/IPolicy;

    move-result-object v0

    .line 221
    .local v0, "policy":Lcom/miui/gallery/cloud/policy/IPolicy;
    invoke-interface {v0}, Lcom/miui/gallery/cloud/policy/IPolicy;->isDisallowMetered()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isActiveNetworkMetered()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 222
    const-string v3, "SyncConditionManager"

    const-string v4, "network is metered"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 230
    .end local v0    # "policy":Lcom/miui/gallery/cloud/policy/IPolicy;
    .end local v1    # "result":I
    :cond_0
    :goto_0
    return v1

    .line 225
    .restart local v0    # "policy":Lcom/miui/gallery/cloud/policy/IPolicy;
    .restart local v1    # "result":I
    :cond_1
    invoke-interface {v0}, Lcom/miui/gallery/cloud/policy/IPolicy;->isRequireCharging()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->getIsPlugged()Z

    move-result v3

    if-nez v3, :cond_0

    .line 226
    const-string v3, "SyncConditionManager"

    const-string v4, "not charged"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 227
    goto :goto_0
.end method
