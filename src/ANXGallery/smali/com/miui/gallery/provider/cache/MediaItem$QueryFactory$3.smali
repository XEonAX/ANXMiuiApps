.class final Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$3;
.super Lcom/miui/gallery/provider/cache/Filter$CompareFilter;
.source "MediaItem.java"


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
        "Lcom/miui/gallery/provider/cache/Filter$CompareFilter",
        "<",
        "Lcom/miui/gallery/provider/cache/MediaItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(ILcom/miui/gallery/provider/cache/Filter$Comparator;Ljava/lang/String;)V
    .locals 0
    .param p1, "column"    # I
    .param p2, "comparator"    # Lcom/miui/gallery/provider/cache/Filter$Comparator;
    .param p3, "argument"    # Ljava/lang/String;

    .prologue
    .line 822
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/provider/cache/Filter$CompareFilter;-><init>(ILcom/miui/gallery/provider/cache/Filter$Comparator;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic filter(Lcom/miui/gallery/provider/cache/CacheItem;)Lcom/miui/gallery/provider/cache/CacheItem;
    .locals 1

    .prologue
    .line 822
    check-cast p1, Lcom/miui/gallery/provider/cache/MediaItem;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$3;->filter(Lcom/miui/gallery/provider/cache/MediaItem;)Lcom/miui/gallery/provider/cache/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lcom/miui/gallery/provider/cache/MediaItem;)Lcom/miui/gallery/provider/cache/MediaItem;
    .locals 2
    .param p1, "item"    # Lcom/miui/gallery/provider/cache/MediaItem;

    .prologue
    .line 829
    invoke-virtual {p1}, Lcom/miui/gallery/provider/cache/MediaItem;->getAliasHidden()Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/cache/CacheItem;->FALSE:Ljava/lang/Long;

    if-ne v0, v1, :cond_0

    .line 832
    .end local p1    # "item":Lcom/miui/gallery/provider/cache/MediaItem;
    :goto_0
    return-object p1

    .restart local p1    # "item":Lcom/miui/gallery/provider/cache/MediaItem;
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method
