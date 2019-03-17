.class Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$SizeComparator;
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
    name = "SizeComparator"
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
.field private mDescent:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "descent"    # Z

    .prologue
    .line 794
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 795
    iput-boolean p1, p0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$SizeComparator;->mDescent:Z

    .line 796
    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/gallery/provider/cache/MediaItem;Lcom/miui/gallery/provider/cache/MediaItem;)I
    .locals 6
    .param p1, "lhs"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p2, "rhs"    # Lcom/miui/gallery/provider/cache/MediaItem;

    .prologue
    .line 800
    invoke-static {p1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$600(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p2}, Lcom/miui/gallery/provider/cache/MediaItem;->access$600(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 801
    .local v0, "result":I
    iget-boolean v1, p0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$SizeComparator;->mDescent:Z

    if-eqz v1, :cond_0

    neg-int v0, v0

    .end local v0    # "result":I
    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 791
    check-cast p1, Lcom/miui/gallery/provider/cache/MediaItem;

    check-cast p2, Lcom/miui/gallery/provider/cache/MediaItem;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$SizeComparator;->compare(Lcom/miui/gallery/provider/cache/MediaItem;Lcom/miui/gallery/provider/cache/MediaItem;)I

    move-result v0

    return v0
.end method
