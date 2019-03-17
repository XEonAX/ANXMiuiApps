.class public Lcom/xiaomi/push/service/MIIDManager;
.super Ljava/lang/Object;
.source "MIIDManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/MIIDManager$MIIDUpdatedCallback;
    }
.end annotation


# static fields
.field private static volatile sInstance:Lcom/xiaomi/push/service/MIIDManager;


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mContext:Landroid/content/Context;

.field private mMIIDUpdatedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/push/service/MIIDManager$MIIDUpdatedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mMIIDUpdatedlistener:Landroid/accounts/OnAccountsUpdateListener;

.field private mObject:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/MIIDManager;->mObject:Ljava/lang/Object;

    .line 39
    iput-object p1, p0, Lcom/xiaomi/push/service/MIIDManager;->mContext:Landroid/content/Context;

    .line 40
    iget-object v0, p0, Lcom/xiaomi/push/service/MIIDManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/android/MIIDUtils;->checkGETACCOUNTPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/xiaomi/push/service/MIIDManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/service/MIIDManager;->mAccountManager:Landroid/accounts/AccountManager;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/MIIDManager;->mMIIDUpdatedCallbacks:Ljava/util/ArrayList;

    .line 44
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/push/service/MIIDManager;[Landroid/accounts/Account;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/push/service/MIIDManager;
    .param p1, "x1"    # [Landroid/accounts/Account;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/MIIDManager;->updateMIIDAccount([Landroid/accounts/Account;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaomi/push/service/MIIDManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/push/service/MIIDManager;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/xiaomi/push/service/MIIDManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private executeCallback(Ljava/lang/String;)V
    .locals 5
    .param p1, "miid"    # Ljava/lang/String;

    .prologue
    .line 144
    iget-object v3, p0, Lcom/xiaomi/push/service/MIIDManager;->mObject:Ljava/lang/Object;

    monitor-enter v3

    .line 145
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/push/service/MIIDManager;->mMIIDUpdatedCallbacks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xiaomi/push/service/MIIDManager;->mMIIDUpdatedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ge v2, v4, :cond_2

    .line 146
    :cond_0
    monitor-exit v3

    .line 153
    :cond_1
    return-void

    .line 148
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/xiaomi/push/service/MIIDManager;->mMIIDUpdatedCallbacks:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 149
    .local v1, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/push/service/MIIDManager$MIIDUpdatedCallback;>;"
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/MIIDManager$MIIDUpdatedCallback;

    .line 151
    .local v0, "callback":Lcom/xiaomi/push/service/MIIDManager$MIIDUpdatedCallback;
    iget-object v3, p0, Lcom/xiaomi/push/service/MIIDManager;->mContext:Landroid/content/Context;

    invoke-interface {v0, p1, v3}, Lcom/xiaomi/push/service/MIIDManager$MIIDUpdatedCallback;->onMIIDUpdate(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 149
    .end local v0    # "callback":Lcom/xiaomi/push/service/MIIDManager$MIIDUpdatedCallback;
    .end local v1    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/push/service/MIIDManager$MIIDUpdatedCallback;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/MIIDManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    sget-object v0, Lcom/xiaomi/push/service/MIIDManager;->sInstance:Lcom/xiaomi/push/service/MIIDManager;

    if-nez v0, :cond_1

    .line 48
    const-class v1, Lcom/xiaomi/push/service/MIIDManager;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Lcom/xiaomi/push/service/MIIDManager;->sInstance:Lcom/xiaomi/push/service/MIIDManager;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/xiaomi/push/service/MIIDManager;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/MIIDManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/push/service/MIIDManager;->sInstance:Lcom/xiaomi/push/service/MIIDManager;

    .line 52
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_1
    sget-object v0, Lcom/xiaomi/push/service/MIIDManager;->sInstance:Lcom/xiaomi/push/service/MIIDManager;

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getMIIDFromSystem()Ljava/lang/String;
    .locals 2

    .prologue
    .line 188
    iget-object v1, p0, Lcom/xiaomi/push/service/MIIDManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/android/MIIDUtils;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 189
    .local v0, "xmAccount":Landroid/accounts/Account;
    if-nez v0, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private initMIIDUpdateListener()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/xiaomi/push/service/MIIDManager;->mMIIDUpdatedlistener:Landroid/accounts/OnAccountsUpdateListener;

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 64
    :cond_0
    new-instance v0, Lcom/xiaomi/push/service/MIIDManager$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/MIIDManager$1;-><init>(Lcom/xiaomi/push/service/MIIDManager;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/MIIDManager;->mMIIDUpdatedlistener:Landroid/accounts/OnAccountsUpdateListener;

    goto :goto_0
.end method

.method private updateMIIDAccount([Landroid/accounts/Account;)V
    .locals 9
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .prologue
    const/4 v2, 0x0

    .line 78
    const/4 v3, 0x0

    .line 79
    .local v3, "miAccount":Landroid/accounts/Account;
    if-eqz p1, :cond_2

    array-length v5, p1

    if-lez v5, :cond_2

    .line 80
    array-length v6, p1

    move v5, v2

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v0, p1, v5

    .line 81
    .local v0, "account":Landroid/accounts/Account;
    if-eqz v0, :cond_3

    const-string v7, "com.xiaomi"

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 82
    move-object v3, v0

    .line 87
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_0
    if-eqz v3, :cond_1

    iget-object v5, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v2, 0x1

    .line 88
    .local v2, "hasNewMIID":Z
    :cond_1
    iget-object v5, p0, Lcom/xiaomi/push/service/MIIDManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/push/service/MIIDSPCacheHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/MIIDSPCacheHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/push/service/MIIDSPCacheHelper;->hasCachedMIID()Z

    move-result v1

    .line 90
    .local v1, "hasCachedMIID":Z
    if-eqz v2, :cond_4

    if-nez v1, :cond_4

    .line 92
    iget-object v5, p0, Lcom/xiaomi/push/service/MIIDManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/push/service/MIIDSPCacheHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/MIIDSPCacheHelper;

    move-result-object v5

    iget-object v6, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/xiaomi/push/service/MIIDSPCacheHelper;->updateCachedMIID(Ljava/lang/String;)V

    .line 93
    iget-object v5, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/xiaomi/push/service/MIIDManager;->executeCallback(Ljava/lang/String;)V

    .line 107
    .end local v1    # "hasCachedMIID":Z
    .end local v2    # "hasNewMIID":Z
    :cond_2
    :goto_1
    return-void

    .line 80
    .restart local v0    # "account":Landroid/accounts/Account;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 94
    .end local v0    # "account":Landroid/accounts/Account;
    .restart local v1    # "hasCachedMIID":Z
    .restart local v2    # "hasNewMIID":Z
    :cond_4
    if-nez v2, :cond_5

    if-eqz v1, :cond_5

    .line 96
    iget-object v5, p0, Lcom/xiaomi/push/service/MIIDManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/push/service/MIIDSPCacheHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/MIIDSPCacheHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/push/service/MIIDSPCacheHelper;->removeCachedMIID()V

    .line 97
    const-string v5, "0"

    invoke-direct {p0, v5}, Lcom/xiaomi/push/service/MIIDManager;->executeCallback(Ljava/lang/String;)V

    goto :goto_1

    .line 98
    :cond_5
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 100
    iget-object v5, p0, Lcom/xiaomi/push/service/MIIDManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/push/service/MIIDSPCacheHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/MIIDSPCacheHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/push/service/MIIDSPCacheHelper;->getCachedMIID()Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, "miid_cached":Ljava/lang/String;
    iget-object v5, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 102
    iget-object v5, p0, Lcom/xiaomi/push/service/MIIDManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/push/service/MIIDSPCacheHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/MIIDSPCacheHelper;

    move-result-object v5

    iget-object v6, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/xiaomi/push/service/MIIDSPCacheHelper;->updateCachedMIID(Ljava/lang/String;)V

    .line 103
    iget-object v5, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/xiaomi/push/service/MIIDManager;->executeCallback(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public addMIIDUpdateCallback(Lcom/xiaomi/push/service/MIIDManager$MIIDUpdatedCallback;)V
    .locals 4
    .param p1, "miidUpdateCallback"    # Lcom/xiaomi/push/service/MIIDManager$MIIDUpdatedCallback;

    .prologue
    .line 198
    iget-object v3, p0, Lcom/xiaomi/push/service/MIIDManager;->mObject:Ljava/lang/Object;

    monitor-enter v3

    .line 199
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/push/service/MIIDManager;->mMIIDUpdatedCallbacks:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 200
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/push/service/MIIDManager;->mMIIDUpdatedCallbacks:Ljava/util/ArrayList;

    .line 202
    :cond_0
    if-eqz p1, :cond_1

    .line 203
    iget-object v2, p0, Lcom/xiaomi/push/service/MIIDManager;->mMIIDUpdatedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 204
    .local v0, "callbacksSize":I
    iget-object v2, p0, Lcom/xiaomi/push/service/MIIDManager;->mMIIDUpdatedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    if-nez v0, :cond_1

    .line 206
    invoke-virtual {p0}, Lcom/xiaomi/push/service/MIIDManager;->startMIIDUpdateListener()Z

    move-result v1

    .line 207
    .local v1, "startListenerResult":Z
    if-nez v1, :cond_1

    .line 208
    const-string v2, "MIIDManager startMIIDUpdateListener failed cause lack of GET_ACCOUNTS permission"

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 212
    .end local v0    # "callbacksSize":I
    .end local v1    # "startListenerResult":Z
    :cond_1
    monitor-exit v3

    .line 213
    return-void

    .line 212
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getMIID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/xiaomi/push/service/MIIDManager;->getMIIDFromSystem()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "miid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/xiaomi/push/service/MIIDManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/service/MIIDSPCacheHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/MIIDSPCacheHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/MIIDSPCacheHelper;->updateCachedMIID(Ljava/lang/String;)V

    .line 180
    .end local v0    # "miid":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 179
    .restart local v0    # "miid":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/push/service/MIIDManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/service/MIIDSPCacheHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/MIIDSPCacheHelper;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/service/MIIDSPCacheHelper;->updateCachedMIID(Ljava/lang/String;)V

    .line 180
    const-string v0, "0"

    goto :goto_0
.end method

.method public recycleMIIDUpdateListener()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/xiaomi/push/service/MIIDManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/android/MIIDUtils;->checkGETACCOUNTPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/service/MIIDManager;->mMIIDUpdatedlistener:Landroid/accounts/OnAccountsUpdateListener;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/xiaomi/push/service/MIIDManager;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/xiaomi/push/service/MIIDManager;->mMIIDUpdatedlistener:Landroid/accounts/OnAccountsUpdateListener;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    goto :goto_0
.end method

.method public removeMIIDUpdateCallback(Lcom/xiaomi/push/service/MIIDManager$MIIDUpdatedCallback;)V
    .locals 2
    .param p1, "miidUpdatedCallback"    # Lcom/xiaomi/push/service/MIIDManager$MIIDUpdatedCallback;

    .prologue
    .line 221
    iget-object v1, p0, Lcom/xiaomi/push/service/MIIDManager;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/MIIDManager;->mMIIDUpdatedCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 223
    monitor-exit v1

    .line 232
    :goto_0
    return-void

    .line 225
    :cond_0
    if-eqz p1, :cond_1

    .line 226
    iget-object v0, p0, Lcom/xiaomi/push/service/MIIDManager;->mMIIDUpdatedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 227
    iget-object v0, p0, Lcom/xiaomi/push/service/MIIDManager;->mMIIDUpdatedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/xiaomi/push/service/MIIDManager;->recycleMIIDUpdateListener()V

    .line 231
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startMIIDUpdateListener()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 112
    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/push/service/MIIDManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/android/MIIDUtils;->checkGETACCOUNTPermission(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 122
    :goto_0
    return v1

    .line 115
    :cond_0
    iget-object v3, p0, Lcom/xiaomi/push/service/MIIDManager;->mMIIDUpdatedlistener:Landroid/accounts/OnAccountsUpdateListener;

    if-nez v3, :cond_1

    .line 116
    invoke-direct {p0}, Lcom/xiaomi/push/service/MIIDManager;->initMIIDUpdateListener()V

    .line 118
    :cond_1
    iget-object v3, p0, Lcom/xiaomi/push/service/MIIDManager;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v4, p0, Lcom/xiaomi/push/service/MIIDManager;->mMIIDUpdatedlistener:Landroid/accounts/OnAccountsUpdateListener;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 119
    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
