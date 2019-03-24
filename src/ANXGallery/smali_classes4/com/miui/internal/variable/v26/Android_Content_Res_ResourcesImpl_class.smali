.class public Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class;
.super Lcom/miui/internal/variable/v24/Android_Content_Res_ResourcesImpl_class;
.source "SourceFile"


# static fields
.field private static final DrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    invoke-static {}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;->get()Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class;->DrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/miui/internal/variable/v24/Android_Content_Res_ResourcesImpl_class;-><init>()V

    return-void
.end method


# virtual methods
.method public buildProxy()V
    .locals 2

    .line 26
    const-string v0, "loadDrawable"

    const-string v1, "(Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 28
    return-void
.end method

.method protected handle()V
    .locals 9

    .line 32
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class;->handleLoadDrawable(JLandroid/content/res/ResourcesImpl;Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 33
    return-void
.end method

.method protected handleLoadDrawable(JLandroid/content/res/ResourcesImpl;Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 36
    invoke-virtual/range {p0 .. p8}, Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class;->originalLoadDrawable(JLandroid/content/res/ResourcesImpl;Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 37
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 38
    sget-object p2, Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class;->DrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    invoke-virtual {p2, p1, p6}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->setId(Landroid/graphics/drawable/Drawable;I)V

    .line 40
    :cond_0
    return-object p1
.end method

.method protected originalLoadDrawable(JLandroid/content/res/ResourcesImpl;Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 44
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "com.miui.internal.variable.v26.Android_Content_Res_ResourcesImpl_class.originalLoadDrawable(long, ResourcesImpl, Resources, TypedValue, int, int, Resources.Theme)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
