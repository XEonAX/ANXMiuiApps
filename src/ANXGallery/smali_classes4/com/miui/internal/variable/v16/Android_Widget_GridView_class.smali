.class public Lcom/miui/internal/variable/v16/Android_Widget_GridView_class;
.super Lcom/miui/internal/variable/Android_Widget_GridView_class;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Widget_GridView_class;-><init>()V

    return-void
.end method


# virtual methods
.method public buildProxy()V
    .locals 2

    .line 19
    const-string v0, "layoutChildren"

    const-string v1, "()V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_Widget_GridView_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 20
    const-string v0, "fillGap"

    const-string v1, "(Z)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_Widget_GridView_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 21
    return-void
.end method

.method protected handle()V
    .locals 4

    .line 25
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/miui/internal/variable/v16/Android_Widget_GridView_class;->handleLayoutChildren(JLandroid/widget/GridView;)V

    .line 26
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/miui/internal/variable/v16/Android_Widget_GridView_class;->handleFillGap(JLandroid/widget/GridView;Z)V

    .line 27
    return-void
.end method

.method protected handleFillGap(JLandroid/widget/GridView;Z)V
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_Widget_GridView_class;->originalFillGap(JLandroid/widget/GridView;Z)V

    .line 41
    invoke-static {p3}, Lcom/miui/internal/util/TaggingDrawableHelper;->tagChildSequenceState(Landroid/view/ViewGroup;)V

    .line 42
    return-void
.end method

.method protected handleLayoutChildren(JLandroid/widget/GridView;)V
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/variable/v16/Android_Widget_GridView_class;->originalLayoutChildren(JLandroid/widget/GridView;)V

    .line 31
    invoke-static {p3}, Lcom/miui/internal/util/TaggingDrawableHelper;->tagChildSequenceState(Landroid/view/ViewGroup;)V

    .line 32
    return-void
.end method

.method protected originalFillGap(JLandroid/widget/GridView;Z)V
    .locals 0

    .line 45
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "com.miui.internal.variable.v16.Android_Widget_GridView_class.originalFillGap(long, GridView, boolean)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected originalLayoutChildren(JLandroid/widget/GridView;)V
    .locals 0

    .line 35
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "com.miui.internal.variable.v16.Android_Widget_GridView_class.originalLayoutChildren(long, GridView)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
