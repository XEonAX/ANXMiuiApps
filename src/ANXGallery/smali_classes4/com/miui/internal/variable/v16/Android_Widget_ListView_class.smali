.class public Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;
.super Lcom/miui/internal/variable/Android_Widget_ListView_class;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Widget_ListView_class;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachSpecialMethod()V
    .locals 1

    .line 34
    const-string v0, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V"

    invoke-virtual {p0, v0}, Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;->attachConstructor(Ljava/lang/String;)J

    .line 35
    return-void
.end method

.method public buildProxy()V
    .locals 2

    .line 21
    const-string v0, "layoutChildren"

    const-string v1, "()V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 22
    const-string v0, "fillGap"

    const-string v1, "(Z)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 23
    invoke-virtual {p0}, Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;->attachSpecialMethod()V

    .line 24
    return-void
.end method

.method protected doInit(Landroid/widget/ListView;Landroid/content/Context;)V
    .locals 2

    .line 39
    invoke-virtual {p1}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v0

    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/miui/internal/R$dimen;->listview_horizontal_padding:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 42
    if-eqz p2, :cond_0

    .line 43
    invoke-virtual {p1}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v0

    .line 44
    invoke-virtual {p1}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v1

    .line 43
    invoke-virtual {p1, p2, v0, p2, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 48
    :cond_0
    return-void
.end method

.method protected handle()V
    .locals 11

    .line 28
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;->handleLayoutChildren(JLandroid/widget/ListView;)V

    .line 29
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;->handleFillGap(JLandroid/widget/ListView;Z)V

    .line 30
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;->handle_init_(JLandroid/widget/ListView;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method protected handleFillGap(JLandroid/widget/ListView;Z)V
    .locals 0

    .line 61
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;->originalFillGap(JLandroid/widget/ListView;Z)V

    .line 62
    invoke-static {p3}, Lcom/miui/internal/util/TaggingDrawableHelper;->tagChildSequenceState(Landroid/view/ViewGroup;)V

    .line 63
    return-void
.end method

.method protected handleLayoutChildren(JLandroid/widget/ListView;)V
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;->originalLayoutChildren(JLandroid/widget/ListView;)V

    .line 52
    invoke-static {p3}, Lcom/miui/internal/util/TaggingDrawableHelper;->tagChildSequenceState(Landroid/view/ViewGroup;)V

    .line 53
    return-void
.end method

.method protected handle_init_(JLandroid/widget/ListView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 73
    invoke-virtual/range {p0 .. p6}, Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;->original_init_(JLandroid/widget/ListView;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    invoke-virtual {p0, p3, p4}, Lcom/miui/internal/variable/v16/Android_Widget_ListView_class;->doInit(Landroid/widget/ListView;Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method protected originalFillGap(JLandroid/widget/ListView;Z)V
    .locals 0

    .line 66
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "com.miui.internal.variable.v16.Android_Widget_ListView_class.originalFillGap(long, ListView, boolean)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected originalLayoutChildren(JLandroid/widget/ListView;)V
    .locals 0

    .line 56
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "com.miui.internal.variable.v16.Android_Widget_ListView_class.originalLayoutChildren(long, ListView)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected original_init_(JLandroid/widget/ListView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 78
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "com.miui.internal.variable.v16.Android_Widget_ListView_class.original_init_(long, ListView, Context, AttributeSet, int)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
