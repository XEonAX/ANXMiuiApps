.class public Lcom/miui/gallery/editor/photo/widgets/recyclerview/HorizontalCenterRecyclerView;
.super Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;
.source "HorizontalCenterRecyclerView.java"


# instance fields
.field private mLastWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v5, 0x0

    .line 28
    invoke-super/range {p0 .. p5}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->onLayout(ZIIII)V

    .line 29
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/HorizontalCenterRecyclerView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 30
    const/4 v2, 0x0

    .line 31
    .local v2, "newWidth":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/HorizontalCenterRecyclerView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 32
    invoke-virtual {p0, v1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/HorizontalCenterRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    :cond_0
    iget v3, p0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/HorizontalCenterRecyclerView;->mLastWidth:I

    if-eq v3, v2, :cond_1

    .line 35
    iput v2, p0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/HorizontalCenterRecyclerView;->mLastWidth:I

    .line 36
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/HorizontalCenterRecyclerView;->getMeasuredWidth()I

    move-result v3

    sub-int v0, v3, v2

    .line 37
    .local v0, "empty":I
    if-lez v0, :cond_1

    .line 38
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/HorizontalCenterRecyclerView;->getPaddingLeft()I

    move-result v3

    div-int/lit8 v4, v0, 0x2

    if-ne v3, v4, :cond_2

    .line 47
    .end local v0    # "empty":I
    .end local v1    # "i":I
    .end local v2    # "newWidth":I
    :cond_1
    :goto_1
    return-void

    .line 41
    .restart local v0    # "empty":I
    .restart local v1    # "i":I
    .restart local v2    # "newWidth":I
    :cond_2
    div-int/lit8 v3, v0, 0x2

    div-int/lit8 v4, v0, 0x2

    invoke-virtual {p0, v3, v5, v4, v5}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/HorizontalCenterRecyclerView;->setPadding(IIII)V

    .line 43
    invoke-super/range {p0 .. p5}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->onLayout(ZIIII)V

    goto :goto_1
.end method
