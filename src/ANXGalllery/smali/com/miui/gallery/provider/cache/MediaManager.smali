.class public Lcom/miui/gallery/provider/cache/MediaManager;
.super Lcom/miui/gallery/provider/cache/CacheManager;
.source "MediaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/provider/cache/MediaManager$Group;,
        Lcom/miui/gallery/provider/cache/MediaManager$InitializeListener;,
        Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;,
        Lcom/miui/gallery/provider/cache/MediaManager$SingletonHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/provider/cache/CacheManager",
        "<",
        "Lcom/miui/gallery/provider/cache/MediaItem;",
        ">;"
    }
.end annotation


# static fields
.field private static sFeatureComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/miui/gallery/provider/cache/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private static sTimeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/miui/gallery/provider/cache/MediaItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlbumDelegate:Lcom/miui/gallery/provider/cache/AlbumDelegate;

.field private mFavoritesDelegate:Lcom/miui/gallery/provider/cache/FavoritesDelegate;

.field private mFirstPartIds:Ljava/lang/String;

.field private mFullLoadDoneSignal:Ljava/util/concurrent/CountDownLatch;

.field private final mInitializeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/provider/cache/MediaManager$InitializeListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mInitialized:Z

.field private volatile mIsFullLoadDone:Z

.field private volatile mIsLoadStarted:Z

.field private volatile mIsMinimumLoadDone:Z

.field private final mMinimumLoadLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Lcom/miui/gallery/provider/cache/CacheManager;-><init>()V

    .line 49
    iput-boolean v1, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mIsLoadStarted:Z

    .line 51
    iput-boolean v1, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mIsFullLoadDone:Z

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mMinimumLoadLock:Ljava/lang/Object;

    .line 53
    iput-boolean v1, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mIsMinimumLoadDone:Z

    .line 54
    iput-boolean v1, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mInitialized:Z

    .line 62
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mFullLoadDoneSignal:Ljava/util/concurrent/CountDownLatch;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mInitializeListeners:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Lcom/miui/gallery/provider/cache/AlbumDelegate;

    invoke-direct {v0}, Lcom/miui/gallery/provider/cache/AlbumDelegate;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mAlbumDelegate:Lcom/miui/gallery/provider/cache/AlbumDelegate;

    .line 65
    new-instance v0, Lcom/miui/gallery/provider/cache/FavoritesDelegate;

    invoke-direct {v0}, Lcom/miui/gallery/provider/cache/FavoritesDelegate;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mFavoritesDelegate:Lcom/miui/gallery/provider/cache/FavoritesDelegate;

    .line 66
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mCache:Ljava/util/List;

    .line 67
    new-instance v0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;

    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mAlbumDelegate:Lcom/miui/gallery/provider/cache/AlbumDelegate;

    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mFavoritesDelegate:Lcom/miui/gallery/provider/cache/FavoritesDelegate;

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/provider/cache/MediaItem$Generator;-><init>(Lcom/miui/gallery/provider/cache/AlbumDelegate;Lcom/miui/gallery/provider/cache/FavoritesDelegate;)V

    iput-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mGenerator:Lcom/miui/gallery/provider/cache/CacheItem$Generator;

    .line 68
    new-instance v0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory;

    invoke-direct {v0}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mQueryFactory:Lcom/miui/gallery/provider/cache/CacheItem$QueryFactory;

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/provider/cache/MediaManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/provider/cache/MediaManager$1;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/miui/gallery/provider/cache/MediaManager;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/provider/cache/MediaManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaManager;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mFirstPartIds:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/miui/gallery/provider/cache/MediaManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mFirstPartIds:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/miui/gallery/provider/cache/MediaManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mIsMinimumLoadDone:Z

    return p1
.end method

.method static synthetic access$200(Lcom/miui/gallery/provider/cache/MediaManager;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/provider/cache/MediaManager;->locationCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/miui/gallery/provider/cache/MediaManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mInitialized:Z

    return p1
.end method

.method static synthetic access$402(Lcom/miui/gallery/provider/cache/MediaManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mIsFullLoadDone:Z

    return p1
.end method

.method static synthetic access$500(Lcom/miui/gallery/provider/cache/MediaManager;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaManager;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mFullLoadDoneSignal:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/provider/cache/MediaManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaManager;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mInitializeListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/provider/cache/MediaManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaManager;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mMinimumLoadLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/provider/cache/MediaManager;)Lcom/miui/gallery/provider/cache/AlbumDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaManager;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mAlbumDelegate:Lcom/miui/gallery/provider/cache/AlbumDelegate;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/provider/cache/MediaManager;)Lcom/miui/gallery/provider/cache/FavoritesDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaManager;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mFavoritesDelegate:Lcom/miui/gallery/provider/cache/FavoritesDelegate;

    return-object v0
.end method

.method private bindGroup(Ljava/util/List;Landroid/database/Cursor;)V
    .locals 8
    .param p2, "bindCursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/provider/cache/MediaManager$Group;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/cache/MediaManager$Group;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 253
    .local v0, "counts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 254
    .local v4, "startPos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 256
    .local v3, "locations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/provider/cache/MediaManager$Group;

    .line 257
    .local v2, "group":Lcom/miui/gallery/provider/cache/MediaManager$Group;
    iget v6, v2, Lcom/miui/gallery/provider/cache/MediaManager$Group;->start:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    iget v6, v2, Lcom/miui/gallery/provider/cache/MediaManager$Group;->count:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-static {}, Lcom/miui/gallery/data/LocationManager;->getInstance()Lcom/miui/gallery/data/LocationManager;

    move-result-object v6

    iget-object v7, v2, Lcom/miui/gallery/provider/cache/MediaManager$Group;->itemLocations:Ljava/util/List;

    invoke-virtual {v6, v7}, Lcom/miui/gallery/data/LocationManager;->generateTitleLine(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 262
    .end local v2    # "group":Lcom/miui/gallery/provider/cache/MediaManager$Group;
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 263
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    sget-object v5, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    if-ne v1, v5, :cond_2

    .line 264
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "extras":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 265
    .restart local v1    # "extras":Landroid/os/Bundle;
    invoke-interface {p2, v1}, Landroid/database/Cursor;->setExtras(Landroid/os/Bundle;)V

    .line 267
    :cond_2
    const-string v5, "extra_timeline_item_count_in_group"

    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 268
    const-string v5, "extra_timeline_group_start_pos"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 269
    const-string v5, "extra_timeline_group_start_locations"

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 270
    return-void
.end method

.method private static filterBestItems(Ljava/util/List;I)Ljava/util/List;
    .locals 2
    .param p1, "targetNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/provider/cache/MediaItem;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/provider/cache/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 552
    .local p0, "src":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/cache/MediaItem;>;"
    invoke-static {}, Lcom/miui/gallery/provider/cache/MediaManager;->getFeatureComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {p0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 553
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 554
    .local v0, "tempDst":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/cache/MediaItem;>;"
    invoke-static {}, Lcom/miui/gallery/provider/cache/MediaManager;->getTimeComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 555
    return-object v0
.end method

.method private generateGroup(Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/provider/cache/MediaItem;",
            ">;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/miui/gallery/provider/cache/MediaItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/provider/cache/MediaManager$Group;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/cache/MediaItem;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/miui/gallery/provider/cache/MediaItem;>;"
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 207
    const/4 v4, 0x0

    .line 208
    .local v4, "last":Lcom/miui/gallery/provider/cache/MediaItem;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 209
    .local v0, "count":Ljava/lang/Integer;
    const/4 v2, 0x0

    .line 210
    .local v2, "index":I
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 211
    .local v1, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/cache/MediaManager$Group;>;"
    const/4 v5, 0x0

    .line 212
    .local v5, "tempGroup":Lcom/miui/gallery/provider/cache/MediaManager$Group;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/provider/cache/MediaItem;

    .line 213
    .local v3, "item":Lcom/miui/gallery/provider/cache/MediaItem;
    if-nez v4, :cond_2

    .line 214
    move-object v4, v3

    .line 215
    new-instance v5, Lcom/miui/gallery/provider/cache/MediaManager$Group;

    .end local v5    # "tempGroup":Lcom/miui/gallery/provider/cache/MediaManager$Group;
    invoke-direct {v5, v10}, Lcom/miui/gallery/provider/cache/MediaManager$Group;-><init>(Lcom/miui/gallery/provider/cache/MediaManager$1;)V

    .line 216
    .restart local v5    # "tempGroup":Lcom/miui/gallery/provider/cache/MediaManager$Group;
    iput v2, v5, Lcom/miui/gallery/provider/cache/MediaManager$Group;->start:I

    .line 217
    iget-object v7, v5, Lcom/miui/gallery/provider/cache/MediaManager$Group;->itemLocations:Ljava/util/List;

    invoke-virtual {v3}, Lcom/miui/gallery/provider/cache/MediaItem;->getLocation()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-virtual {v3}, Lcom/miui/gallery/provider/cache/MediaItem;->getLocation()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 219
    invoke-virtual {v3}, Lcom/miui/gallery/provider/cache/MediaItem;->getLocation()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/miui/gallery/provider/cache/MediaManager$Group;->validLocation:Ljava/lang/String;

    .line 242
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 243
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ne v2, v7, :cond_0

    .line 244
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v5, Lcom/miui/gallery/provider/cache/MediaManager$Group;->count:I

    .line 245
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 221
    :cond_2
    invoke-interface {p2, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-nez v7, :cond_3

    .line 222
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 223
    iget-object v7, v5, Lcom/miui/gallery/provider/cache/MediaManager$Group;->itemLocations:Ljava/util/List;

    invoke-virtual {v3}, Lcom/miui/gallery/provider/cache/MediaItem;->getLocation()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v7, v5, Lcom/miui/gallery/provider/cache/MediaManager$Group;->validLocation:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v3}, Lcom/miui/gallery/provider/cache/MediaItem;->getLocation()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 225
    invoke-virtual {v3}, Lcom/miui/gallery/provider/cache/MediaItem;->getLocation()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/miui/gallery/provider/cache/MediaManager$Group;->validLocation:Ljava/lang/String;

    goto :goto_1

    .line 229
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v5, Lcom/miui/gallery/provider/cache/MediaManager$Group;->count:I

    .line 230
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    new-instance v5, Lcom/miui/gallery/provider/cache/MediaManager$Group;

    .end local v5    # "tempGroup":Lcom/miui/gallery/provider/cache/MediaManager$Group;
    invoke-direct {v5, v10}, Lcom/miui/gallery/provider/cache/MediaManager$Group;-><init>(Lcom/miui/gallery/provider/cache/MediaManager$1;)V

    .line 234
    .restart local v5    # "tempGroup":Lcom/miui/gallery/provider/cache/MediaManager$Group;
    iput v2, v5, Lcom/miui/gallery/provider/cache/MediaManager$Group;->start:I

    .line 235
    iget-object v7, v5, Lcom/miui/gallery/provider/cache/MediaManager$Group;->itemLocations:Ljava/util/List;

    invoke-virtual {v3}, Lcom/miui/gallery/provider/cache/MediaItem;->getLocation()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    invoke-virtual {v3}, Lcom/miui/gallery/provider/cache/MediaItem;->getLocation()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 237
    invoke-virtual {v3}, Lcom/miui/gallery/provider/cache/MediaItem;->getLocation()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/miui/gallery/provider/cache/MediaManager$Group;->validLocation:Ljava/lang/String;

    .line 239
    :cond_4
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 240
    move-object v4, v3

    goto :goto_1

    .line 248
    .end local v3    # "item":Lcom/miui/gallery/provider/cache/MediaItem;
    :cond_5
    return-object v1
.end method

.method private generateMonthItems(Ljava/util/List;)Ljava/util/List;
    .locals 48
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/provider/cache/MediaItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/provider/cache/MediaManager$Group;",
            ">;"
        }
    .end annotation

    .prologue
    .line 298
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/cache/MediaItem;>;"
    new-instance v30, Lcom/miui/gallery/provider/cache/MediaManager$2;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/miui/gallery/provider/cache/MediaManager$2;-><init>(Lcom/miui/gallery/provider/cache/MediaManager;)V

    .line 309
    .local v30, "monthComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/miui/gallery/provider/cache/MediaItem;>;"
    new-instance v23, Ljava/util/LinkedList;

    invoke-direct/range {v23 .. v23}, Ljava/util/LinkedList;-><init>()V

    .line 311
    .local v23, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/cache/MediaManager$Group;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    .line 313
    .local v38, "start":J
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/provider/cache/MediaManager;->generateGroup(Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v32

    .line 314
    .local v32, "monthGroups":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/cache/MediaManager$Group;>;"
    const-string v40, ".provider.cache.MediaManager"

    const-string v41, "generate date groups cost %d"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v42

    sub-long v42, v42, v38

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v42

    invoke-static/range {v40 .. v42}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 317
    new-instance v27, Lcom/miui/gallery/provider/cache/MediaManager$3;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/miui/gallery/provider/cache/MediaManager$3;-><init>(Lcom/miui/gallery/provider/cache/MediaManager;)V

    .line 328
    .local v27, "locationComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/miui/gallery/provider/cache/MediaItem;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    .line 330
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :cond_0
    :goto_0
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_12

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/miui/gallery/provider/cache/MediaManager$Group;

    .line 331
    .local v31, "monthGroup":Lcom/miui/gallery/provider/cache/MediaManager$Group;
    const/16 v37, 0x0

    .line 332
    .local v37, "unCategorized":Lcom/miui/gallery/provider/cache/MediaManager$Group;
    const/16 v26, 0x0

    .line 333
    .local v26, "lastValidGroup":Lcom/miui/gallery/provider/cache/MediaManager$Group;
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v5

    .line 334
    .local v5, "batchDateIndex":I
    move-object/from16 v0, v31

    iget v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->start:I

    move/from16 v40, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->start:I

    move/from16 v42, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->count:I

    move/from16 v43, v0

    add-int v42, v42, v43

    move-object/from16 v0, p1

    move/from16 v1, v40

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/provider/cache/MediaManager;->generateGroup(Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v29

    .line 335
    .local v29, "locationGroups":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/cache/MediaManager$Group;>;"
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v42

    :goto_1
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_f

    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/miui/gallery/provider/cache/MediaManager$Group;

    .line 336
    .local v28, "locationGroup":Lcom/miui/gallery/provider/cache/MediaManager$Group;
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v40

    move/from16 v0, v40

    if-le v0, v5, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v40

    add-int/lit8 v40, v40, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/miui/gallery/provider/cache/MediaManager$Group;

    move-object/from16 v26, v40

    .line 338
    :goto_2
    move-object/from16 v0, v28

    iget v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->start:I

    move/from16 v40, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->start:I

    move/from16 v43, v0

    add-int v40, v40, v43

    move/from16 v0, v40

    move-object/from16 v1, v28

    iput v0, v1, Lcom/miui/gallery/provider/cache/MediaManager$Group;->start:I

    .line 339
    if-nez v37, :cond_5

    .line 340
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/miui/gallery/provider/cache/MediaManager;->isValidLocationGroup(Lcom/miui/gallery/provider/cache/MediaManager$Group;)Z

    move-result v40

    if-eqz v40, :cond_4

    .line 342
    if-eqz v26, :cond_1

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->validLocation:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->validLocation:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/provider/cache/MediaManager;->locationCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v40

    if-eqz v40, :cond_3

    .line 344
    :cond_1
    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 336
    :cond_2
    const/16 v26, 0x0

    goto :goto_2

    .line 347
    :cond_3
    move-object/from16 v0, v26

    iget v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->count:I

    move/from16 v40, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->count:I

    move/from16 v43, v0

    add-int v40, v40, v43

    move/from16 v0, v40

    move-object/from16 v1, v26

    iput v0, v1, Lcom/miui/gallery/provider/cache/MediaManager$Group;->count:I

    .line 348
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->itemLocations:Ljava/util/List;

    move-object/from16 v40, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->itemLocations:Ljava/util/List;

    move-object/from16 v43, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 352
    :cond_4
    move-object/from16 v37, v28

    goto/16 :goto_1

    .line 356
    :cond_5
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->validLocation:Ljava/lang/String;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-nez v40, :cond_6

    .line 358
    if-eqz v26, :cond_9

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->validLocation:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->validLocation:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/provider/cache/MediaManager;->locationCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v40

    if-nez v40, :cond_9

    .line 360
    move-object/from16 v0, v26

    iget v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->count:I

    move/from16 v40, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->count:I

    move/from16 v43, v0

    add-int v40, v40, v43

    move/from16 v0, v40

    move-object/from16 v1, v26

    iput v0, v1, Lcom/miui/gallery/provider/cache/MediaManager$Group;->count:I

    .line 361
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->itemLocations:Ljava/util/List;

    move-object/from16 v40, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->itemLocations:Ljava/util/List;

    move-object/from16 v43, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 362
    const/16 v37, 0x0

    .line 372
    :cond_6
    :goto_3
    if-eqz v37, :cond_7

    .line 373
    if-eqz v26, :cond_b

    move-object/from16 v0, v26

    iget v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->start:I

    move/from16 v40, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->count:I

    move/from16 v43, v0

    add-int v40, v40, v43

    add-int/lit8 v40, v40, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/miui/gallery/provider/cache/MediaItem;

    invoke-virtual/range {v40 .. v40}, Lcom/miui/gallery/provider/cache/MediaItem;->getAliasSortTime()J

    move-result-wide v44

    move-object/from16 v0, v37

    iget v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->start:I

    move/from16 v40, v0

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/miui/gallery/provider/cache/MediaItem;

    invoke-virtual/range {v40 .. v40}, Lcom/miui/gallery/provider/cache/MediaItem;->getAliasSortTime()J

    move-result-wide v46

    sub-long v44, v44, v46

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .line 374
    .local v6, "beforeCompare":J
    :goto_4
    move-object/from16 v0, v37

    iget v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->start:I

    move/from16 v40, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->count:I

    move/from16 v43, v0

    add-int v40, v40, v43

    add-int/lit8 v40, v40, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/miui/gallery/provider/cache/MediaItem;

    invoke-virtual/range {v40 .. v40}, Lcom/miui/gallery/provider/cache/MediaItem;->getAliasSortTime()J

    move-result-wide v44

    move-object/from16 v0, v28

    iget v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->start:I

    move/from16 v40, v0

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/miui/gallery/provider/cache/MediaItem;

    invoke-virtual/range {v40 .. v40}, Lcom/miui/gallery/provider/cache/MediaItem;->getAliasSortTime()J

    move-result-wide v46

    sub-long v44, v44, v46

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->abs(J)J

    move-result-wide v34

    .line 375
    .local v34, "nextCompare":J
    cmp-long v40, v6, v34

    if-gtz v40, :cond_c

    .line 377
    move-object/from16 v0, v26

    iget v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->count:I

    move/from16 v40, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->count:I

    move/from16 v43, v0

    add-int v40, v40, v43

    move/from16 v0, v40

    move-object/from16 v1, v26

    iput v0, v1, Lcom/miui/gallery/provider/cache/MediaManager$Group;->count:I

    .line 378
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->itemLocations:Ljava/util/List;

    move-object/from16 v40, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->itemLocations:Ljava/util/List;

    move-object/from16 v43, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 379
    const/16 v37, 0x0

    .line 390
    .end local v6    # "beforeCompare":J
    .end local v34    # "nextCompare":J
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/miui/gallery/provider/cache/MediaManager;->isValidLocationGroup(Lcom/miui/gallery/provider/cache/MediaManager$Group;)Z

    move-result v40

    if-eqz v40, :cond_e

    .line 392
    if-eqz v26, :cond_8

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->validLocation:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->validLocation:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/provider/cache/MediaManager;->locationCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v40

    if-eqz v40, :cond_d

    .line 394
    :cond_8
    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 363
    :cond_9
    if-eqz v26, :cond_a

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->validLocation:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->validLocation:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/provider/cache/MediaManager;->locationCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v40

    if-nez v40, :cond_6

    .line 365
    :cond_a
    move-object/from16 v0, v37

    iget v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->start:I

    move/from16 v40, v0

    move/from16 v0, v40

    move-object/from16 v1, v28

    iput v0, v1, Lcom/miui/gallery/provider/cache/MediaManager$Group;->start:I

    .line 366
    move-object/from16 v0, v28

    iget v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->count:I

    move/from16 v40, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->count:I

    move/from16 v43, v0

    add-int v40, v40, v43

    move/from16 v0, v40

    move-object/from16 v1, v28

    iput v0, v1, Lcom/miui/gallery/provider/cache/MediaManager$Group;->count:I

    .line 367
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->itemLocations:Ljava/util/List;

    move-object/from16 v40, v0

    const/16 v43, 0x0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->itemLocations:Ljava/util/List;

    move-object/from16 v44, v0

    move-object/from16 v0, v40

    move/from16 v1, v43

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 368
    const/16 v37, 0x0

    goto/16 :goto_3

    .line 373
    :cond_b
    const-wide v6, 0x7fffffffffffffffL

    goto/16 :goto_4

    .line 382
    .restart local v6    # "beforeCompare":J
    .restart local v34    # "nextCompare":J
    :cond_c
    move-object/from16 v0, v37

    iget v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->start:I

    move/from16 v40, v0

    move/from16 v0, v40

    move-object/from16 v1, v28

    iput v0, v1, Lcom/miui/gallery/provider/cache/MediaManager$Group;->start:I

    .line 383
    move-object/from16 v0, v28

    iget v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->count:I

    move/from16 v40, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->count:I

    move/from16 v43, v0

    add-int v40, v40, v43

    move/from16 v0, v40

    move-object/from16 v1, v28

    iput v0, v1, Lcom/miui/gallery/provider/cache/MediaManager$Group;->count:I

    .line 384
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->itemLocations:Ljava/util/List;

    move-object/from16 v40, v0

    const/16 v43, 0x0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->itemLocations:Ljava/util/List;

    move-object/from16 v44, v0

    move-object/from16 v0, v40

    move/from16 v1, v43

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 385
    const/16 v37, 0x0

    goto/16 :goto_5

    .line 397
    .end local v6    # "beforeCompare":J
    .end local v34    # "nextCompare":J
    :cond_d
    move-object/from16 v0, v26

    iget v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->count:I

    move/from16 v40, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->count:I

    move/from16 v43, v0

    add-int v40, v40, v43

    move/from16 v0, v40

    move-object/from16 v1, v26

    iput v0, v1, Lcom/miui/gallery/provider/cache/MediaManager$Group;->count:I

    .line 398
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->itemLocations:Ljava/util/List;

    move-object/from16 v40, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->itemLocations:Ljava/util/List;

    move-object/from16 v43, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 402
    :cond_e
    move-object/from16 v37, v28

    goto/16 :goto_1

    .line 406
    .end local v28    # "locationGroup":Lcom/miui/gallery/provider/cache/MediaManager$Group;
    :cond_f
    if-eqz v37, :cond_0

    .line 407
    if-nez v26, :cond_10

    .line 408
    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 411
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/miui/gallery/provider/cache/MediaManager;->isValidLocationGroup(Lcom/miui/gallery/provider/cache/MediaManager$Group;)Z

    move-result v40

    if-eqz v40, :cond_11

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->validLocation:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->validLocation:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/provider/cache/MediaManager;->locationCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v40

    if-eqz v40, :cond_11

    .line 413
    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 417
    :cond_11
    move-object/from16 v0, v26

    iget v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->count:I

    move/from16 v40, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->count:I

    move/from16 v42, v0

    add-int v40, v40, v42

    move/from16 v0, v40

    move-object/from16 v1, v26

    iput v0, v1, Lcom/miui/gallery/provider/cache/MediaManager$Group;->count:I

    .line 418
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->itemLocations:Ljava/util/List;

    move-object/from16 v40, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->itemLocations:Ljava/util/List;

    move-object/from16 v42, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 421
    .end local v5    # "batchDateIndex":I
    .end local v26    # "lastValidGroup":Lcom/miui/gallery/provider/cache/MediaManager$Group;
    .end local v29    # "locationGroups":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/cache/MediaManager$Group;>;"
    .end local v31    # "monthGroup":Lcom/miui/gallery/provider/cache/MediaManager$Group;
    .end local v37    # "unCategorized":Lcom/miui/gallery/provider/cache/MediaManager$Group;
    :cond_12
    const-string v40, ".provider.cache.MediaManager"

    const-string v41, "generate location groups cost %d"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v42

    sub-long v42, v42, v38

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v42

    invoke-static/range {v40 .. v42}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 425
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    .line 427
    new-instance v21, Ljava/util/LinkedList;

    invoke-direct/range {v21 .. v21}, Ljava/util/LinkedList;-><init>()V

    .line 429
    .local v21, "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/cache/MediaItem;>;"
    new-instance v17, Lcom/miui/gallery/provider/cache/MediaManager$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/miui/gallery/provider/cache/MediaManager$4;-><init>(Lcom/miui/gallery/provider/cache/MediaManager;)V

    .line 439
    .local v17, "dayComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/miui/gallery/provider/cache/MediaItem;>;"
    const-string v40, ".provider.cache.MediaManager"

    const-string v41, "image feature initialized %s"

    invoke-static {}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getInstance()Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->isInitialized()Z

    move-result v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v42

    invoke-static/range {v40 .. v42}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 441
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v40

    :goto_6
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v41

    if-eqz v41, :cond_1e

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/miui/gallery/provider/cache/MediaManager$Group;

    .line 442
    .local v22, "group":Lcom/miui/gallery/provider/cache/MediaManager$Group;
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    .line 443
    .local v11, "clusterItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/cache/MediaItem;>;"
    move-object/from16 v0, v22

    iget v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->count:I

    move/from16 v41, v0

    const/16 v42, 0xa

    move/from16 v0, v41

    move/from16 v1, v42

    if-gt v0, v1, :cond_15

    .line 444
    move-object/from16 v0, v22

    iget v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->start:I

    move/from16 v41, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->start:I

    move/from16 v42, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->count:I

    move/from16 v43, v0

    add-int v42, v42, v43

    move-object/from16 v0, p1

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 478
    :cond_13
    :goto_7
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v8

    .line 479
    .local v8, "beforeSize":I
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v41

    const/16 v42, 0x28

    move/from16 v0, v41

    move/from16 v1, v42

    if-le v0, v1, :cond_1c

    .line 481
    const/high16 v41, 0x42200000    # 40.0f

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v42

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v36, v41, v42

    .line 482
    .local v36, "ratio":F
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v11, v1}, Lcom/miui/gallery/provider/cache/MediaManager;->generateGroup(Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v19

    .line 483
    .local v19, "dayGroups":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/cache/MediaManager$Group;>;"
    const/16 v33, 0x0

    .line 484
    .local v33, "num":I
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :cond_14
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v42

    if-eqz v42, :cond_1d

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/miui/gallery/provider/cache/MediaManager$Group;

    .line 485
    .local v18, "dayGroup":Lcom/miui/gallery/provider/cache/MediaManager$Group;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->count:I

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    mul-float v42, v42, v36

    move/from16 v0, v42

    float-to-double v0, v0

    move-wide/from16 v42, v0

    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v42

    move-wide/from16 v0, v42

    double-to-int v0, v0

    move/from16 v16, v0

    .line 486
    .local v16, "count":I
    if-lez v16, :cond_14

    .line 487
    move-object/from16 v0, v18

    iget v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->start:I

    move/from16 v42, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->start:I

    move/from16 v43, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->count:I

    move/from16 v44, v0

    add-int v43, v43, v44

    move/from16 v0, v42

    move/from16 v1, v43

    invoke-interface {v11, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/cache/MediaManager;->filterBestItems(Ljava/util/List;I)Ljava/util/List;

    move-result-object v10

    .line 488
    .local v10, "bestSub":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/cache/MediaItem;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v42

    add-int v33, v33, v42

    .line 489
    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 490
    const/16 v42, 0x28

    move/from16 v0, v33

    move/from16 v1, v42

    if-lt v0, v1, :cond_14

    .line 491
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_8
    add-int/lit8 v41, v33, -0x28

    move/from16 v0, v24

    move/from16 v1, v41

    if-ge v0, v1, :cond_1d

    .line 492
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v41

    add-int/lit8 v41, v41, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 491
    add-int/lit8 v24, v24, 0x1

    goto :goto_8

    .line 446
    .end local v8    # "beforeSize":I
    .end local v10    # "bestSub":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/cache/MediaItem;>;"
    .end local v16    # "count":I
    .end local v18    # "dayGroup":Lcom/miui/gallery/provider/cache/MediaManager$Group;
    .end local v19    # "dayGroups":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/cache/MediaManager$Group;>;"
    .end local v24    # "i":I
    .end local v33    # "num":I
    .end local v36    # "ratio":F
    :cond_15
    invoke-static {}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getInstance()Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->isInitialized()Z

    move-result v41

    if-eqz v41, :cond_1b

    .line 448
    const-wide/16 v14, -0x1

    .line 449
    .local v14, "clusterGroupId":J
    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    .line 450
    .local v12, "clusterBestScore":D
    const/4 v9, -0x1

    .line 451
    .local v9, "bestScoreIndex":I
    move-object/from16 v0, v22

    iget v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->start:I

    move/from16 v24, v0

    .restart local v24    # "i":I
    :goto_9
    move-object/from16 v0, v22

    iget v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->start:I

    move/from16 v41, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->count:I

    move/from16 v42, v0

    add-int v41, v41, v42

    move/from16 v0, v24

    move/from16 v1, v41

    if-ge v0, v1, :cond_1a

    .line 452
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/miui/gallery/provider/cache/MediaItem;

    .line 453
    .local v25, "item":Lcom/miui/gallery/provider/cache/MediaItem;
    invoke-static {}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getInstance()Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;

    move-result-object v41

    invoke-virtual/range {v25 .. v25}, Lcom/miui/gallery/provider/cache/MediaItem;->getId()J

    move-result-wide v42

    invoke-virtual/range {v41 .. v43}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getImageFeature(J)Lcom/miui/gallery/assistant/model/TinyImageFeature;

    move-result-object v20

    .line 454
    .local v20, "feature":Lcom/miui/gallery/assistant/model/TinyImageFeature;
    if-eqz v20, :cond_19

    .line 455
    invoke-virtual/range {v20 .. v20}, Lcom/miui/gallery/assistant/model/TinyImageFeature;->getClusterGroupId()J

    move-result-wide v42

    cmp-long v41, v42, v14

    if-eqz v41, :cond_18

    .line 456
    const/16 v41, -0x1

    move/from16 v0, v41

    if-eq v9, v0, :cond_16

    .line 457
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    :cond_16
    invoke-virtual/range {v20 .. v20}, Lcom/miui/gallery/assistant/model/TinyImageFeature;->getClusterGroupId()J

    move-result-wide v14

    .line 460
    invoke-virtual/range {v20 .. v20}, Lcom/miui/gallery/assistant/model/TinyImageFeature;->getScore()D

    move-result-wide v12

    .line 461
    move/from16 v9, v24

    .line 451
    :cond_17
    :goto_a
    add-int/lit8 v24, v24, 0x1

    goto :goto_9

    .line 462
    :cond_18
    invoke-virtual/range {v20 .. v20}, Lcom/miui/gallery/assistant/model/TinyImageFeature;->getScore()D

    move-result-wide v42

    cmpl-double v41, v42, v12

    if-lez v41, :cond_17

    .line 463
    invoke-virtual/range {v20 .. v20}, Lcom/miui/gallery/assistant/model/TinyImageFeature;->getScore()D

    move-result-wide v12

    .line 464
    move/from16 v9, v24

    goto :goto_a

    .line 467
    :cond_19
    move-object/from16 v0, v25

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 470
    .end local v20    # "feature":Lcom/miui/gallery/assistant/model/TinyImageFeature;
    .end local v25    # "item":Lcom/miui/gallery/provider/cache/MediaItem;
    :cond_1a
    const/16 v41, -0x1

    move/from16 v0, v41

    if-eq v9, v0, :cond_13

    .line 471
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 474
    .end local v9    # "bestScoreIndex":I
    .end local v12    # "clusterBestScore":D
    .end local v14    # "clusterGroupId":J
    .end local v24    # "i":I
    :cond_1b
    move-object/from16 v0, v22

    iget v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->start:I

    move/from16 v41, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->start:I

    move/from16 v42, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->count:I

    move/from16 v43, v0

    add-int v42, v42, v43

    move-object/from16 v0, p1

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_7

    .line 499
    .restart local v8    # "beforeSize":I
    :cond_1c
    move-object/from16 v0, v21

    invoke-interface {v0, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 501
    :cond_1d
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v4

    .line 502
    .local v4, "afterSize":I
    move-object/from16 v0, v22

    iput v8, v0, Lcom/miui/gallery/provider/cache/MediaManager$Group;->start:I

    .line 503
    sub-int v41, v4, v8

    move/from16 v0, v41

    move-object/from16 v1, v22

    iput v0, v1, Lcom/miui/gallery/provider/cache/MediaManager$Group;->count:I

    goto/16 :goto_6

    .line 505
    .end local v4    # "afterSize":I
    .end local v8    # "beforeSize":I
    .end local v11    # "clusterItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/cache/MediaItem;>;"
    .end local v22    # "group":Lcom/miui/gallery/provider/cache/MediaManager$Group;
    :cond_1e
    const-string v40, ".provider.cache.MediaManager"

    const-string v41, "filter items cost %d"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v42

    sub-long v42, v42, v38

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v42

    invoke-static/range {v40 .. v42}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 507
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->clear()V

    .line 508
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 510
    return-object v23
.end method

.method private static getFeatureComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/miui/gallery/provider/cache/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 517
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaManager;->sFeatureComparator:Ljava/util/Comparator;

    if-nez v0, :cond_0

    .line 518
    new-instance v0, Lcom/miui/gallery/provider/cache/MediaManager$5;

    invoke-direct {v0}, Lcom/miui/gallery/provider/cache/MediaManager$5;-><init>()V

    sput-object v0, Lcom/miui/gallery/provider/cache/MediaManager;->sFeatureComparator:Ljava/util/Comparator;

    .line 536
    :cond_0
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaManager;->sFeatureComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public static getInstance()Lcom/miui/gallery/provider/cache/MediaManager;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaManager$SingletonHolder;->INSTANCE:Lcom/miui/gallery/provider/cache/MediaManager;

    return-object v0
.end method

.method private static getTimeComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/miui/gallery/provider/cache/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 540
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaManager;->sTimeComparator:Ljava/util/Comparator;

    if-nez v0, :cond_0

    .line 541
    new-instance v0, Lcom/miui/gallery/provider/cache/MediaManager$6;

    invoke-direct {v0}, Lcom/miui/gallery/provider/cache/MediaManager$6;-><init>()V

    sput-object v0, Lcom/miui/gallery/provider/cache/MediaManager;->sTimeComparator:Ljava/util/Comparator;

    .line 548
    :cond_0
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaManager;->sTimeComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method private isValidLocationGroup(Lcom/miui/gallery/provider/cache/MediaManager$Group;)Z
    .locals 2
    .param p1, "locationGroup"    # Lcom/miui/gallery/provider/cache/MediaManager$Group;

    .prologue
    .line 276
    iget v0, p1, Lcom/miui/gallery/provider/cache/MediaManager$Group;->count:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    iget-object v0, p1, Lcom/miui/gallery/provider/cache/MediaManager$Group;->validLocation:Ljava/lang/String;

    .line 277
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private locationCompare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "location1"    # Ljava/lang/String;
    .param p2, "location2"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 281
    invoke-static {}, Lcom/miui/gallery/data/LocationManager;->getInstance()Lcom/miui/gallery/data/LocationManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/miui/gallery/data/LocationManager;->subToCity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "city1":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/data/LocationManager;->getInstance()Lcom/miui/gallery/data/LocationManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/miui/gallery/data/LocationManager;->subToCity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "city2":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    .line 289
    :cond_0
    :goto_0
    return v2

    .line 286
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method private transformOrderByColumnIndex(I)I
    .locals 0
    .param p1, "orderByColumnIndex"    # I

    .prologue
    .line 559
    sparse-switch p1, :sswitch_data_0

    .line 570
    :goto_0
    return p1

    .line 561
    :sswitch_0
    const/16 p1, 0x1f

    .line 562
    goto :goto_0

    .line 564
    :sswitch_1
    const/16 p1, 0x13

    .line 565
    goto :goto_0

    .line 567
    :sswitch_2
    const/16 p1, 0x25

    goto :goto_0

    .line 559
    nop

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_1
        0x1e -> :sswitch_0
        0x24 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public addInitializeListener(Lcom/miui/gallery/provider/cache/MediaManager$InitializeListener;)V
    .locals 2
    .param p1, "initializeListener"    # Lcom/miui/gallery/provider/cache/MediaManager$InitializeListener;

    .prologue
    .line 797
    iget-boolean v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mIsFullLoadDone:Z

    if-eqz v0, :cond_0

    .line 798
    const-string v0, ".provider.cache.MediaManager"

    const-string v1, "no need to add listener after full load done!"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    :goto_0
    return-void

    .line 801
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mInitializeListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 802
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mInitializeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 803
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteAttributes(J)V
    .locals 1
    .param p1, "albumId"    # J

    .prologue
    .line 593
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mAlbumDelegate:Lcom/miui/gallery/provider/cache/AlbumDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/provider/cache/AlbumDelegate;->delete(J)V

    .line 594
    return-void
.end method

.method public ensureMinimumPartDone()V
    .locals 8

    .prologue
    .line 780
    iget-boolean v1, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mIsMinimumLoadDone:Z

    if-eqz v1, :cond_0

    .line 794
    :goto_0
    return-void

    .line 783
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 784
    .local v2, "start":J
    iget-object v4, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mMinimumLoadLock:Ljava/lang/Object;

    monitor-enter v4

    .line 785
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mIsMinimumLoadDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 787
    :try_start_1
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mMinimumLoadLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 792
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 793
    const-string v1, ".provider.cache.MediaManager"

    const-string/jumbo v4, "wait for minimum part loading cost : %dms "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 788
    :catch_0
    move-exception v0

    .line 789
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 792
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method protected filterLogInfo(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 122
    if-eqz p1, :cond_0

    .line 123
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, p1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 125
    .local v0, "filterValues":Landroid/content/ContentValues;
    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 126
    const-string v1, "extraGPS"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 127
    const-string v1, "address"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 128
    const-string v1, "exifGPSLatitude"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 129
    const-string v1, "exifGPSLongitude"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 130
    const-string v1, "exifGPSAltitude"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 134
    .end local v0    # "filterValues":Landroid/content/ContentValues;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialized()Z
    .locals 8

    .prologue
    .line 764
    iget-boolean v1, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mIsFullLoadDone:Z

    if-eqz v1, :cond_0

    .line 765
    iget-boolean v1, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mInitialized:Z

    .line 776
    :goto_0
    return v1

    .line 767
    :cond_0
    const-string v1, ".provider.cache.MediaManager"

    const-string v4, "not initialized, waiting lock from: %s"

    const-string v5, "\n\t"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 768
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 770
    .local v2, "start":J
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mFullLoadDoneSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 771
    const-string v1, ".provider.cache.MediaManager"

    const-string/jumbo v4, "wait full load done costs %d ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 775
    :goto_1
    const-string v1, ".provider.cache.MediaManager"

    const-string v4, "initialization finished: %b"

    iget-boolean v5, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mInitialized:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 776
    iget-boolean v1, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mInitialized:Z

    goto :goto_0

    .line 772
    :catch_0
    move-exception v0

    .line 773
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, ".provider.cache.MediaManager"

    invoke-static {v1, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 89
    const-string v1, "cloud"

    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mGenerator:Lcom/miui/gallery/provider/cache/CacheItem$Generator;

    .line 91
    invoke-interface {v0}, Lcom/miui/gallery/provider/cache/CacheItem$Generator;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const-string v0, "%s AND (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v6, "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\')) AND serverType IN (1,2)"

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 92
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v4, p3

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    .line 89
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 94
    .local v10, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 95
    .local v9, "count":I
    if-eqz v10, :cond_1

    .line 97
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mGenerator:Lcom/miui/gallery/provider/cache/CacheItem$Generator;

    invoke-interface {v0, v10}, Lcom/miui/gallery/provider/cache/CacheItem$Generator;->from(Landroid/database/Cursor;)Lcom/miui/gallery/provider/cache/CacheItem;

    move-result-object v11

    check-cast v11, Lcom/miui/gallery/provider/cache/MediaItem;

    .line 99
    .local v11, "item":Lcom/miui/gallery/provider/cache/MediaItem;
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mModifyLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 100
    :try_start_1
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mCache:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    monitor-exit v1

    .line 102
    add-int/lit8 v9, v9, 0x1

    .line 103
    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 105
    .end local v11    # "item":Lcom/miui/gallery/provider/cache/MediaItem;
    :catchall_1
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 108
    :cond_1
    return v9
.end method

.method public insert(JLandroid/content/ContentValues;)J
    .locals 3
    .param p1, "id"    # J
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 113
    invoke-virtual {p0, p3}, Lcom/miui/gallery/provider/cache/MediaManager;->isItemDeleted(Landroid/content/ContentValues;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/provider/cache/CacheManager;->insert(JLandroid/content/ContentValues;)J

    move-result-wide v0

    .line 116
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public insertAttributes(JJ)V
    .locals 5
    .param p1, "albumId"    # J
    .param p3, "attributes"    # J

    .prologue
    .line 588
    const-string v0, ".provider.cache.MediaManager"

    const-string v1, "insert attributes[%d] for album[%d]"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 589
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mAlbumDelegate:Lcom/miui/gallery/provider/cache/AlbumDelegate;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/gallery/provider/cache/AlbumDelegate;->insert(JJ)V

    .line 590
    return-void
.end method

.method public insertToFavorites(Ljava/lang/String;)V
    .locals 1
    .param p1, "sha1"    # Ljava/lang/String;

    .prologue
    .line 597
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mFavoritesDelegate:Lcom/miui/gallery/provider/cache/FavoritesDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/provider/cache/FavoritesDelegate;->insertToFavorites(Ljava/lang/String;)V

    .line 598
    return-void
.end method

.method public isItemDeleted(Landroid/content/ContentValues;)Z
    .locals 5
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v2, 0x1

    .line 146
    const-string v3, "localFlag"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 147
    .local v0, "localFlag":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xb

    if-eq v3, v4, :cond_0

    .line 149
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 150
    :cond_0
    const-string v3, ".provider.cache.MediaManager"

    const-string v4, "find a deleted local flag"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :goto_0
    return v2

    .line 154
    :cond_1
    const-string v3, "serverStatus"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 155
    const-string v3, "serverStatus"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "status":Ljava/lang/String;
    const-string v3, "deleted"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "purged"

    .line 157
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 158
    :cond_2
    const-string v3, ".provider.cache.MediaManager"

    const-string v4, "find a deleted server type"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    .end local v1    # "status":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public declared-synchronized load(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 2
    .param p1, "helper"    # Landroid/database/sqlite/SQLiteOpenHelper;

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mIsLoadStarted:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mIsFullLoadDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 86
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 83
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mIsLoadStarted:Z

    .line 84
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;-><init>(Lcom/miui/gallery/provider/cache/MediaManager;Landroid/database/sqlite/SQLiteOpenHelper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 85
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 80
    .end local v0    # "thread":Ljava/lang/Thread;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected onCreateCursor([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;
    .locals 18
    .param p1, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "orderBy"    # Ljava/lang/String;
    .param p5, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/provider/cache/MediaItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 168
    .local p2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/cache/MediaItem;>;"
    new-instance v3, Lcom/miui/gallery/provider/cache/RawCursor;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/gallery/provider/cache/MediaManager;->mQueryFactory:Lcom/miui/gallery/provider/cache/CacheItem$QueryFactory;

    invoke-interface {v12}, Lcom/miui/gallery/provider/cache/CacheItem$QueryFactory;->getMapper()Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;

    move-result-object v12

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1, v12}, Lcom/miui/gallery/provider/cache/RawCursor;-><init>(Ljava/util/List;[Ljava/lang/String;Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;)V

    .line 170
    .local v3, "cursor":Landroid/database/AbstractCursor;
    if-eqz p5, :cond_2

    const-string v12, "extra_generate_header"

    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 171
    const-string v12, ".provider.cache.MediaManager"

    const-string v13, "caller need a header data, start generate for %d"

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 173
    .local v10, "start":J
    const/4 v4, 0x0

    .line 174
    .local v4, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/cache/MediaManager$Group;>;"
    const-string v12, "extra_media_group_by"

    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 175
    .local v6, "itemGroupBy":I
    if-nez v6, :cond_3

    .line 176
    const/16 v12, 0x20

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 177
    .local v8, "spacePos":I
    const/4 v12, 0x0

    if-lez v8, :cond_0

    .end local v8    # "spacePos":I
    :goto_0
    move-object/from16 v0, p4

    invoke-virtual {v0, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 178
    .local v5, "identifier":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/gallery/provider/cache/MediaManager;->mQueryFactory:Lcom/miui/gallery/provider/cache/CacheItem$QueryFactory;

    invoke-interface {v12}, Lcom/miui/gallery/provider/cache/CacheItem$QueryFactory;->getMapper()Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;

    move-result-object v12

    invoke-interface {v12, v5}, Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;->getIndex(Ljava/lang/String;)I

    move-result v7

    .line 179
    .local v7, "orderByColumnIndex":I
    if-gez v7, :cond_1

    .line 180
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " not found"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 177
    .end local v5    # "identifier":Ljava/lang/String;
    .end local v7    # "orderByColumnIndex":I
    .restart local v8    # "spacePos":I
    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v8

    goto :goto_0

    .line 182
    .end local v8    # "spacePos":I
    .restart local v5    # "identifier":Ljava/lang/String;
    .restart local v7    # "orderByColumnIndex":I
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/miui/gallery/provider/cache/MediaManager;->transformOrderByColumnIndex(I)I

    move-result v9

    .line 184
    .local v9, "transformedColumn":I
    new-instance v2, Lcom/miui/gallery/provider/cache/MediaManager$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v9}, Lcom/miui/gallery/provider/cache/MediaManager$1;-><init>(Lcom/miui/gallery/provider/cache/MediaManager;I)V

    .line 193
    .local v2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/miui/gallery/provider/cache/MediaItem;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/provider/cache/MediaManager;->generateGroup(Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v4

    .line 200
    .end local v2    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/miui/gallery/provider/cache/MediaItem;>;"
    .end local v5    # "identifier":Ljava/lang/String;
    .end local v7    # "orderByColumnIndex":I
    .end local v9    # "transformedColumn":I
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/miui/gallery/provider/cache/MediaManager;->bindGroup(Ljava/util/List;Landroid/database/Cursor;)V

    .line 201
    const-string v12, ".provider.cache.MediaManager"

    const-string v13, "header[%d] generated cost %d"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static {v12, v13, v14, v15}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 203
    .end local v4    # "groups":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/cache/MediaManager$Group;>;"
    .end local v6    # "itemGroupBy":I
    .end local v10    # "start":J
    :cond_2
    return-object v3

    .line 194
    .restart local v4    # "groups":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/cache/MediaManager$Group;>;"
    .restart local v6    # "itemGroupBy":I
    .restart local v10    # "start":J
    :cond_3
    const/4 v12, 0x1

    if-ne v6, v12, :cond_4

    .line 195
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/miui/gallery/provider/cache/MediaManager;->generateMonthItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    goto :goto_1

    .line 197
    :cond_4
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v13, "unsupported group type %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12
.end method

.method public removeFromFavorites(Ljava/lang/String;)V
    .locals 1
    .param p1, "sha1"    # Ljava/lang/String;

    .prologue
    .line 601
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mFavoritesDelegate:Lcom/miui/gallery/provider/cache/FavoritesDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/provider/cache/FavoritesDelegate;->removeFromFavorites(Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method public update(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 1
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 139
    invoke-virtual {p0, p3}, Lcom/miui/gallery/provider/cache/MediaManager;->isItemDeleted(Landroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/provider/cache/MediaManager;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    .line 142
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/provider/cache/CacheManager;->update(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method public updateAttributes(JJ)V
    .locals 5
    .param p1, "albumId"    # J
    .param p3, "attributes"    # J

    .prologue
    .line 583
    const-string v0, ".provider.cache.MediaManager"

    const-string/jumbo v1, "update album[%d]\'s attributes to %d"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 584
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mAlbumDelegate:Lcom/miui/gallery/provider/cache/AlbumDelegate;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/gallery/provider/cache/AlbumDelegate;->update(JJ)V

    .line 585
    return-void
.end method

.method public updateAttributes(JJZZ)V
    .locals 11
    .param p1, "albumId"    # J
    .param p3, "attributeBit"    # J
    .param p5, "set"    # Z
    .param p6, "manual"    # Z

    .prologue
    .line 574
    const-string v6, ".provider.cache.MediaManager"

    const-string/jumbo v7, "updating attributesBit[%d] for album[%d] to %s"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v6, v7, v8, v9, v10}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 575
    iget-object v6, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mAlbumDelegate:Lcom/miui/gallery/provider/cache/AlbumDelegate;

    invoke-virtual {v6, p1, p2}, Lcom/miui/gallery/provider/cache/AlbumDelegate;->queryAttributes(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 576
    .local v2, "attributes":J
    invoke-static/range {p3 .. p6}, Lcom/miui/gallery/provider/AlbumManager;->packageAttributeBit(JZZ)J

    move-result-wide v4

    .line 577
    .local v4, "packageAttibuteBit":J
    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {p3, p4, v6, v7}, Lcom/miui/gallery/provider/AlbumManager;->packageAttributeBit(JZZ)J

    move-result-wide v0

    .line 578
    .local v0, "attributeBitMask":J
    const-wide/16 v6, -0x1

    xor-long/2addr v6, v0

    and-long/2addr v6, v2

    or-long v2, v6, v4

    .line 579
    iget-object v6, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mAlbumDelegate:Lcom/miui/gallery/provider/cache/AlbumDelegate;

    invoke-virtual {v6, p1, p2, v2, v3}, Lcom/miui/gallery/provider/cache/AlbumDelegate;->update(JJ)V

    .line 580
    return-void
.end method
