.class final Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$1;
.super Ljava/lang/Object;
.source "MediaItem.java"

# interfaces
.implements Lcom/miui/gallery/provider/cache/CacheItem$Merger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/provider/cache/CacheItem$Merger",
        "<",
        "Lcom/miui/gallery/provider/cache/MediaItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic merge(Lcom/miui/gallery/provider/cache/CacheItem;Lcom/miui/gallery/provider/cache/CacheItem;I)Lcom/miui/gallery/provider/cache/CacheItem;
    .locals 1

    .prologue
    .line 711
    check-cast p1, Lcom/miui/gallery/provider/cache/MediaItem;

    check-cast p2, Lcom/miui/gallery/provider/cache/MediaItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$1;->merge(Lcom/miui/gallery/provider/cache/MediaItem;Lcom/miui/gallery/provider/cache/MediaItem;I)Lcom/miui/gallery/provider/cache/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public merge(Lcom/miui/gallery/provider/cache/MediaItem;Lcom/miui/gallery/provider/cache/MediaItem;I)Lcom/miui/gallery/provider/cache/MediaItem;
    .locals 4
    .param p1, "left"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p2, "right"    # Lcom/miui/gallery/provider/cache/MediaItem;
    .param p3, "index"    # I

    .prologue
    .line 715
    invoke-static {p1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$000(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p2}, Lcom/miui/gallery/provider/cache/MediaItem;->access$000(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 718
    .end local p1    # "left":Lcom/miui/gallery/provider/cache/MediaItem;
    :goto_0
    return-object p1

    .restart local p1    # "left":Lcom/miui/gallery/provider/cache/MediaItem;
    :cond_0
    move-object p1, p2

    goto :goto_0
.end method
