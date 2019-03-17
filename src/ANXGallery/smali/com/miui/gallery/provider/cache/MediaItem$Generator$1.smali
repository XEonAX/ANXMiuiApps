.class final Lcom/miui/gallery/provider/cache/MediaItem$Generator$1;
.super Ljava/lang/Object;
.source "MediaItem.java"

# interfaces
.implements Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cache/MediaItem$Generator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndex(Ljava/lang/String;)I
    .locals 3
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    .line 1532
    invoke-static {}, Lcom/miui/gallery/provider/cache/MediaItem$Generator;->access$3900()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1533
    .local v0, "index":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1534
    const-string v1, ".provider.cache.MediaItem"

    const-string v2, "column \'%s\' not found"

    invoke-static {v1, v2, p1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1535
    const/4 v1, -0x1

    .line 1537
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method
