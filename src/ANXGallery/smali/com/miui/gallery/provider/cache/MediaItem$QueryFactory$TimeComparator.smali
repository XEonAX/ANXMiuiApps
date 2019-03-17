.class Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$TimeComparator;
.super Ljava/lang/Object;
.source "MediaItem.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/miui/gallery/provider/cache/MediaItem;",
        ">;"
    }
.end annotation


# instance fields
.field protected mDescent:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "descent"    # Z

    .prologue
    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 753
    iput-boolean p1, p0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$TimeComparator;->mDescent:Z

    .line 754
    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/gallery/provider/cache/MediaItem;Lcom/miui/gallery/provider/cache/MediaItem;)I
    .locals 6
    .param p1, "lhs"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p2, "rhs"    # Lcom/miui/gallery/provider/cache/MediaItem;

    .prologue
    .line 758
    invoke-static {p1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$300(Lcom/miui/gallery/provider/cache/MediaItem;)J

    move-result-wide v2

    invoke-static {p2}, Lcom/miui/gallery/provider/cache/MediaItem;->access$300(Lcom/miui/gallery/provider/cache/MediaItem;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 759
    .local v0, "value":I
    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$100(Lcom/miui/gallery/provider/cache/MediaItem;)J

    move-result-wide v2

    invoke-static {p2}, Lcom/miui/gallery/provider/cache/MediaItem;->access$100(Lcom/miui/gallery/provider/cache/MediaItem;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 760
    invoke-static {p1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$100(Lcom/miui/gallery/provider/cache/MediaItem;)J

    move-result-wide v2

    invoke-static {p2}, Lcom/miui/gallery/provider/cache/MediaItem;->access$100(Lcom/miui/gallery/provider/cache/MediaItem;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 764
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$TimeComparator;->mDescent:Z

    if-eqz v1, :cond_1

    neg-int v0, v0

    .end local v0    # "value":I
    :cond_1
    return v0

    .line 761
    .restart local v0    # "value":I
    :cond_2
    if-nez v0, :cond_0

    .line 762
    invoke-static {p1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$400(Lcom/miui/gallery/provider/cache/MediaItem;)J

    move-result-wide v2

    invoke-static {p2}, Lcom/miui/gallery/provider/cache/MediaItem;->access$400(Lcom/miui/gallery/provider/cache/MediaItem;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 749
    check-cast p1, Lcom/miui/gallery/provider/cache/MediaItem;

    check-cast p2, Lcom/miui/gallery/provider/cache/MediaItem;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$TimeComparator;->compare(Lcom/miui/gallery/provider/cache/MediaItem;Lcom/miui/gallery/provider/cache/MediaItem;)I

    move-result v0

    return v0
.end method
