.class public Lcom/miui/internal/variable/v21/Android_View_View_class;
.super Lcom/miui/internal/variable/v19/Android_View_View_class;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/miui/internal/variable/v19/Android_View_View_class;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachSpecialMethods()V
    .locals 2

    .line 37
    const-string v0, "setDisplayListProperties"

    const-string v1, "(Landroid/view/RenderNode;)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v21/Android_View_View_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 38
    return-void
.end method

.method public buildProxy()V
    .locals 1

    .line 24
    invoke-super {p0}, Lcom/miui/internal/variable/v19/Android_View_View_class;->buildProxy()V

    .line 25
    const-string v0, "(Landroid/content/Context;Landroid/util/AttributeSet;II)V"

    invoke-virtual {p0, v0}, Lcom/miui/internal/variable/v21/Android_View_View_class;->attachConstructor(Ljava/lang/String;)J

    .line 26
    return-void
.end method

.method protected handle()V
    .locals 8

    .line 30
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/miui/internal/variable/v21/Android_View_View_class;->handle_init_(JLandroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 31
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/view/RenderNode;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/miui/internal/variable/v21/Android_View_View_class;->handleSetDisplayListProperties(JLandroid/view/View;Landroid/view/RenderNode;)V

    .line 32
    invoke-super {p0}, Lcom/miui/internal/variable/v19/Android_View_View_class;->handle()V

    .line 33
    return-void
.end method

.method protected handleSetDisplayListProperties(JLandroid/view/View;Landroid/view/RenderNode;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v21/Android_View_View_class;->originalSetDisplayListProperties(JLandroid/view/View;Landroid/view/RenderNode;)V

    .line 53
    if-eqz p4, :cond_0

    .line 54
    nop

    .line 55
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/miui/internal/R$attr;->hasOverlappingRendering:I

    const/4 p3, 0x1

    .line 54
    invoke-static {p1, p2, p3}, Lmiui/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result p1

    .line 56
    if-nez p1, :cond_0

    .line 57
    const/4 p1, 0x0

    invoke-virtual {p4, p1}, Landroid/view/RenderNode;->setHasOverlappingRendering(Z)Z

    .line 60
    :cond_0
    return-void
.end method

.method protected handle_init_(JLandroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 41
    invoke-virtual/range {p0 .. p7}, Lcom/miui/internal/variable/v21/Android_View_View_class;->original_init_(JLandroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    invoke-static {p3, p5}, Lcom/miui/internal/util/TaggingDrawableHelper;->initViewSequenceStates(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method protected originalSetDisplayListProperties(JLandroid/view/View;Landroid/view/RenderNode;)V
    .locals 0

    .line 63
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "com.miui.internal.variable.v21.Android_View_View_class.originalSetDisplayListProperties(long, View, RenderNode)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected original_init_(JLandroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 47
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "com.miui.internal.variable.v21.Android_View_View_class.original_init_(long, View, Context, AttributeSet, int, int)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
