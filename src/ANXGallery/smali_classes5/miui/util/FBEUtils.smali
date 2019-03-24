.class public Lmiui/util/FBEUtils;
.super Ljava/lang/Object;
.source "FBEUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method private static createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 46
    nop

    .line 47
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "createDeviceProtectedStorageContext"

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2, v4}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Lmiui/reflect/Method;

    move-result-object v0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p0, v2}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    return-object v0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    return-object p0
.end method

.method public static getSafeStorageContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    .line 16
    invoke-static {p0}, Lmiui/util/FBEUtils;->isDeviceProtectedStorage(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lmiui/util/FBEUtils;->isFileEncryptedNativeOrEmulated()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    invoke-static {p0}, Lmiui/util/FBEUtils;->createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    return-object v0

    .line 17
    :cond_1
    :goto_0
    return-object p0

    .line 22
    :cond_2
    return-object p0
.end method

.method private static isDeviceProtectedStorage(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 28
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isDeviceProtectedStorage"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array v4, v0, [Ljava/lang/Class;

    invoke-static {v1, v2, v3, v4}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Lmiui/reflect/Method;

    move-result-object v1

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, p0, v3}, Lmiui/reflect/Method;->invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return v1

    .line 30
    :catch_0
    move-exception v1

    .line 31
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method private static isFileEncryptedNativeOrEmulated()Z
    .locals 5

    .line 37
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/os/storage/StorageManager;

    const-string v2, "isFileEncryptedNativeOrEmulated"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array v4, v0, [Ljava/lang/Class;

    invoke-static {v1, v2, v3, v4}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Lmiui/reflect/Method;

    move-result-object v1

    const-class v2, Landroid/os/storage/StorageManager;

    const/4 v3, 0x0

    new-array v4, v0, [Ljava/lang/Object;

    .line 38
    invoke-virtual {v1, v2, v3, v4}, Lmiui/reflect/Method;->invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    return v1

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method
