.class public Lcom/miui/gallery/provider/cache/SearchIconItem$QueryFactory;
.super Ljava/lang/Object;
.source "SearchIconItem.java"

# interfaces
.implements Lcom/miui/gallery/provider/cache/CacheItem$QueryFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cache/SearchIconItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/provider/cache/CacheItem$QueryFactory",
        "<",
        "Lcom/miui/gallery/provider/cache/SearchIconItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComparator(IZ)Ljava/util/Comparator;
    .locals 1
    .param p1, "index"    # I
    .param p2, "desc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/Comparator",
            "<",
            "Lcom/miui/gallery/provider/cache/SearchIconItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilter(ILcom/miui/gallery/provider/cache/Filter$Comparator;Ljava/lang/String;)Lcom/miui/gallery/provider/cache/Filter$CompareFilter;
    .locals 1
    .param p1, "index"    # I
    .param p2, "comparator"    # Lcom/miui/gallery/provider/cache/Filter$Comparator;
    .param p3, "rawArguments"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/miui/gallery/provider/cache/Filter$Comparator;",
            "Ljava/lang/String;",
            ")",
            "Lcom/miui/gallery/provider/cache/Filter$CompareFilter",
            "<",
            "Lcom/miui/gallery/provider/cache/SearchIconItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMapper()Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;
    .locals 1

    .prologue
    .line 143
    invoke-static {}, Lcom/miui/gallery/provider/cache/SearchIconItem;->access$100()Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;

    move-result-object v0

    return-object v0
.end method

.method public getMerger(I)Lcom/miui/gallery/provider/cache/CacheItem$Merger;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/miui/gallery/provider/cache/CacheItem$Merger",
            "<",
            "Lcom/miui/gallery/provider/cache/SearchIconItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    const/4 v0, 0x0

    return-object v0
.end method
