.class Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$TypeFilter;
.super Lcom/miui/gallery/provider/cache/Filter$CompareFilter;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypeFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/provider/cache/Filter$CompareFilter",
        "<",
        "Lcom/miui/gallery/provider/cache/MediaItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mType:I


# direct methods
.method public constructor <init>(Lcom/miui/gallery/provider/cache/Filter$Comparator;Ljava/lang/String;)V
    .locals 1
    .param p1, "comparator"    # Lcom/miui/gallery/provider/cache/Filter$Comparator;
    .param p2, "argument"    # Ljava/lang/String;

    .prologue
    .line 963
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/gallery/provider/cache/Filter$CompareFilter;-><init>(ILcom/miui/gallery/provider/cache/Filter$Comparator;Ljava/lang/String;)V

    .line 964
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$TypeFilter;->mType:I

    .line 965
    return-void
.end method


# virtual methods
.method public bridge synthetic filter(Lcom/miui/gallery/provider/cache/CacheItem;)Lcom/miui/gallery/provider/cache/CacheItem;
    .locals 1

    .prologue
    .line 959
    check-cast p1, Lcom/miui/gallery/provider/cache/MediaItem;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$TypeFilter;->filter(Lcom/miui/gallery/provider/cache/MediaItem;)Lcom/miui/gallery/provider/cache/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lcom/miui/gallery/provider/cache/MediaItem;)Lcom/miui/gallery/provider/cache/MediaItem;
    .locals 2
    .param p1, "item"    # Lcom/miui/gallery/provider/cache/MediaItem;

    .prologue
    .line 969
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$TypeFilter;->mComparator:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    sget-object v1, Lcom/miui/gallery/provider/cache/Filter$Comparator;->EQUALS:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$1000(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$TypeFilter;->mType:I

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Numbers;->equals(Ljava/lang/Number;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 972
    .end local p1    # "item":Lcom/miui/gallery/provider/cache/MediaItem;
    :goto_0
    return-object p1

    .restart local p1    # "item":Lcom/miui/gallery/provider/cache/MediaItem;
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method
