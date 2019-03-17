.class public Lcom/miui/gallery/widget/stickyheader/StickyGridLayoutManager;
.super Landroid/support/v7/widget/GridLayoutManager;
.source "StickyGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/widget/stickyheader/StickyGridLayoutManager$OnLayoutChangedListener;
    }
.end annotation


# instance fields
.field private mLayoutChangedListener:Lcom/miui/gallery/widget/stickyheader/StickyGridLayoutManager$OnLayoutChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spanCount"    # I

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spanCount"    # I
    .param p3, "orientation"    # I
    .param p4, "reverseLayout"    # Z

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 17
    return-void
.end method


# virtual methods
.method public setSpanCount(I)V
    .locals 2
    .param p1, "spanCount"    # I

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/miui/gallery/widget/stickyheader/StickyGridLayoutManager;->getSpanCount()I

    move-result v0

    .line 30
    .local v0, "oldValue":I
    invoke-super {p0, p1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    .line 31
    iget-object v1, p0, Lcom/miui/gallery/widget/stickyheader/StickyGridLayoutManager;->mLayoutChangedListener:Lcom/miui/gallery/widget/stickyheader/StickyGridLayoutManager$OnLayoutChangedListener;

    if-eqz v1, :cond_0

    if-eq v0, p1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/miui/gallery/widget/stickyheader/StickyGridLayoutManager;->mLayoutChangedListener:Lcom/miui/gallery/widget/stickyheader/StickyGridLayoutManager$OnLayoutChangedListener;

    invoke-interface {v1, v0, p1}, Lcom/miui/gallery/widget/stickyheader/StickyGridLayoutManager$OnLayoutChangedListener;->onSpanCountChanged(II)V

    .line 34
    :cond_0
    return-void
.end method

.method public setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V
    .locals 2
    .param p1, "spanSizeLookup"    # Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/miui/gallery/widget/stickyheader/StickyGridLayoutManager;->getSpanSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v0

    .line 39
    .local v0, "oldValue":Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
    invoke-super {p0, p1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 40
    iget-object v1, p0, Lcom/miui/gallery/widget/stickyheader/StickyGridLayoutManager;->mLayoutChangedListener:Lcom/miui/gallery/widget/stickyheader/StickyGridLayoutManager$OnLayoutChangedListener;

    if-eqz v1, :cond_0

    if-eq v0, p1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/miui/gallery/widget/stickyheader/StickyGridLayoutManager;->mLayoutChangedListener:Lcom/miui/gallery/widget/stickyheader/StickyGridLayoutManager$OnLayoutChangedListener;

    invoke-interface {v1, v0, p1}, Lcom/miui/gallery/widget/stickyheader/StickyGridLayoutManager$OnLayoutChangedListener;->onSpanSizeLookupChanged(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 43
    :cond_0
    return-void
.end method
