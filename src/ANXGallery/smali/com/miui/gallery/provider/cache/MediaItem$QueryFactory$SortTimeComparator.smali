.class Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$SortTimeComparator;
.super Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$TimeComparator;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SortTimeComparator"
.end annotation


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "descent"    # Z

    .prologue
    .line 739
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$TimeComparator;-><init>(Z)V

    .line 740
    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/gallery/provider/cache/MediaItem;Lcom/miui/gallery/provider/cache/MediaItem;)I
    .locals 6
    .param p1, "lhs"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p2, "rhs"    # Lcom/miui/gallery/provider/cache/MediaItem;

    .prologue
    .line 744
    invoke-static {p1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$200(Lcom/miui/gallery/provider/cache/MediaItem;)J

    move-result-wide v2

    invoke-static {p2}, Lcom/miui/gallery/provider/cache/MediaItem;->access$200(Lcom/miui/gallery/provider/cache/MediaItem;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 745
    .local v0, "value":I
    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$TimeComparator;->compare(Lcom/miui/gallery/provider/cache/MediaItem;Lcom/miui/gallery/provider/cache/MediaItem;)I

    move-result v0

    .end local v0    # "value":I
    :cond_0
    :goto_0
    return v0

    .restart local v0    # "value":I
    :cond_1
    iget-boolean v1, p0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$SortTimeComparator;->mDescent:Z

    if-eqz v1, :cond_0

    neg-int v0, v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 736
    check-cast p1, Lcom/miui/gallery/provider/cache/MediaItem;

    check-cast p2, Lcom/miui/gallery/provider/cache/MediaItem;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$SortTimeComparator;->compare(Lcom/miui/gallery/provider/cache/MediaItem;Lcom/miui/gallery/provider/cache/MediaItem;)I

    move-result v0

    return v0
.end method
