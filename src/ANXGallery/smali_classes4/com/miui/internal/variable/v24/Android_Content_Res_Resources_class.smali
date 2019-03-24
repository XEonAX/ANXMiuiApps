.class public Lcom/miui/internal/variable/v24/Android_Content_Res_Resources_class;
.super Lcom/miui/internal/variable/v21/Android_Content_Res_Resources_class;
.source "SourceFile"


# static fields
.field protected static mResourcesImpl:Lmiui/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/internal/variable/v24/Android_Content_Res_Resources_class;->mResourcesImpl:Lmiui/reflect/Field;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/miui/internal/variable/v21/Android_Content_Res_Resources_class;-><init>()V

    return-void
.end method


# virtual methods
.method public buildProxy()V
    .locals 0

    .line 26
    return-void
.end method

.method protected handle()V
    .locals 0

    .line 31
    return-void
.end method

.method public setAssetManager(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)V
    .locals 3

    .line 36
    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v24/Android_Content_Res_Resources_class;->mResourcesImpl:Lmiui/reflect/Field;

    if-nez v0, :cond_0

    .line 37
    const-class v0, Landroid/content/res/Resources;

    const-string v1, "mResourcesImpl"

    const-string v2, "Landroid/content/res/ResourcesImpl;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v24/Android_Content_Res_Resources_class;->mResourcesImpl:Lmiui/reflect/Field;

    .line 39
    const-string v0, "android/content/res/ResourcesImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 40
    const-string v1, "mAssets"

    const-string v2, "Landroid/content/res/AssetManager;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v24/Android_Content_Res_Resources_class;->mAssets:Lmiui/reflect/Field;

    .line 43
    :cond_0
    sget-object v0, Lcom/miui/internal/variable/v24/Android_Content_Res_Resources_class;->mAssets:Lmiui/reflect/Field;

    sget-object v1, Lcom/miui/internal/variable/v24/Android_Content_Res_Resources_class;->mResourcesImpl:Lmiui/reflect/Field;

    invoke-virtual {v1, p1}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lmiui/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    move-exception p1

    .line 47
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object p2

    const-string v0, "mAssets"

    invoke-virtual {p2, v0, p1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 44
    :catch_1
    move-exception p1

    .line 45
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object p2

    const-string v0, "mAssets"

    invoke-virtual {p2, v0, p1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    :goto_0
    nop

    .line 49
    :goto_1
    return-void
.end method
