.class Lcom/miui/gallery/provider/cache/SearchHistoryItem$QueryFactory$TitleFilter;
.super Lcom/miui/gallery/provider/cache/Filter$CompareFilter;
.source "SearchHistoryItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cache/SearchHistoryItem$QueryFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TitleFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/provider/cache/Filter$CompareFilter",
        "<",
        "Lcom/miui/gallery/provider/cache/SearchHistoryItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/miui/gallery/provider/cache/Filter$Comparator;Ljava/lang/String;)V
    .locals 1
    .param p1, "comparator"    # Lcom/miui/gallery/provider/cache/Filter$Comparator;
    .param p2, "argument"    # Ljava/lang/String;

    .prologue
    .line 237
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/gallery/provider/cache/Filter$CompareFilter;-><init>(ILcom/miui/gallery/provider/cache/Filter$Comparator;Ljava/lang/String;)V

    .line 238
    return-void
.end method


# virtual methods
.method public bridge synthetic filter(Lcom/miui/gallery/provider/cache/CacheItem;)Lcom/miui/gallery/provider/cache/CacheItem;
    .locals 1

    .prologue
    .line 235
    check-cast p1, Lcom/miui/gallery/provider/cache/SearchHistoryItem;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/provider/cache/SearchHistoryItem$QueryFactory$TitleFilter;->filter(Lcom/miui/gallery/provider/cache/SearchHistoryItem;)Lcom/miui/gallery/provider/cache/SearchHistoryItem;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lcom/miui/gallery/provider/cache/SearchHistoryItem;)Lcom/miui/gallery/provider/cache/SearchHistoryItem;
    .locals 2
    .param p1, "item"    # Lcom/miui/gallery/provider/cache/SearchHistoryItem;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/SearchHistoryItem$QueryFactory$TitleFilter;->mComparator:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    sget-object v1, Lcom/miui/gallery/provider/cache/Filter$Comparator;->LIKE:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/provider/cache/SearchHistoryItem$QueryFactory$TitleFilter;->mArgument:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p1, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/gallery/provider/cache/SearchHistoryItem$QueryFactory$TitleFilter;->mArgument:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/cache/SearchHistoryItem$QueryFactory;->access$200(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    .end local p1    # "item":Lcom/miui/gallery/provider/cache/SearchHistoryItem;
    :goto_0
    return-object p1

    .restart local p1    # "item":Lcom/miui/gallery/provider/cache/SearchHistoryItem;
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method
