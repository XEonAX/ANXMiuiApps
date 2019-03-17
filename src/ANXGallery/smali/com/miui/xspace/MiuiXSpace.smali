.class Lcom/miui/xspace/MiuiXSpace;
.super Ljava/lang/Object;
.source "MiuiXSpace.java"

# interfaces
.implements Lcom/miui/xspace/IXSpaceWrapper;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDeclaredMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    instance-of v1, p0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 45
    :try_start_0
    check-cast p0, Ljava/lang/Class;

    .end local p0    # "target":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 58
    :goto_0
    return-object v1

    .line 50
    .restart local p0    # "target":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    .line 52
    :try_start_1
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    .line 50
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 46
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p0    # "target":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 58
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static varargs invokeSafely(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p3, "parameters"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 63
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/miui/xspace/MiuiXSpace;->getDeclaredMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 64
    .local v1, "method":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_1

    .line 65
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 68
    :cond_0
    invoke-virtual {v1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v2

    .line 81
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "MiuiXSpace"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_1
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 72
    :catch_1
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "MiuiXSpace"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 74
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "MiuiXSpace"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 76
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "MiuiXSpace"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 78
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MiuiXSpace"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public getXSpacePath()Ljava/io/File;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 32
    :try_start_0
    const-string v4, "android.os.Environment$UserEnvironment"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 33
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v6

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 34
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0x3e7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 35
    .local v3, "userEnvironment":Ljava/lang/Object;
    const-string v4, "getExternalStorageDirectory"

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v6, v7}, Lcom/miui/xspace/MiuiXSpace;->invokeSafely(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "userEnvironment":Ljava/lang/Object;
    :goto_0
    return-object v4

    .line 36
    :catch_0
    move-exception v2

    .line 37
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v5

    .line 39
    goto :goto_0
.end method

.method public isXSpaceEnable(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 21
    :try_start_0
    const-string v2, "android.provider.MiuiSettings$Secure"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 22
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "getBoolean"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/ContentResolver;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "xspace_enabled"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v2, v4, v5}, Lcom/miui/xspace/MiuiXSpace;->invokeSafely(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 26
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return v2

    .line 23
    :catch_0
    move-exception v1

    .line 24
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    .line 26
    goto :goto_0
.end method
