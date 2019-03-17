.class public Lcom/miui/gallery/util/photoview/PhotoPageDataCache;
.super Ljava/lang/Object;
.source "PhotoPageDataCache.java"


# static fields
.field private static sInstance:Lcom/miui/gallery/util/photoview/PhotoPageDataCache;


# instance fields
.field private mAppointedInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/util/photoview/ItemViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mArguments:Landroid/os/Bundle;

.field private mCacheItem:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mItemViewParent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mPageLayout:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPairKey:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->sInstance:Lcom/miui/gallery/util/photoview/PhotoPageDataCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAllItemInfos()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/util/photoview/ItemViewInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->getViewParent()Landroid/view/ViewGroup;

    move-result-object v5

    .line 118
    .local v5, "parent":Landroid/view/ViewGroup;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v2, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/photoview/ItemViewInfo;>;"
    if-eqz v5, :cond_1

    .line 120
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 121
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 122
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 123
    .local v3, "item":Landroid/view/View;
    const v6, 0x7f120022

    invoke-virtual {v3, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    .line 124
    .local v4, "itemPos":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 125
    check-cast v4, Ljava/lang/Integer;

    .end local v4    # "itemPos":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v6}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getImageInfo(Landroid/view/View;I)Lcom/miui/gallery/util/photoview/ItemViewInfo;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v3    # "item":Landroid/view/View;
    :cond_1
    iget-object v6, p0, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->mAppointedInfos:Ljava/util/List;

    if-eqz v6, :cond_2

    .line 129
    iget-object v6, p0, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->mAppointedInfos:Ljava/util/List;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 131
    :cond_2
    return-object v2
.end method

.method public static getInstance()Lcom/miui/gallery/util/photoview/PhotoPageDataCache;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->sInstance:Lcom/miui/gallery/util/photoview/PhotoPageDataCache;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;

    invoke-direct {v0}, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;-><init>()V

    sput-object v0, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->sInstance:Lcom/miui/gallery/util/photoview/PhotoPageDataCache;

    .line 42
    :cond_0
    sget-object v0, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->sInstance:Lcom/miui/gallery/util/photoview/PhotoPageDataCache;

    return-object v0
.end method

.method private getViewParent()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->mItemViewParent:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->mItemViewParent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static preLoad(Landroid/content/Context;Lcom/miui/gallery/model/ImageLoadParams;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Lcom/miui/gallery/model/ImageLoadParams;

    .prologue
    const/4 v4, 0x0

    .line 219
    if-eqz p1, :cond_1

    .line 220
    new-instance v7, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 221
    .local v7, "builder":Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    invoke-virtual {p1}, Lcom/miui/gallery/model/ImageLoadParams;->getDisplayImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 222
    invoke-virtual {p1}, Lcom/miui/gallery/model/ImageLoadParams;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "uri":Ljava/lang/String;
    invoke-static {v1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ofUri(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    move-result-object v0

    sget-object v2, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->UNKNOWN:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    if-ne v0, v2, :cond_0

    .line 224
    sget-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {p1}, Lcom/miui/gallery/model/ImageLoadParams;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 226
    :cond_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->resume()V

    .line 227
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/gallery/model/ImageLoadParams;->getTargetSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/gallery/model/ImageLoadParams;->isSecret()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/miui/gallery/model/ImageLoadParams;->getSecretKey()[B

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->secretKey([B)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    :goto_0
    invoke-virtual {p1}, Lcom/miui/gallery/model/ImageLoadParams;->getRegionRectF()Landroid/graphics/RectF;

    move-result-object v6

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Landroid/graphics/RectF;)V

    .line 248
    .end local v1    # "uri":Ljava/lang/String;
    .end local v7    # "builder":Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    :cond_1
    return-void

    .line 227
    .restart local v1    # "uri":Ljava/lang/String;
    .restart local v7    # "builder":Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    :cond_2
    invoke-virtual {v7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 184
    iget-wide v0, p0, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->mPairKey:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->mPairKey:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 185
    const-string v0, "PhotoPageDataCache"

    const-string v1, "clear"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iput-object v4, p0, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->mArguments:Landroid/os/Bundle;

    .line 187
    iput-object v4, p0, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->mAppointedInfos:Ljava/util/List;

    .line 188
    iget-object v0, p0, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->mItemViewParent:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->mItemViewParent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 190
    iput-object v4, p0, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->mItemViewParent:Ljava/lang/ref/WeakReference;

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->mCacheItem:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->mCacheItem:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->clear()V

    .line 194
    iput-object v4, p0, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->mCacheItem:Ljava/lang/ref/SoftReference;

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->mPageLayout:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->mPageLayout:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->clear()V

    .line 198
    iput-object v4, p0, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->mPageLayout:Ljava/lang/ref/SoftReference;

    .line 203
    :cond_2
    return-void
.end method

.method public getArguments()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->mArguments:Landroid/os/Bundle;

    return-object v0
.end method

.method public getCacheItem()Landroid/view/View;
    .locals 3

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "item":Landroid/view/View;
    iget-object v1, p0, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->mCacheItem:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->mCacheItem:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "item":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 157
    .restart local v0    # "item":Landroid/view/View;
    iget-object v1, p0, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->mCacheItem:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->clear()V

    .line 158
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->mCacheItem:Ljava/lang/ref/SoftReference;

    .line 160
    :cond_0
    const-string v1, "PhotoPageDataCache"

    const-string v2, "cache item %s"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    return-object v0
.end method

.method public getItemViewInfo(I)Lcom/miui/gallery/util/photoview/ItemViewInfo;
    .locals 19
    .param p1, "tarPos"    # I

    .prologue
    .line 72
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->getViewParent()Landroid/view/ViewGroup;

    move-result-object v17

    .line 73
    .local v17, "parent":Landroid/view/ViewGroup;
    if-eqz v17, :cond_5

    .line 74
    const v15, 0x7fffffff

    .line 75
    .local v15, "minPos":I
    const/high16 v13, -0x80000000

    .line 76
    .local v13, "maxPos":I
    const/16 v16, 0x0

    .line 77
    .local v16, "minPosChild":Landroid/view/View;
    const/4 v14, 0x0

    .line 78
    .local v14, "maxPosChild":Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .line 79
    .local v8, "childCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v8, :cond_3

    .line 80
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 81
    .local v11, "item":Landroid/view/View;
    const v2, 0x7f120022

    invoke-virtual {v11, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v12

    .line 82
    .local v12, "itemPos":Ljava/lang/Object;
    if-eqz v12, :cond_2

    .line 83
    check-cast v12, Ljava/lang/Integer;

    .end local v12    # "itemPos":Ljava/lang/Object;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 84
    .local v18, "position":I
    move/from16 v0, v18

    move/from16 v1, p1

    if-ne v0, v1, :cond_0

    .line 85
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v11, v2}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getImageInfo(Landroid/view/View;I)Lcom/miui/gallery/util/photoview/ItemViewInfo;

    move-result-object v2

    .line 113
    .end local v8    # "childCount":I
    .end local v9    # "i":I
    .end local v11    # "item":Landroid/view/View;
    .end local v13    # "maxPos":I
    .end local v14    # "maxPosChild":Landroid/view/View;
    .end local v15    # "minPos":I
    .end local v16    # "minPosChild":Landroid/view/View;
    .end local v18    # "position":I
    :goto_1
    return-object v2

    .line 87
    .restart local v8    # "childCount":I
    .restart local v9    # "i":I
    .restart local v11    # "item":Landroid/view/View;
    .restart local v13    # "maxPos":I
    .restart local v14    # "maxPosChild":Landroid/view/View;
    .restart local v15    # "minPos":I
    .restart local v16    # "minPosChild":Landroid/view/View;
    .restart local v18    # "position":I
    :cond_0
    move/from16 v0, v18

    if-ge v0, v15, :cond_1

    .line 88
    move/from16 v15, v18

    .line 89
    move-object/from16 v16, v11

    .line 91
    :cond_1
    move/from16 v0, v18

    if-le v0, v13, :cond_2

    .line 92
    move/from16 v13, v18

    .line 93
    move-object v14, v11

    .line 79
    .end local v18    # "position":I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 97
    .end local v11    # "item":Landroid/view/View;
    :cond_3
    if-eqz v16, :cond_4

    move/from16 v0, p1

    if-ge v0, v15, :cond_4

    .line 98
    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getImageInfo(Landroid/view/View;I)Lcom/miui/gallery/util/photoview/ItemViewInfo;

    move-result-object v10

    .line 99
    .local v10, "info":Lcom/miui/gallery/util/photoview/ItemViewInfo;
    new-instance v2, Lcom/miui/gallery/util/photoview/ItemViewInfo;

    invoke-virtual {v10}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getX()I

    move-result v4

    invoke-virtual {v10}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getY()I

    move-result v3

    invoke-virtual {v10}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getHeight()I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual {v10}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getWidth()I

    move-result v6

    invoke-virtual {v10}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getHeight()I

    move-result v7

    move/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/miui/gallery/util/photoview/ItemViewInfo;-><init>(IIIII)V

    goto :goto_1

    .line 101
    .end local v10    # "info":Lcom/miui/gallery/util/photoview/ItemViewInfo;
    :cond_4
    if-eqz v14, :cond_5

    move/from16 v0, p1

    if-le v0, v13, :cond_5

    .line 102
    invoke-static {v14, v15}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getImageInfo(Landroid/view/View;I)Lcom/miui/gallery/util/photoview/ItemViewInfo;

    move-result-object v10

    .line 103
    .restart local v10    # "info":Lcom/miui/gallery/util/photoview/ItemViewInfo;
    new-instance v2, Lcom/miui/gallery/util/photoview/ItemViewInfo;

    invoke-virtual {v10}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getX()I

    move-result v4

    invoke-virtual {v10}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getY()I

    move-result v3

    invoke-virtual {v10}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v10}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getWidth()I

    move-result v6

    invoke-virtual {v10}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getHeight()I

    move-result v7

    move/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/miui/gallery/util/photoview/ItemViewInfo;-><init>(IIIII)V

    goto :goto_1

    .line 106
    .end local v8    # "childCount":I
    .end local v9    # "i":I
    .end local v10    # "info":Lcom/miui/gallery/util/photoview/ItemViewInfo;
    .end local v13    # "maxPos":I
    .end local v14    # "maxPosChild":Landroid/view/View;
    .end local v15    # "minPos":I
    .end local v16    # "minPosChild":Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->mAppointedInfos:Ljava/util/List;

    if-eqz v2, :cond_7

    .line 107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->mAppointedInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/gallery/util/photoview/ItemViewInfo;

    .line 108
    .restart local v10    # "info":Lcom/miui/gallery/util/photoview/ItemViewInfo;
    invoke-virtual {v10}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getPosition()I

    move-result v3

    move/from16 v0, p1

    if-ne v3, v0, :cond_6

    move-object v2, v10

    .line 109
    goto/16 :goto_1

    .line 113
    .end local v10    # "info":Lcom/miui/gallery/util/photoview/ItemViewInfo;
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method public getPageLayout()Landroid/view/View;
    .locals 3

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "item":Landroid/view/View;
    iget-object v1, p0, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->mPageLayout:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->mPageLayout:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "item":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 172
    .restart local v0    # "item":Landroid/view/View;
    iget-object v1, p0, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->mPageLayout:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->clear()V

    .line 173
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->mPageLayout:Ljava/lang/ref/SoftReference;

    .line 175
    :cond_0
    const-string v1, "PhotoPageDataCache"

    const-string v2, "page layout %s"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->mArguments:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->mArguments:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isItemVisible(I)Z
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->getViewParent()Landroid/view/ViewGroup;

    move-result-object v4

    .line 257
    .local v4, "parent":Landroid/view/ViewGroup;
    if-eqz v4, :cond_1

    .line 258
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 259
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 260
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 261
    .local v2, "item":Landroid/view/View;
    const v5, 0x7f120022

    invoke-virtual {v2, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    .line 262
    .local v3, "itemPos":Ljava/lang/Object;
    if-eqz v3, :cond_0

    check-cast v3, Ljava/lang/Integer;

    .end local v3    # "itemPos":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne p1, v5, :cond_0

    .line 263
    const/4 v5, 0x1

    .line 267
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "item":Landroid/view/View;
    :goto_1
    return v5

    .line 259
    .restart local v0    # "childCount":I
    .restart local v1    # "i":I
    .restart local v2    # "item":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "item":Landroid/view/View;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public restoreInstance(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstance"    # Landroid/os/Bundle;

    .prologue
    .line 144
    const-string v1, "key_save_arguments"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->setArguments(Landroid/os/Bundle;)V

    .line 145
    const-string v1, "key_save_iteminfos"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 146
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/photoview/ItemViewInfo;>;"
    invoke-virtual {p0, v0}, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->setAppointedItemViewInfos(Ljava/util/List;)V

    .line 147
    return-void
.end method

.method public saveInstance(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 136
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 137
    const-string v1, "photo_enter_transit"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 138
    const-string v1, "key_save_arguments"

    invoke-virtual {p0}, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 140
    :cond_0
    const-string v1, "key_save_iteminfos"

    invoke-direct {p0}, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->getAllItemInfos()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 141
    return-void
.end method

.method public setAppointedItemViewInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/util/photoview/ItemViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/photoview/ItemViewInfo;>;"
    iput-object p1, p0, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->mAppointedInfos:Ljava/util/List;

    .line 151
    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 52
    const-string v0, "PhotoPageDataCache"

    const-string/jumbo v1, "setArguments %s"

    invoke-static {v0, v1, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    iget-wide v0, p0, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->mPairKey:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->mPairKey:J

    .line 54
    iput-object p1, p0, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->mArguments:Landroid/os/Bundle;

    .line 55
    return-void
.end method

.method public setItemViewParent(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 62
    if-eqz p1, :cond_0

    .line 63
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->mItemViewParent:Ljava/lang/ref/WeakReference;

    .line 65
    :cond_0
    return-void
.end method

.method public viewToPosition(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->getViewParent()Landroid/view/ViewGroup;

    move-result-object v0

    .line 277
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/miui/gallery/util/photoview/ScrollableView;

    if-eqz v1, :cond_0

    .line 278
    check-cast v0, Lcom/miui/gallery/util/photoview/ScrollableView;

    .end local v0    # "parent":Landroid/view/ViewGroup;
    invoke-interface {v0, p1}, Lcom/miui/gallery/util/photoview/ScrollableView;->viewToPosition(I)V

    .line 279
    const/4 v1, 0x1

    .line 281
    :goto_0
    return v1

    .restart local v0    # "parent":Landroid/view/ViewGroup;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
