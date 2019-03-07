.class public Lcom/xiaomi/analytics/internal/v1/DexAnalytics;
.super Ljava/lang/Object;
.source "DexAnalytics.java"

# interfaces
.implements Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;


# static fields
.field private static final ANALYTICS_CLASS_NAME:Ljava/lang/String; = "com.miui.analytics.Analytics"

.field private static final TAG:Ljava/lang/String; = "DexAnalytics"


# instance fields
.field private mClassLoader:Ljava/lang/ClassLoader;

.field private mContext:Landroid/content/Context;

.field private mDexPath:Ljava/lang/String;

.field private volatile mInitialized:Z

.field private mLibPath:Ljava/lang/String;

.field private mVersion:I

.field private mVersionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dexPath"    # Ljava/lang/String;
    .param p3, "libPath"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v1, ""

    iput-object v1, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mVersionName:Ljava/lang/String;

    .line 27
    invoke-static {p1}, Lcom/xiaomi/analytics/internal/util/AndroidUtils;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mDexPath:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mLibPath:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 31
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v1, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mVersion:I

    .line 32
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mVersionName:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private initAnalytics()V
    .locals 6

    .prologue
    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mClassLoader:Ljava/lang/ClassLoader;

    const-string v2, "com.miui.analytics.Analytics"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "initialize"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 38
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mContext:Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mVersion:I

    .line 39
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mVersionName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "DexAnalytics"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "initAnalytics exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public deleteAllEvents(Ljava/lang/String;)V
    .locals 6
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 161
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->init()V

    .line 162
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mClassLoader:Ljava/lang/ClassLoader;

    const-string v2, "com.miui.analytics.Analytics"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "deleteAllEvents"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 163
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 164
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "DexAnalytics"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deleteAllEvents exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getClientExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "configKey"    # Ljava/lang/String;

    .prologue
    .line 83
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->init()V

    .line 84
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mClassLoader:Ljava/lang/ClassLoader;

    const-string v2, "com.miui.analytics.Analytics"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getClientExtra"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 85
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-object v1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "DexAnalytics"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getClientExtra exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    const-string v1, ""

    goto :goto_0
.end method

.method public getVersion()Lcom/xiaomi/analytics/internal/Version;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lcom/xiaomi/analytics/internal/Version;

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mVersionName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/xiaomi/analytics/internal/Version;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public init()V
    .locals 6

    .prologue
    .line 55
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mInitialized:Z

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Ldalvik/system/DexClassLoader;

    iget-object v2, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mDexPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mContext:Landroid/content/Context;

    const-string v4, "dex"

    const/4 v5, 0x0

    .line 59
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mLibPath:Ljava/lang/String;

    .line 65
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v1, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mClassLoader:Ljava/lang/ClassLoader;

    .line 66
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->initAnalytics()V

    .line 67
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mInitialized:Z

    .line 68
    const-string v1, "DexAnalytics"

    const-string v2, "initialized"

    invoke-static {v1, v2}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DexAnalytics"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "init e"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isPolicyReady(Ljava/lang/String;)Z
    .locals 7
    .param p1, "configKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->init()V

    .line 97
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mClassLoader:Ljava/lang/ClassLoader;

    const-string v3, "com.miui.analytics.Analytics"

    invoke-virtual {v1, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "isPolicyReady"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    .line 98
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mContext:Landroid/content/Context;

    .line 99
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 97
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 103
    :goto_0
    return v1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "DexAnalytics"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "isPolicyReady exception"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 103
    goto :goto_0
.end method

.method public setDebugOn(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    .line 133
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->init()V

    .line 134
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mClassLoader:Ljava/lang/ClassLoader;

    const-string v2, "com.miui.analytics.Analytics"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setDebugOn"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 135
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 136
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "DexAnalytics"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setDebugOn exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDefaultPolicy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 149
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->init()V

    .line 150
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mClassLoader:Ljava/lang/ClassLoader;

    const-string v2, "com.miui.analytics.Analytics"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setDefaultPolicy"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 151
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 152
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "DexAnalytics"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setDefaultPolicy exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public trackEvent(Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 109
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->init()V

    .line 110
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mClassLoader:Ljava/lang/ClassLoader;

    const-string v2, "com.miui.analytics.Analytics"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "trackEvent"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 111
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 112
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "DexAnalytics"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "trackEvent exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public trackEvents([Ljava/lang/String;)V
    .locals 6
    .param p1, "events"    # [Ljava/lang/String;

    .prologue
    .line 121
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->init()V

    .line 122
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;->mClassLoader:Ljava/lang/ClassLoader;

    const-string v2, "com.miui.analytics.Analytics"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "trackEvents"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, [Ljava/lang/String;

    aput-object v5, v3, v4

    .line 123
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 124
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "DexAnalytics"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "trackEvents exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
