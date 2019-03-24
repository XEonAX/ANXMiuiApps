.class public Lmiui/util/ViewUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final TAG:Ljava/lang/String; = "ViewUtils"

.field private static final jC:Lcom/miui/internal/variable/Android_View_View_class;

.field private static final jD:Lcom/miui/internal/variable/Android_View_ViewGroup_class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    invoke-static {}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_View_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->get()Lcom/miui/internal/variable/Android_View_View_class;

    move-result-object v0

    sput-object v0, Lmiui/util/ViewUtils;->jC:Lcom/miui/internal/variable/Android_View_View_class;

    .line 26
    invoke-static {}, Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory;->get()Lcom/miui/internal/variable/Android_View_ViewGroup_class;

    move-result-object v0

    sput-object v0, Lmiui/util/ViewUtils;->jD:Lcom/miui/internal/variable/Android_View_ViewGroup_class;

    .line 25
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static containsPoint(Landroid/view/View;II)Z
    .locals 1

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p1

    if-le p2, p1, :cond_0

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    if-ge p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 74
    :goto_0
    return p0
.end method

.method public static getBackgroundHeight(Landroid/view/View;)I
    .locals 0

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 89
    if-eqz p0, :cond_0

    .line 90
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    return p0

    .line 92
    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static getBackgroundWidth(Landroid/view/View;)I
    .locals 0

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 104
    if-eqz p0, :cond_0

    .line 105
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    return p0

    .line 107
    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static getContentRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v0, p0

    iget p0, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 46
    return-void
.end method

.method public static getHorizontalState(Landroid/view/View;)I
    .locals 1

    .line 117
    sget-object v0, Lmiui/util/ViewUtils;->jC:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/Android_View_View_class;->getHorizontalState(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static getTagChildrenSequenceState(Landroid/view/ViewGroup;)Z
    .locals 1

    .line 162
    sget-object v0, Lmiui/util/ViewUtils;->jD:Lcom/miui/internal/variable/Android_View_ViewGroup_class;

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/Android_View_ViewGroup_class;->getTagChildrenSequenceState(Landroid/view/ViewGroup;)Z

    move-result p0

    return p0
.end method

.method public static getVerticalState(Landroid/view/View;)I
    .locals 1

    .line 127
    sget-object v0, Lmiui/util/ViewUtils;->jC:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/Android_View_View_class;->getVerticalState(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static intersectsWith(Landroid/view/View;Landroid/graphics/Rect;)Z
    .locals 2

    .line 58
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-le v0, v1, :cond_0

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    iget p1, p1, Landroid/graphics/Rect;->top:I

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 58
    :goto_0
    return p0
.end method

.method public static isLayoutRtl(Landroid/view/View;)Z
    .locals 1

    .line 186
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNightMode(Landroid/content/Context;)Z
    .locals 1

    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 209
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V
    .locals 2

    .line 200
    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    .line 201
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    .line 202
    if-eqz v0, :cond_0

    sub-int v1, p0, p4

    goto :goto_0

    .line 203
    :cond_0
    move v1, p2

    :goto_0
    if-eqz v0, :cond_1

    sub-int p4, p0, p2

    .line 204
    :cond_1
    invoke-virtual {p1, v1, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 205
    return-void
.end method

.method public static setHorizontalState(Landroid/view/View;I)V
    .locals 1

    .line 140
    sget-object v0, Lmiui/util/ViewUtils;->jC:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {v0, p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->setHorizontalState(Landroid/view/View;I)V

    .line 141
    return-void
.end method

.method public static setTagChildrenSequenceState(Landroid/view/ViewGroup;Z)V
    .locals 1

    .line 175
    sget-object v0, Lmiui/util/ViewUtils;->jD:Lcom/miui/internal/variable/Android_View_ViewGroup_class;

    invoke-virtual {v0, p0, p1}, Lcom/miui/internal/variable/Android_View_ViewGroup_class;->setTagChildrenSequenceState(Landroid/view/ViewGroup;Z)V

    .line 176
    return-void
.end method

.method public static setVerticalState(Landroid/view/View;I)V
    .locals 1

    .line 153
    sget-object v0, Lmiui/util/ViewUtils;->jC:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {v0, p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->setVerticalState(Landroid/view/View;I)V

    .line 154
    return-void
.end method
