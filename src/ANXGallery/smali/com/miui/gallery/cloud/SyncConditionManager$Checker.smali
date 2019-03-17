.class abstract Lcom/miui/gallery/cloud/SyncConditionManager$Checker;
.super Ljava/lang/Object;
.source "SyncConditionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/SyncConditionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Checker"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private volatile mCanceled:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/cloud/SyncConditionManager$Checker;->mCanceled:Z

    .line 130
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/SyncConditionManager$Checker;->TAG:Ljava/lang/String;

    .line 131
    return-void
.end method

.method private isCanceled()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/miui/gallery/cloud/SyncConditionManager$Checker;->mCanceled:Z

    return v0
.end method


# virtual methods
.method public check(Lcom/miui/gallery/cloud/syncstate/SyncType;)I
    .locals 4
    .param p1, "syncType"    # Lcom/miui/gallery/cloud/syncstate/SyncType;

    .prologue
    const/4 v0, 0x2

    .line 145
    invoke-direct {p0}, Lcom/miui/gallery/cloud/SyncConditionManager$Checker;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/miui/gallery/cloud/SyncConditionManager$Checker;->TAG:Ljava/lang/String;

    const-string v2, "isCanceled"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_0
    :goto_0
    return v0

    .line 150
    :cond_1
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 151
    iget-object v1, p0, Lcom/miui/gallery/cloud/SyncConditionManager$Checker;->TAG:Ljava/lang/String;

    const-string v2, "network not connected"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_2
    invoke-virtual {p0, p1}, Lcom/miui/gallery/cloud/SyncConditionManager$Checker;->checkInternal(Lcom/miui/gallery/cloud/syncstate/SyncType;)I

    move-result v0

    .line 155
    .local v0, "result":I
    if-eqz v0, :cond_0

    .line 156
    iget-object v1, p0, Lcom/miui/gallery/cloud/SyncConditionManager$Checker;->TAG:Ljava/lang/String;

    const-string v2, "check result %d, sync type %s"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3, p1}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public checkIgnoreCancel(Lcom/miui/gallery/cloud/syncstate/SyncType;)I
    .locals 2
    .param p1, "syncType"    # Lcom/miui/gallery/cloud/syncstate/SyncType;

    .prologue
    .line 162
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/miui/gallery/cloud/SyncConditionManager$Checker;->TAG:Ljava/lang/String;

    const-string v1, "network not connected"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x2

    .line 166
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/gallery/cloud/SyncConditionManager$Checker;->checkInternal(Lcom/miui/gallery/cloud/syncstate/SyncType;)I

    move-result v0

    goto :goto_0
.end method

.method protected abstract checkInternal(Lcom/miui/gallery/cloud/syncstate/SyncType;)I
.end method

.method protected setCanceled(Z)V
    .locals 4
    .param p1, "canceled"    # Z

    .prologue
    .line 138
    if-eqz p1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/miui/gallery/cloud/SyncConditionManager$Checker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCanceled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    :cond_0
    iput-boolean p1, p0, Lcom/miui/gallery/cloud/SyncConditionManager$Checker;->mCanceled:Z

    .line 142
    return-void
.end method
