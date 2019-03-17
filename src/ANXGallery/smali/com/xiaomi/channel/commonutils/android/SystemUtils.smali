.class public Lcom/xiaomi/channel/commonutils/android/SystemUtils;
.super Ljava/lang/Object;
.source "SystemUtils.java"


# static fields
.field private static sContext:Landroid/content/Context;


# direct methods
.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/SystemUtils;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getMIUIType()I
    .locals 3

    .prologue
    .line 30
    :try_start_0
    const-string v1, "miui.os.Build"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 31
    .local v0, "clazz":Ljava/lang/Class;
    const-string v1, "IS_STABLE_VERSION"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    const/4 v1, 0x3

    .line 40
    :goto_0
    return v1

    .line 33
    :cond_0
    const-string v1, "IS_DEVELOPMENT_VERSION"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    const/4 v1, 0x2

    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 38
    :catch_0
    move-exception v1

    .line 40
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/channel/commonutils/android/SystemUtils;->sContext:Landroid/content/Context;

    .line 19
    return-void
.end method

.method public static isBootCompleted()Z
    .locals 6

    .prologue
    .line 54
    const-string v1, "android.os.SystemProperties"

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "sys.boot_completed"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55
    .local v0, "bootCompleted":Ljava/lang/String;
    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public static isDebuggable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 45
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 46
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 50
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v2

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isGlobalVersion()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 65
    :try_start_0
    const-string v3, "miui.os.Build"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 66
    .local v0, "clazz":Ljava/lang/Class;
    const-string v3, "IS_GLOBAL_BUILD"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 72
    :goto_0
    return v2

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v3, "miui.os.Build ClassNotFound"

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
