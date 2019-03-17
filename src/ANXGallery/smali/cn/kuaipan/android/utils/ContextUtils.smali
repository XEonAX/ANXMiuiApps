.class public Lcn/kuaipan/android/utils/ContextUtils;
.super Ljava/lang/Object;
.source "ContextUtils.java"


# static fields
.field private static volatile sMyContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 73
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 75
    .local v4, "result":Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 76
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v4

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "ContextUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception when retrieving package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 7

    .prologue
    .line 25
    sget-object v2, Lcn/kuaipan/android/utils/ContextUtils;->sMyContext:Landroid/content/Context;

    .line 26
    .local v2, "result":Landroid/content/Context;
    if-nez v2, :cond_2

    .line 27
    const-class v4, Lcn/kuaipan/android/utils/ContextUtils;

    monitor-enter v4

    .line 28
    :try_start_0
    sget-object v2, Lcn/kuaipan/android/utils/ContextUtils;->sMyContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    if-nez v2, :cond_1

    .line 31
    :try_start_1
    const-string v3, "android.app.ActivityThread"

    const-string v5, "currentActivityThread"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcn/kuaipan/android/utils/JavaCalls;->callStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 33
    .local v1, "obj":Ljava/lang/Object;
    const-string v3, "getApplication"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v3, v5}, Lcn/kuaipan/android/utils/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/content/Context;

    move-object v2, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .end local v1    # "obj":Ljava/lang/Object;
    :goto_0
    if-nez v2, :cond_0

    .line 38
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "My Application havn\'t be call onCreate by Framework."

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 43
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 41
    :cond_0
    :try_start_3
    sput-object v2, Lcn/kuaipan/android/utils/ContextUtils;->sMyContext:Landroid/content/Context;

    .line 43
    :cond_1
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 46
    :cond_2
    return-object v2

    .line 34
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static getFrameworkVersion()Ljava/lang/String;
    .locals 9

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v0, "buffer":Ljava/lang/StringBuilder;
    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 103
    .local v6, "version":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 104
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :goto_0
    const-string v7, "; "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    sget-object v4, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    .line 111
    .local v4, "locale":Ljava/util/Locale;
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "language":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 113
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "country":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 116
    const-string v7, "-"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .end local v1    # "country":Ljava/lang/String;
    :cond_0
    :goto_1
    const-string v7, "REL"

    sget-object v8, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 125
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 126
    .local v5, "model":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 127
    const-string v7, "; "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .end local v5    # "model":Ljava/lang/String;
    :cond_1
    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 132
    .local v2, "id":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 133
    const-string v7, " Build/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 107
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "language":Ljava/lang/String;
    .end local v4    # "locale":Ljava/util/Locale;
    :cond_3
    const-string v7, "1.0"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 121
    .restart local v3    # "language":Ljava/lang/String;
    .restart local v4    # "locale":Ljava/util/Locale;
    :cond_4
    const-string v7, "en"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .param p0, "myContext"    # Landroid/content/Context;

    .prologue
    .line 19
    if-eqz p0, :cond_0

    .line 20
    sput-object p0, Lcn/kuaipan/android/utils/ContextUtils;->sMyContext:Landroid/content/Context;

    .line 22
    :cond_0
    return-void
.end method
