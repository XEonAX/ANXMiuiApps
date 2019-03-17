.class public abstract Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated;
.super Lcom/miui/gallery/adapter/BaseAdapter;
.source "BaseMediaAdapterDeprecated.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated$OnScrollListenerWrapper;
    }
.end annotation


# instance fields
.field protected mViewScrollState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/BaseAdapter;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated;->mViewScrollState:I

    .line 17
    return-void
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 37
    const v0, 0x7f120022

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 38
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated;->doBindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 39
    return-void
.end method

.method protected abstract doBindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end method

.method public generateWrapScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1
    .param p1, "scrollListener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 66
    new-instance v0, Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated$1;-><init>(Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated;Landroid/widget/AbsListView$OnScrollListener;)V

    return-object v0
.end method

.method public getCheckedItem(I)Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 46
    :cond_0
    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    .line 48
    :cond_1
    new-instance v0, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;

    invoke-direct {v0}, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;-><init>()V

    .line 49
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated;->getItemKey(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;->setId(J)Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated;->getSha1(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;->setSha1(Ljava/lang/String;)Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated;->getMicroThumbFilePath(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;->setMicroThumbnailFile(Ljava/lang/String;)Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated;->getThumbFilePath(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;->setThumbnailFile(Ljava/lang/String;)Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated;->getOriginFilePath(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;->setOriginFile(Ljava/lang/String;)Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated;->getMimeType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;->setMimeType(Ljava/lang/String;)Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem$Builder;->build()Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemDecodeRectF(I)Landroid/graphics/RectF;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getItemKey(I)J
.end method

.method public getItemSecretKey(I)[B
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getMimeType(I)Ljava/lang/String;
.end method

.method public abstract getSha1(I)Ljava/lang/String;
.end method

.method protected onViewScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 59
    iput p2, p0, Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated;->mViewScrollState:I

    .line 60
    return-void
.end method

.method protected onViewScrolled(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 63
    return-void
.end method
