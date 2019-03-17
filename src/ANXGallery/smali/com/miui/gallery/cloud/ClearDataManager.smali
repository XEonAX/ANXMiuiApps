.class public Lcom/miui/gallery/cloud/ClearDataManager;
.super Ljava/lang/Object;
.source "ClearDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/ClearDataManager$SingletonHolder;
    }
.end annotation


# instance fields
.field private mHasClearOnce:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/cloud/ClearDataManager;->mHasClearOnce:Z

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/cloud/ClearDataManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/cloud/ClearDataManager$1;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/miui/gallery/cloud/ClearDataManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/gallery/cloud/ClearDataManager;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/miui/gallery/cloud/ClearDataManager$SingletonHolder;->Instance:Lcom/miui/gallery/cloud/ClearDataManager;

    return-object v0
.end method


# virtual methods
.method public checkClear(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->getSyncShouldClearDataBase()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    iget-boolean v0, p0, Lcom/miui/gallery/cloud/ClearDataManager;->mHasClearOnce:Z

    if-nez v0, :cond_0

    .line 47
    invoke-static {p1}, Lcom/miui/gallery/util/SyncUtil;->requestSync(Landroid/content/Context;)V

    .line 49
    :cond_0
    const/4 v0, 0x1

    .line 51
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearDataBaseIfNeeded(Landroid/content/Context;Landroid/accounts/Account;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v4, 0x0

    .line 28
    iput-boolean v4, p0, Lcom/miui/gallery/cloud/ClearDataManager;->mHasClearOnce:Z

    .line 29
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->getSyncShouldClearDataBase()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    const-string v1, "ClearDataManager"

    const-string v2, "clear data start"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {p1, v4}, Lcom/miui/gallery/util/DeleteDataUtil;->delete(Landroid/content/Context;I)Z

    move-result v0

    .line 32
    .local v0, "result":Z
    const-string v1, "ClearDataManager"

    const-string v2, "clear data result %s"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    invoke-static {p1, p2}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->insertAccountToDB(Landroid/content/Context;Landroid/accounts/Account;)V

    .line 37
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/gallery/cloud/ClearDataManager;->mHasClearOnce:Z

    .line 39
    invoke-static {v4}, Lcom/miui/gallery/util/deprecated/Preference;->setSyncShouldClearDataBase(Z)V

    .line 40
    const-string v1, "ClearDataManager"

    const-string v2, "clear data end"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .end local v0    # "result":Z
    :cond_0
    return-void
.end method
