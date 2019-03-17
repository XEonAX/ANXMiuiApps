.class Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper$HeaderFooterSpanSizeLookup;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "HeaderFooterRecyclerAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderFooterSpanSizeLookup"
.end annotation


# instance fields
.field private mAdapterWrapper:Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;

.field private mSpanCount:I

.field private mWrapped:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;I)V
    .locals 0
    .param p1, "wrapped"    # Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
    .param p2, "adapterWrapper"    # Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;
    .param p3, "spanCount"    # I

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper$HeaderFooterSpanSizeLookup;->mWrapped:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 133
    iput-object p2, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper$HeaderFooterSpanSizeLookup;->mAdapterWrapper:Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;

    .line 134
    iput p3, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper$HeaderFooterSpanSizeLookup;->mSpanCount:I

    .line 135
    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper$HeaderFooterSpanSizeLookup;->mAdapterWrapper:Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->isHeaderPosition(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper$HeaderFooterSpanSizeLookup;->mAdapterWrapper:Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->isFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    :cond_0
    iget v0, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper$HeaderFooterSpanSizeLookup;->mSpanCount:I

    .line 142
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper$HeaderFooterSpanSizeLookup;->mWrapped:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v0

    goto :goto_0
.end method
