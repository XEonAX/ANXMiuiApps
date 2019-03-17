.class public Lcom/xiaomi/mipush/sdk/ManifestChecker;
.super Ljava/lang/Object;
.source "ManifestChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mipush/sdk/ManifestChecker$IllegalManifestException;,
        Lcom/xiaomi/mipush/sdk/ManifestChecker$ServiceCheckInfo;
    }
.end annotation


# direct methods
.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/ManifestChecker;->checkReceivers(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 27
    invoke-static {p0, p1}, Lcom/xiaomi/mipush/sdk/ManifestChecker;->checkServices(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 27
    invoke-static {p0, p1}, Lcom/xiaomi/mipush/sdk/ManifestChecker;->checkPermissions(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method public static asynCheckManifest(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaomi/mipush/sdk/ManifestChecker$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/mipush/sdk/ManifestChecker$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 52
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 53
    return-void
.end method

.method private static checkHmsReceiver(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 305
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 306
    .local v3, "pkgManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 309
    .local v4, "pkgName":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 310
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const/16 v9, 0x4000

    invoke-virtual {v3, v1, v9}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 312
    .local v6, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    .line 313
    .local v2, "isHave":Z
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 314
    .local v5, "r":Landroid/content/pm/ResolveInfo;
    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 315
    .local v0, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_2

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 316
    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v2, v7

    .line 317
    :goto_0
    if-eqz v2, :cond_0

    .line 321
    .end local v0    # "info":Landroid/content/pm/ActivityInfo;
    .end local v5    # "r":Landroid/content/pm/ResolveInfo;
    :cond_1
    if-nez v2, :cond_3

    .line 322
    new-instance v9, Lcom/xiaomi/mipush/sdk/ManifestChecker$IllegalManifestException;

    const-string v10, "<receiver android:name=\"%1$s\" .../> is missing or disabled in AndroidManifest."

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p2, v7, v8

    invoke-static {v10, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Lcom/xiaomi/mipush/sdk/ManifestChecker$IllegalManifestException;-><init>(Ljava/lang/String;)V

    throw v9

    .restart local v0    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v5    # "r":Landroid/content/pm/ResolveInfo;
    :cond_2
    move v2, v8

    .line 316
    goto :goto_0

    .line 325
    .end local v0    # "info":Landroid/content/pm/ActivityInfo;
    .end local v5    # "r":Landroid/content/pm/ResolveInfo;
    :cond_3
    return-void
.end method

.method private static checkPermissions(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 57
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 59
    .local v3, "requiredPermsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ".permission.MIPUSH_RECEIVE"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, "selfDefinedPerm":Ljava/lang/String;
    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/String;

    const-string v7, "android.permission.INTERNET"

    aput-object v7, v5, v6

    const-string v7, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v7, v5, v10

    const/4 v7, 0x2

    aput-object v4, v5, v7

    const/4 v7, 0x3

    const-string v8, "android.permission.ACCESS_WIFI_STATE"

    aput-object v8, v5, v7

    const/4 v7, 0x4

    const-string v8, "android.permission.READ_PHONE_STATE"

    aput-object v8, v5, v7

    const/4 v7, 0x5

    const-string v8, "android.permission.GET_TASKS"

    aput-object v8, v5, v7

    const/4 v7, 0x6

    const-string v8, "android.permission.VIBRATE"

    aput-object v8, v5, v7

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "isDefined":Z
    iget-object v5, p1, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    if-eqz v5, :cond_0

    .line 70
    iget-object v7, p1, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    array-length v8, v7

    move v5, v6

    :goto_0
    if-ge v5, v8, :cond_0

    aget-object v2, v7, v5

    .line 71
    .local v2, "pinfo":Landroid/content/pm/PermissionInfo;
    iget-object v9, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 72
    const/4 v0, 0x1

    .line 77
    .end local v2    # "pinfo":Landroid/content/pm/PermissionInfo;
    :cond_0
    if-nez v0, :cond_2

    .line 78
    new-instance v5, Lcom/xiaomi/mipush/sdk/ManifestChecker$IllegalManifestException;

    const-string v7, "<permission android:name=\"%1$s\" .../> is undefined in AndroidManifest."

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v4, v8, v6

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/xiaomi/mipush/sdk/ManifestChecker$IllegalManifestException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 70
    .restart local v2    # "pinfo":Landroid/content/pm/PermissionInfo;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 82
    .end local v2    # "pinfo":Landroid/content/pm/PermissionInfo;
    :cond_2
    iget-object v5, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 83
    iget-object v7, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v8, v7

    move v5, v6

    :goto_1
    if-ge v5, v8, :cond_3

    aget-object v1, v7, v5

    .line 84
    .local v1, "permName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 85
    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 87
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 92
    .end local v1    # "permName":Ljava/lang/String;
    :cond_3
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 93
    new-instance v5, Lcom/xiaomi/mipush/sdk/ManifestChecker$IllegalManifestException;

    const-string v7, "<uses-permission android:name=\"%1$s\"/> is missing in AndroidManifest."

    new-array v8, v10, [Ljava/lang/Object;

    .line 94
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, v6

    .line 93
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/xiaomi/mipush/sdk/ManifestChecker$IllegalManifestException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 83
    .restart local v1    # "permName":Ljava/lang/String;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 96
    .end local v1    # "permName":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private static checkReceiverInfo(Landroid/content/pm/ActivityInfo;[Ljava/lang/Boolean;)V
    .locals 6
    .param p0, "info"    # Landroid/content/pm/ActivityInfo;
    .param p1, "properties"    # [Ljava/lang/Boolean;

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 229
    aget-object v0, p1, v4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-boolean v1, p0, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eq v0, v1, :cond_0

    .line 230
    new-instance v0, Lcom/xiaomi/mipush/sdk/ManifestChecker$IllegalManifestException;

    const-string v1, "<receiver android:name=\"%1$s\" .../> in AndroidManifest had the wrong enabled attribute, which should be android:enabled=%2$b."

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    aput-object v3, v2, v4

    aget-object v3, p1, v4

    aput-object v3, v2, v5

    .line 231
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/mipush/sdk/ManifestChecker$IllegalManifestException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    aget-object v0, p1, v5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-boolean v1, p0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eq v0, v1, :cond_1

    .line 237
    new-instance v0, Lcom/xiaomi/mipush/sdk/ManifestChecker$IllegalManifestException;

    const-string v1, "<receiver android:name=\"%1$s\" .../> in AndroidManifest had the wrong exported attribute, which should be android:exported=%2$b."

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    aput-object v3, v2, v4

    aget-object v3, p1, v5

    aput-object v3, v2, v5

    .line 238
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/mipush/sdk/ManifestChecker$IllegalManifestException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_1
    return-void
.end method

.method private static checkReceivers(Landroid/content/Context;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 247
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 248
    .local v6, "pkgManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 254
    .local v7, "pkgname":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    sget-object v9, Lcom/xiaomi/push/service/PushConstants;->ACTION_PING_TIMER:Ljava/lang/String;

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    :try_start_0
    const-string v9, "com.xiaomi.push.service.receivers.PingReceiver"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-static {v6, v4, v9}, Lcom/xiaomi/mipush/sdk/ManifestChecker;->findReceiverInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/Class;)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 258
    .local v2, "info":Landroid/content/pm/ActivityInfo;
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->shouldUseMIUIPush(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 259
    if-nez v2, :cond_3

    .line 260
    new-instance v9, Lcom/xiaomi/mipush/sdk/ManifestChecker$IllegalManifestException;

    const-string v10, "<receiver android:name=\"%1$s\" .../> is missing or disabled in AndroidManifest."

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "com.xiaomi.push.service.receivers.PingReceiver"

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/xiaomi/mipush/sdk/ManifestChecker$IllegalManifestException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v2    # "info":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v1

    .line 270
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 276
    .end local v1    # "ex":Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_0
    new-instance v4, Landroid/content/Intent;

    .end local v4    # "intent":Landroid/content/Intent;
    const-string v9, "com.xiaomi.mipush.RECEIVE_MESSAGE"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {v4, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const/16 v9, 0x4000

    invoke-virtual {v6, v4, v9}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 279
    .local v3, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x0

    .line 280
    .local v5, "isFound":Z
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 281
    .local v8, "r":Landroid/content/pm/ResolveInfo;
    iget-object v2, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 283
    .restart local v2    # "info":Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_5

    :try_start_1
    iget-object v10, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    const-class v10, Lcom/xiaomi/mipush/sdk/PushMessageReceiver;

    iget-object v11, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 284
    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-boolean v10, v2, Landroid/content/pm/ActivityInfo;->enabled:Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v10, :cond_5

    const/4 v5, 0x1

    .line 285
    :goto_2
    if-eqz v5, :cond_1

    .line 292
    .end local v2    # "info":Landroid/content/pm/ActivityInfo;
    .end local v8    # "r":Landroid/content/pm/ResolveInfo;
    :cond_2
    if-nez v5, :cond_6

    .line 293
    new-instance v9, Lcom/xiaomi/mipush/sdk/ManifestChecker$IllegalManifestException;

    const-string v10, "Receiver: none of the subclasses of PushMessageReceiver is enabled or defined."

    invoke-direct {v9, v10}, Lcom/xiaomi/mipush/sdk/ManifestChecker$IllegalManifestException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 263
    .end local v3    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "isFound":Z
    .restart local v2    # "info":Landroid/content/pm/ActivityInfo;
    :cond_3
    const/4 v9, 0x2

    :try_start_2
    new-array v9, v9, [Ljava/lang/Boolean;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v2, v9}, Lcom/xiaomi/mipush/sdk/ManifestChecker;->checkReceiverInfo(Landroid/content/pm/ActivityInfo;[Ljava/lang/Boolean;)V

    goto :goto_0

    .line 265
    :cond_4
    if-eqz v2, :cond_0

    .line 266
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Boolean;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v2, v9}, Lcom/xiaomi/mipush/sdk/ManifestChecker;->checkReceiverInfo(Landroid/content/pm/ActivityInfo;[Ljava/lang/Boolean;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 284
    .restart local v3    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5    # "isFound":Z
    .restart local v8    # "r":Landroid/content/pm/ResolveInfo;
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 288
    :catch_1
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 298
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .end local v2    # "info":Landroid/content/pm/ActivityInfo;
    .end local v8    # "r":Landroid/content/pm/ResolveInfo;
    :cond_6
    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiPushClient;->getOpenHmsPush()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 299
    const-string v9, "com.huawei.android.push.intent.RECEIVE"

    const-string v10, "com.xiaomi.assemble.control.HmsPushReceiver"

    invoke-static {p0, v9, v10}, Lcom/xiaomi/mipush/sdk/ManifestChecker;->checkHmsReceiver(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v9, "com.huawei.intent.action.PUSH"

    const-string v10, "com.huawei.hms.support.api.push.PushEventReceiver"

    invoke-static {p0, v9, v10}, Lcom/xiaomi/mipush/sdk/ManifestChecker;->checkHmsReceiver(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :cond_7
    return-void
.end method

.method private static checkServices(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 106
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 108
    .local v1, "configServiceProcessMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 109
    .local v6, "requiredServicesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/xiaomi/mipush/sdk/ManifestChecker$ServiceCheckInfo;>;"
    const-class v7, Lcom/xiaomi/mipush/sdk/PushMessageHandler;

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/xiaomi/mipush/sdk/ManifestChecker$ServiceCheckInfo;

    const-class v9, Lcom/xiaomi/mipush/sdk/PushMessageHandler;

    .line 110
    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x1

    const-string v12, ""

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/xiaomi/mipush/sdk/ManifestChecker$ServiceCheckInfo;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 109
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-class v7, Lcom/xiaomi/mipush/sdk/MessageHandleService;

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/xiaomi/mipush/sdk/ManifestChecker$ServiceCheckInfo;

    const-class v9, Lcom/xiaomi/mipush/sdk/MessageHandleService;

    .line 112
    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string v12, ""

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/xiaomi/mipush/sdk/ManifestChecker$ServiceCheckInfo;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 111
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->shouldUseMIUIPush(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "com.xiaomi.push.service.XMJobService"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "com.xiaomi.push.service.XMPushService"

    aput-object v9, v7, v8

    invoke-static {p1, v7}, Lcom/xiaomi/mipush/sdk/ManifestChecker;->containAnyService(Landroid/content/pm/PackageInfo;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 118
    :cond_0
    const-string v7, "com.xiaomi.push.service.XMJobService"

    new-instance v8, Lcom/xiaomi/mipush/sdk/ManifestChecker$ServiceCheckInfo;

    const-string v9, "com.xiaomi.push.service.XMJobService"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string v12, "android.permission.BIND_JOB_SERVICE"

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/xiaomi/mipush/sdk/ManifestChecker$ServiceCheckInfo;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v7, "com.xiaomi.push.service.XMPushService"

    new-instance v8, Lcom/xiaomi/mipush/sdk/ManifestChecker$ServiceCheckInfo;

    const-string v9, "com.xiaomi.push.service.XMPushService"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string v12, ""

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/xiaomi/mipush/sdk/ManifestChecker$ServiceCheckInfo;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_1
    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiPushClient;->getOpenFCMPush()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 125
    const-string v7, "com.xiaomi.assemble.control.MiFireBaseInstanceIdService"

    new-instance v8, Lcom/xiaomi/mipush/sdk/ManifestChecker$ServiceCheckInfo;

    const-string v9, "com.xiaomi.assemble.control.MiFireBaseInstanceIdService"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string v12, ""

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/xiaomi/mipush/sdk/ManifestChecker$ServiceCheckInfo;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v7, "com.xiaomi.assemble.control.MiFirebaseMessagingService"

    new-instance v8, Lcom/xiaomi/mipush/sdk/ManifestChecker$ServiceCheckInfo;

    const-string v9, "com.xiaomi.assemble.control.MiFirebaseMessagingService"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string v12, ""

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/xiaomi/mipush/sdk/ManifestChecker$ServiceCheckInfo;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_2
    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiPushClient;->getOpenOPPOPush()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 132
    const-string v7, "com.xiaomi.assemble.control.COSPushMessageService"

    new-instance v8, Lcom/xiaomi/mipush/sdk/ManifestChecker$ServiceCheckInfo;

    const-string v9, "com.xiaomi.assemble.control.COSPushMessageService"

    const/4 v10, 0x1

    const/4 v11, 0x1

    const-string v12, "com.coloros.mcs.permission.SEND_MCS_MESSAGE"

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/xiaomi/mipush/sdk/ManifestChecker$ServiceCheckInfo;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_3
    iget-object v7, p1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v7, :cond_7

    .line 137
    iget-object v8, p1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v9, v8

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v9, :cond_7

    aget-object v4, v8, v7

    .line 138
    .local v4, "info":Landroid/content/pm/ServiceInfo;
    iget-object v10, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-interface {v6, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 139
    iget-object v10, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-interface {v6, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mipush/sdk/ManifestChecker$ServiceCheckInfo;

    .line 140
    .local v0, "checkInfo":Lcom/xiaomi/mipush/sdk/ManifestChecker$ServiceCheckInfo;
    iget-boolean v2, v0, Lcom/xiaomi/mipush/sdk/ManifestChecker$ServiceCheckInfo;->enabled:Z

    .line 141
    .local v2, "enabled":Z
    iget-boolean v3, v0, Lcom/xiaomi/mipush/sdk/ManifestChecker$ServiceCheckInfo;->exported:Z

    .line 142
    .local v3, "exported":Z
    iget-object v5, v0, Lcom/xiaomi/mipush/sdk/ManifestChecker$ServiceCheckInfo;->permission:Ljava/lang/String;

    .line 143
    .local v5, "permission":Ljava/lang/String;
    iget-boolean v10, v4, Landroid/content/pm/ServiceInfo;->enabled:Z

    if-eq v2, v10, :cond_4

    .line 144
    new-instance v7, Lcom/xiaomi/mipush/sdk/ManifestChecker$IllegalManifestException;

    const-string v8, "<service android:name=\"%1$s\" .../> in AndroidManifest had the wrong enabled attribute, which should be android:enabled=%2$b."

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 148
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    .line 145
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/xiaomi/mipush/sdk/ManifestChecker$IllegalManifestException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 150
    :cond_4
    iget-boolean v10, v4, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eq v3, v10, :cond_5

    .line 151
    new-instance v7, Lcom/xiaomi/mipush/sdk/ManifestChecker$IllegalManifestException;

    const-string v8, "<service android:name=\"%1$s\" .../> in AndroidManifest had the wrong exported attribute, which should be android:exported=%2$b."

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 155
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    .line 152
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/xiaomi/mipush/sdk/ManifestChecker$IllegalManifestException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 157
    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    iget-object v10, v4, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-static {v5, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 158
    new-instance v7, Lcom/xiaomi/mipush/sdk/ManifestChecker$IllegalManifestException;

    const-string v8, "<service android:name=\"%1$s\" .../> in AndroidManifest had the wrong permission attribute, which should be android:permission=\"%2$s\"."

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v5, v9, v10

    .line 159
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/xiaomi/mipush/sdk/ManifestChecker$IllegalManifestException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 165
    :cond_6
    iget-object v10, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v11, v4, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 171
    .end local v0    # "checkInfo":Lcom/xiaomi/mipush/sdk/ManifestChecker$ServiceCheckInfo;
    .end local v2    # "enabled":Z
    .end local v3    # "exported":Z
    .end local v4    # "info":Landroid/content/pm/ServiceInfo;
    .end local v5    # "permission":Ljava/lang/String;
    :cond_7
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    .line 172
    new-instance v7, Lcom/xiaomi/mipush/sdk/ManifestChecker$IllegalManifestException;

    const-string v8, "<service android:name=\"%1$s\" .../> is missing or disabled in AndroidManifest."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 173
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    .line 174
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v10

    .line 172
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/xiaomi/mipush/sdk/ManifestChecker$IllegalManifestException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 137
    .restart local v4    # "info":Landroid/content/pm/ServiceInfo;
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 177
    .end local v4    # "info":Landroid/content/pm/ServiceInfo;
    :cond_9
    const-class v7, Lcom/xiaomi/mipush/sdk/PushMessageHandler;

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    const-class v8, Lcom/xiaomi/mipush/sdk/MessageHandleService;

    .line 178
    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    .line 177
    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 179
    new-instance v7, Lcom/xiaomi/mipush/sdk/ManifestChecker$IllegalManifestException;

    const-string v8, "\"%1$s\" and \"%2$s\" must be running in the same process."

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-class v11, Lcom/xiaomi/mipush/sdk/PushMessageHandler;

    .line 181
    invoke-virtual {v11}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Lcom/xiaomi/mipush/sdk/MessageHandleService;

    .line 182
    invoke-virtual {v11}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 179
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/xiaomi/mipush/sdk/ManifestChecker$IllegalManifestException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 184
    :cond_a
    const-string v7, "com.xiaomi.push.service.XMJobService"

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, "com.xiaomi.push.service.XMPushService"

    .line 185
    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, "com.xiaomi.push.service.XMJobService"

    .line 186
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    const-string v8, "com.xiaomi.push.service.XMPushService"

    .line 187
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    .line 186
    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 188
    new-instance v7, Lcom/xiaomi/mipush/sdk/ManifestChecker$IllegalManifestException;

    const-string v8, "\"%1$s\" and \"%2$s\" must be running in the same process."

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "com.xiaomi.push.service.XMJobService"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "com.xiaomi.push.service.XMPushService"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/xiaomi/mipush/sdk/ManifestChecker$IllegalManifestException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 194
    :cond_b
    return-void
.end method

.method private static containAnyService(Landroid/content/pm/PackageInfo;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "pkgInfo"    # Landroid/content/pm/PackageInfo;
    .param p1, "serviceNames"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 197
    iget-object v3, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 198
    .local v0, "info":Landroid/content/pm/ServiceInfo;
    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/xiaomi/mipush/sdk/ManifestChecker;->containString([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 199
    const/4 v1, 0x1

    .line 202
    .end local v0    # "info":Landroid/content/pm/ServiceInfo;
    :cond_0
    return v1

    .line 197
    .restart local v0    # "info":Landroid/content/pm/ServiceInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static containString([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "array"    # [Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 206
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return v1

    .line 209
    :cond_1
    array-length v3, p0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 210
    .local v0, "item":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 211
    const/4 v1, 0x1

    goto :goto_0

    .line 209
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static findReceiverInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/Class;)Landroid/content/pm/ActivityInfo;
    .locals 6
    .param p0, "manager"    # Landroid/content/pm/PackageManager;
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/content/pm/ActivityInfo;"
        }
    .end annotation

    .prologue
    .line 218
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v3, 0x4000

    invoke-virtual {p0, p1, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 219
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 220
    .local v2, "r":Landroid/content/pm/ResolveInfo;
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 221
    .local v0, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 225
    .end local v0    # "info":Landroid/content/pm/ActivityInfo;
    .end local v2    # "r":Landroid/content/pm/ResolveInfo;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
