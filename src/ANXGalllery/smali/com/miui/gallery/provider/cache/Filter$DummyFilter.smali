.class Lcom/miui/gallery/provider/cache/Filter$DummyFilter;
.super Lcom/miui/gallery/provider/cache/Filter;
.source "Filter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cache/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DummyFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/miui/gallery/provider/cache/CacheItem;",
        ">",
        "Lcom/miui/gallery/provider/cache/Filter",
        "<TT;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 276
    .local p0, "this":Lcom/miui/gallery/provider/cache/Filter$DummyFilter;, "Lcom/miui/gallery/provider/cache/Filter$DummyFilter<TT;>;"
    invoke-direct {p0}, Lcom/miui/gallery/provider/cache/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/provider/cache/Filter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/provider/cache/Filter$1;

    .prologue
    .line 276
    .local p0, "this":Lcom/miui/gallery/provider/cache/Filter$DummyFilter;, "Lcom/miui/gallery/provider/cache/Filter$DummyFilter<TT;>;"
    invoke-direct {p0}, Lcom/miui/gallery/provider/cache/Filter$DummyFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Lcom/miui/gallery/provider/cache/CacheItem;)Lcom/miui/gallery/provider/cache/CacheItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 280
    .local p0, "this":Lcom/miui/gallery/provider/cache/Filter$DummyFilter;, "Lcom/miui/gallery/provider/cache/Filter$DummyFilter<TT;>;"
    .local p1, "item":Lcom/miui/gallery/provider/cache/CacheItem;, "TT;"
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    .local p0, "this":Lcom/miui/gallery/provider/cache/Filter$DummyFilter;, "Lcom/miui/gallery/provider/cache/Filter$DummyFilter<TT;>;"
    const-string v0, "DummyFilter"

    return-object v0
.end method
