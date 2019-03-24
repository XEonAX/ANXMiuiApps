.class public Lcom/miui/internal/variable/v16/Android_Content_Res_Resources_class;
.super Lcom/miui/internal/variable/Android_Content_Res_Resources_class;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Content_Res_Resources_class;-><init>()V

    return-void
.end method


# virtual methods
.method public buildProxy()V
    .locals 2

    .line 25
    const-string v0, "loadDrawable"

    const-string v1, "(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_Content_Res_Resources_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 26
    return-void
.end method

.method protected handle()V
    .locals 6

    .line 30
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/variable/v16/Android_Content_Res_Resources_class;->handleLoadDrawable(JLandroid/content/res/Resources;Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    .line 31
    return-void
.end method

.method protected handleLoadDrawable(JLandroid/content/res/Resources;Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 34
    invoke-virtual/range {p0 .. p5}, Lcom/miui/internal/variable/v16/Android_Content_Res_Resources_class;->originalLoadDrawable(JLandroid/content/res/Resources;Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 35
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 36
    sget-object p2, Lcom/miui/internal/variable/v16/Android_Content_Res_Resources_class;->DrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    invoke-virtual {p2, p1, p5}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->setId(Landroid/graphics/drawable/Drawable;I)V

    .line 38
    :cond_0
    return-object p1
.end method

.method protected originalLoadDrawable(JLandroid/content/res/Resources;Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 42
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "com.miui.internal.variable.v16.Android_Content_Res_Resources_class.originalLoadDrawable(long, Resources, TypedValue, int)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAssetManager(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)V
    .locals 3

    .line 49
    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Content_Res_Resources_class;->mAssets:Lmiui/reflect/Field;

    if-nez v0, :cond_0

    .line 50
    const-class v0, Landroid/content/res/Resources;

    const-string v1, "mAssets"

    const-string v2, "Landroid/content/res/AssetManager;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Content_Res_Resources_class;->mAssets:Lmiui/reflect/Field;

    .line 53
    :cond_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Content_Res_Resources_class;->mAssets:Lmiui/reflect/Field;

    invoke-virtual {v0, p1, p2}, Lmiui/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_0

    .line 54
    :catch_0
    move-exception p1

    .line 55
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object p2

    const-string v0, "mAssets"

    invoke-virtual {p2, v0, p1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    :goto_0
    return-void
.end method
