.class public Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;
.super Ljava/lang/Object;
.source "MiCloudResolver.java"


# direct methods
.method private static assertAccount(Landroid/accounts/Account;)V
    .locals 2
    .param p0, "account"    # Landroid/accounts/Account;

    .prologue
    .line 228
    if-eqz p0, :cond_0

    const-string v0, "com.xiaomi"

    iget-object v1, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal account"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_1
    return-void
.end method

.method private static assertAuthority(Ljava/lang/String;)V
    .locals 4
    .param p0, "authority"    # Ljava/lang/String;

    .prologue
    .line 234
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "illegal authority: empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    :cond_0
    invoke-static {}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->getAuthorityList()Ljava/util/List;

    move-result-object v0

    .line 238
    .local v0, "authorityList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 239
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal authority: not registered authority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 241
    :cond_1
    return-void
.end method

.method private static assertContext(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 222
    if-nez p0, :cond_0

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    return-void
.end method

.method private static assertTime(J)V
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 244
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 245
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_0
    return-void
.end method

.method public static cancelSync(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertContext(Landroid/content/Context;)V

    .line 67
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertAccount(Landroid/accounts/Account;)V

    .line 68
    invoke-static {p2}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertAuthority(Ljava/lang/String;)V

    .line 69
    const-string v0, "MiCloudResolver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelSync: authority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {p1, p2}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 74
    invoke-static {p0, p2}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->sendCancelCommand(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public static getAuthorityList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v0, "authorityList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v2

    .line 253
    .local v2, "syncAdapters":[Landroid/content/SyncAdapterType;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v2, v3

    .line 254
    .local v1, "sa":Landroid/content/SyncAdapterType;
    const-string v5, "com.xiaomi"

    iget-object v6, v1, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 255
    iget-object v5, v1, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 258
    .end local v1    # "sa":Landroid/content/SyncAdapterType;
    :cond_1
    return-object v0
.end method

.method public static getResumeTime(Landroid/content/Context;Ljava/lang/String;)J
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertContext(Landroid/content/Context;)V

    .line 107
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertAuthority(Ljava/lang/String;)V

    .line 108
    const-string v1, "MiCloudResolver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getResumeTime: authority: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils;->isPauseExceptAuthority(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 111
    .local v0, "isPauseExcept":Z
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils;->loadResumeTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    .line 112
    .local v4, "time":J
    if-eqz v0, :cond_0

    .line 117
    .end local v4    # "time":J
    :goto_0
    return-wide v4

    .line 115
    .restart local v4    # "time":J
    :cond_0
    const-string v1, "_all"

    invoke-static {p0, v1}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils;->loadResumeTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    .line 116
    .local v2, "resumeTime":J
    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    move-wide v2, v4

    :cond_1
    move-wide v4, v2

    .line 117
    goto :goto_0
.end method

.method public static isSyncPausing(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;

    .prologue
    .line 214
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertContext(Landroid/content/Context;)V

    .line 215
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertAccount(Landroid/accounts/Account;)V

    .line 216
    invoke-static {p2}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertAuthority(Ljava/lang/String;)V

    .line 217
    const-string v0, "MiCloudResolver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSyncPausing: authority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p2}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->getResumeTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static pauseSync(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "time"    # J

    .prologue
    .line 78
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertContext(Landroid/content/Context;)V

    .line 79
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertAccount(Landroid/accounts/Account;)V

    .line 80
    invoke-static {p2}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertAuthority(Ljava/lang/String;)V

    .line 81
    invoke-static {p3, p4}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertTime(J)V

    .line 82
    const-string v0, "MiCloudResolver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseSync: authority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {p0, p1, p2}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->cancelSync(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 86
    invoke-static {p0, p2, p3, p4}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils;->savePauseTime(Landroid/content/Context;Ljava/lang/String;J)V

    .line 88
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->tryToStartResumeService(Landroid/content/Context;)V

    .line 89
    return-void
.end method

.method public static requestSync(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertContext(Landroid/content/Context;)V

    .line 30
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertAccount(Landroid/accounts/Account;)V

    .line 31
    invoke-static {p2}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertAuthority(Ljava/lang/String;)V

    .line 32
    const-string v0, "MiCloudResolver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSync: authority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-static {p0, p1, p2}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->isSyncPausing(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const-string v0, "MiCloudResolver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSync: authority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is paused. request sync fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1, p2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 39
    return-void
.end method

.method public static resumeSync(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertContext(Landroid/content/Context;)V

    .line 93
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertAccount(Landroid/accounts/Account;)V

    .line 94
    invoke-static {p2}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertAuthority(Ljava/lang/String;)V

    .line 95
    const-string v0, "MiCloudResolver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeSync: authority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {p0, p2}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils;->insertPauseExceptAuthority(Landroid/content/Context;Ljava/lang/String;)V

    .line 98
    const-wide/16 v0, 0x0

    invoke-static {p0, p2, v0, v1}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils;->savePauseTime(Landroid/content/Context;Ljava/lang/String;J)V

    .line 100
    invoke-static {p0, p1, p2}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->requestSync(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 102
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->tryToStartResumeService(Landroid/content/Context;)V

    .line 103
    return-void
.end method

.method private static sendCancelCommand(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    .line 271
    const-string/jumbo v0, "value_command_cancel_sync"

    invoke-static {p0, p1, v0}, Lcom/xiaomi/micloudsdk/sync/SyncCommandServiceBase;->sendCommandService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method private static tryToStartResumeService(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 262
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.action.SYNC_RESUME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.miui.cloudservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    const-string v1, "extra_operation"

    const-string v2, "alarm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 266
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 268
    :cond_0
    return-void
.end method
