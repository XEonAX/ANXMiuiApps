.class Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$TitleFilter;
.super Lcom/miui/gallery/provider/cache/Filter$CompareFilter;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TitleFilter"
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
.field private mFilterType:I


# direct methods
.method public constructor <init>(Lcom/miui/gallery/provider/cache/Filter$Comparator;Ljava/lang/String;)V
    .locals 2
    .param p1, "comparator"    # Lcom/miui/gallery/provider/cache/Filter$Comparator;
    .param p2, "argument"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 859
    invoke-direct {p0, v0, p1, p2}, Lcom/miui/gallery/provider/cache/Filter$CompareFilter;-><init>(ILcom/miui/gallery/provider/cache/Filter$Comparator;Ljava/lang/String;)V

    .line 857
    iput v0, p0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$TitleFilter;->mFilterType:I

    .line 860
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$TitleFilter;->mArgument:Ljava/lang/String;

    const-string v1, "PANO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 861
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$TitleFilter;->mFilterType:I

    .line 865
    :cond_0
    :goto_0
    return-void

    .line 862
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$TitleFilter;->mArgument:Ljava/lang/String;

    const-string v1, "Screenshot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$TitleFilter;->mFilterType:I

    goto :goto_0
.end method

.method private isPanoItem(Lcom/miui/gallery/provider/cache/MediaItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/miui/gallery/provider/cache/MediaItem;

    .prologue
    .line 891
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$TitleFilter;->isPanoItemSize(Lcom/miui/gallery/provider/cache/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$TitleFilter;->isPanoItemNamed(Lcom/miui/gallery/provider/cache/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$TitleFilter;->isSecretAlbumItem(Lcom/miui/gallery/provider/cache/MediaItem;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPanoItemNamed(Lcom/miui/gallery/provider/cache/MediaItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/miui/gallery/provider/cache/MediaItem;

    .prologue
    .line 902
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$500(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$500(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PANO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPanoItemSize(Lcom/miui/gallery/provider/cache/MediaItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/miui/gallery/provider/cache/MediaItem;

    .prologue
    const/4 v0, 0x0

    .line 895
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$700(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$800(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 896
    invoke-static {p1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$700(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x438

    if-le v1, v2, :cond_0

    invoke-static {p1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$800(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$700(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$800(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 898
    :cond_0
    return v0
.end method

.method private isScreenshotItem(Lcom/miui/gallery/provider/cache/MediaItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/miui/gallery/provider/cache/MediaItem;

    .prologue
    .line 881
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$500(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$500(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Screenshot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSecretAlbumItem(Lcom/miui/gallery/provider/cache/MediaItem;)Z
    .locals 4
    .param p1, "item"    # Lcom/miui/gallery/provider/cache/MediaItem;

    .prologue
    .line 906
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$900(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/miui/gallery/provider/cache/MediaItem;->access$900(Lcom/miui/gallery/provider/cache/MediaItem;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x3e8

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic filter(Lcom/miui/gallery/provider/cache/CacheItem;)Lcom/miui/gallery/provider/cache/CacheItem;
    .locals 1

    .prologue
    .line 853
    check-cast p1, Lcom/miui/gallery/provider/cache/MediaItem;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$TitleFilter;->filter(Lcom/miui/gallery/provider/cache/MediaItem;)Lcom/miui/gallery/provider/cache/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lcom/miui/gallery/provider/cache/MediaItem;)Lcom/miui/gallery/provider/cache/MediaItem;
    .locals 3
    .param p1, "item"    # Lcom/miui/gallery/provider/cache/MediaItem;

    .prologue
    const/4 v0, 0x0

    .line 869
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$TitleFilter;->mComparator:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    sget-object v2, Lcom/miui/gallery/provider/cache/Filter$Comparator;->LIKE:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$TitleFilter;->mFilterType:I

    if-lez v1, :cond_0

    .line 870
    iget v1, p0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$TitleFilter;->mFilterType:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    move-object p1, v0

    .line 877
    .end local p1    # "item":Lcom/miui/gallery/provider/cache/MediaItem;
    :cond_1
    :goto_0
    return-object p1

    .line 872
    .restart local p1    # "item":Lcom/miui/gallery/provider/cache/MediaItem;
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$TitleFilter;->isPanoItem(Lcom/miui/gallery/provider/cache/MediaItem;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object p1, v0

    goto :goto_0

    .line 874
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$TitleFilter;->isScreenshotItem(Lcom/miui/gallery/provider/cache/MediaItem;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object p1, v0

    goto :goto_0

    .line 870
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
