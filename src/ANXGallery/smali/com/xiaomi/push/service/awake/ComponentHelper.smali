.class public Lcom/xiaomi/push/service/awake/ComponentHelper;
.super Ljava/lang/Object;
.source "ComponentHelper.java"


# direct methods
.method public static checkActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 64
    const/4 v4, 0x0

    .line 66
    .local v4, "result":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 67
    .local v3, "pkgManager":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const/16 v5, 0x20

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 70
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    .line 71
    const/4 v4, 0x1

    .line 76
    .end local v1    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "pkgManager":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v4

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static checkProvider(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    .line 81
    const/4 v4, 0x0

    .line 83
    .local v4, "result":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 84
    .local v3, "pkgManager":Landroid/content/pm/PackageManager;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_1

    .line 85
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/pm/PackageManager;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    .line 87
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 88
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ProviderInfo;

    .line 89
    .local v1, "info":Landroid/content/pm/ProviderInfo;
    iget-boolean v6, v1, Landroid/content/pm/ProviderInfo;->enabled:Z

    if-eqz v6, :cond_0

    iget-boolean v6, v1, Landroid/content/pm/ProviderInfo;->exported:Z

    if-eqz v6, :cond_0

    iget-object v6, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    .line 90
    const/4 v4, 0x1

    goto :goto_0

    .line 95
    .end local v1    # "info":Landroid/content/pm/ProviderInfo;
    .end local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :cond_1
    const/4 v4, 0x1

    .line 101
    .end local v3    # "pkgManager":Landroid/content/pm/PackageManager;
    :cond_2
    :goto_1
    return v4

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static checkService(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetPackage"    # Ljava/lang/String;

    .prologue
    .line 24
    const/4 v2, 0x0

    .line 26
    .local v2, "result":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 27
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 28
    .local v4, "serviceInfos":[Landroid/content/pm/ServiceInfo;
    if-eqz v4, :cond_0

    .line 29
    array-length v6, v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v3, v4, v5

    .line 30
    .local v3, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-boolean v7, v3, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v7, :cond_1

    iget-boolean v7, v3, Landroid/content/pm/ServiceInfo;->enabled:Z

    if-eqz v7, :cond_1

    const-string v7, "com.xiaomi.mipush.sdk.PushMessageHandler"

    iget-object v8, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 31
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_1

    .line 33
    const/4 v2, 0x1

    .line 41
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v4    # "serviceInfos":[Landroid/content/pm/ServiceInfo;
    :cond_0
    :goto_1
    return v2

    .line 29
    .restart local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v3    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .restart local v4    # "serviceInfos":[Landroid/content/pm/ServiceInfo;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 38
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v4    # "serviceInfos":[Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static checkService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 46
    const/4 v4, 0x0

    .line 48
    .local v4, "result":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 49
    .local v3, "pkgManager":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const/16 v5, 0x20

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 52
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    .line 53
    const/4 v4, 0x1

    .line 59
    .end local v1    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "pkgManager":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v4

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
