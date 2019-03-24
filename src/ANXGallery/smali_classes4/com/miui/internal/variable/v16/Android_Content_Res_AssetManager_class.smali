.class public Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;
.super Lcom/miui/internal/util/ClassProxy;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/internal/util/ClassProxy<",
        "Landroid/content/res/AssetManager;",
        ">;",
        "Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;"
    }
.end annotation


# static fields
.field private static final ln:Lmiui/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    const-class v0, Landroid/content/res/AssetManager;

    const-string v1, "addAssetPath"

    const-string v2, "(Ljava/lang/String;)I"

    .line 23
    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;->ln:Lmiui/reflect/Method;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    const-class v0, Landroid/content/res/AssetManager;

    invoke-direct {p0, v0}, Lcom/miui/internal/util/ClassProxy;-><init>(Ljava/lang/Class;)V

    .line 27
    return-void
.end method


# virtual methods
.method public addAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I
    .locals 4

    .line 63
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;->ln:Lmiui/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v0

    invoke-virtual {v1, v2, p1, v3}, Lmiui/reflect/Method;->invokeInt(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 64
    :catch_0
    move-exception p1

    .line 65
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object p2

    const-string v1, "android.content.res.AssetManager.addAssetPath"

    invoke-virtual {p2, v1, p1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    return v0
.end method

.method public buildProxy()V
    .locals 3

    .line 49
    :try_start_0
    const-string v0, "addAssetPath"

    const-string v1, "(Ljava/lang/String;)I"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.content.res.AssetManager.addAssetPath"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    :goto_0
    return-void
.end method

.method protected handle()V
    .locals 3

    .line 31
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2, v0, v0}, Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;->handleAddAssetPath(JLandroid/content/res/AssetManager;Ljava/lang/String;)I

    .line 32
    return-void
.end method

.method protected handleAddAssetPath(JLandroid/content/res/AssetManager;Ljava/lang/String;)I
    .locals 1

    .line 35
    sget-object v0, Lcom/miui/internal/util/PackageConstants;->RESOURCE_PATH:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    sget-object v0, Lcom/miui/internal/util/PackageConstants;->RESOURCE_PATH:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;->originalAddAssetPath(JLandroid/content/res/AssetManager;Ljava/lang/String;)I

    .line 38
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;->originalAddAssetPath(JLandroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public newInstance()Landroid/content/res/AssetManager;
    .locals 2

    .line 57
    const-class v0, Landroid/content/res/AssetManager;

    const-string v1, "()V"

    invoke-static {v0, v1}, Lmiui/reflect/Constructor;->of(Ljava/lang/Class;Ljava/lang/String;)Lmiui/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lmiui/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    return-object v0
.end method

.method protected originalAddAssetPath(JLandroid/content/res/AssetManager;Ljava/lang/String;)I
    .locals 0

    .line 42
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "com.miui.internal.variable.v16.Android_Content_Res_AssetManager_class.originalAddAssetPath(long, AssetManager, String)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
