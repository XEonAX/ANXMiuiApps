.class public Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadOnScrollListener;
.super Ljava/lang/Object;
.source "PreloadMediaAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/adapter/PreloadMediaAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreloadOnScrollListener"
.end annotation


# instance fields
.field private mFirstVisiblePos:I

.field private mLastVisiblePos:I

.field private mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mScrollState:I


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1
    .param p1, "scrollListener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    const/4 v0, 0x0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput v0, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadOnScrollListener;->mScrollState:I

    .line 209
    iput v0, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadOnScrollListener;->mFirstVisiblePos:I

    .line 210
    iput v0, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadOnScrollListener;->mLastVisiblePos:I

    .line 215
    iput-object p1, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadOnScrollListener;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 216
    return-void
.end method


# virtual methods
.method public getFirstPosition()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadOnScrollListener;->mFirstVisiblePos:I

    return v0
.end method

.method public getLastPosition()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadOnScrollListener;->mLastVisiblePos:I

    return v0
.end method

.method public getScrollState()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadOnScrollListener;->mScrollState:I

    return v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 228
    iget v0, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadOnScrollListener;->mFirstVisiblePos:I

    if-eq p2, v0, :cond_0

    .line 229
    iget v0, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadOnScrollListener;->mFirstVisiblePos:I

    if-le p2, v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadOnScrollListener;->mScrollState:I

    .line 231
    :cond_0
    iput p2, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadOnScrollListener;->mFirstVisiblePos:I

    .line 232
    iget v0, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadOnScrollListener;->mFirstVisiblePos:I

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadOnScrollListener;->mLastVisiblePos:I

    .line 233
    iget-object v0, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadOnScrollListener;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadOnScrollListener;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 236
    :cond_1
    return-void

    .line 229
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 220
    iget-object v0, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadOnScrollListener;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/miui/gallery/adapter/PreloadMediaAdapter$PreloadOnScrollListener;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 223
    :cond_0
    return-void
.end method
