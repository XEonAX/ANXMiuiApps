.class final Lcom/miui/gallery/provider/cache/MediaManager$6;
.super Ljava/lang/Object;
.source "MediaManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/provider/cache/MediaManager;->getTimeComparator()Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/gallery/provider/cache/MediaItem;Lcom/miui/gallery/provider/cache/MediaItem;)I
    .locals 4
    .param p1, "o1"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p2, "o2"    # Lcom/miui/gallery/provider/cache/MediaItem;

    .prologue
    .line 544
    invoke-virtual {p2}, Lcom/miui/gallery/provider/cache/MediaItem;->getAliasSortTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/miui/gallery/provider/cache/MediaItem;->getAliasSortTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 541
    check-cast p1, Lcom/miui/gallery/provider/cache/MediaItem;

    check-cast p2, Lcom/miui/gallery/provider/cache/MediaItem;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/provider/cache/MediaManager$6;->compare(Lcom/miui/gallery/provider/cache/MediaItem;Lcom/miui/gallery/provider/cache/MediaItem;)I

    move-result v0

    return v0
.end method
