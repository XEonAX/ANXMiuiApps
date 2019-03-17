.class final Lcom/miui/gallery/provider/cache/SearchIconItem$1;
.super Ljava/lang/Object;
.source "SearchIconItem.java"

# interfaces
.implements Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cache/SearchIconItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndex(Ljava/lang/String;)I
    .locals 2
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-static {}, Lcom/miui/gallery/provider/cache/SearchIconItem;->access$000()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 132
    .local v0, "index":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 133
    const/4 v1, -0x1

    .line 135
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method
