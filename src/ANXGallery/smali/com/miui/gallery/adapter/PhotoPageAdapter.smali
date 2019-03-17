.class public Lcom/miui/gallery/adapter/PhotoPageAdapter;
.super Lcom/miui/gallery/widget/PagerAdapter;
.source "PhotoPageAdapter.java"

# interfaces
.implements Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;
.implements Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/adapter/PhotoPageAdapter$OnPreviewedListener;,
        Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;,
        Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;,
        Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;,
        Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;,
        Lcom/miui/gallery/adapter/PhotoPageAdapter$PlaceHolderItem;
    }
.end annotation


# instance fields
.field private isPreviewing:Z

.field private mCachedViews:[Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/gallery/ui/PhotoPageItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCheckSource:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;

.field private mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

.field private mDataSet:Lcom/miui/gallery/model/BaseDataSet;

.field private mInitCount:I

.field private mPhotoPageInteractionListener:Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageInteractionListener;

.field private mPreviewCache:Lcom/miui/gallery/model/ImageLoadParams;

.field private mPreviewedListener:Lcom/miui/gallery/adapter/PhotoPageAdapter$OnPreviewedListener;

.field private mPreviewingItem:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/gallery/ui/PhotoPageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessingMediaMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/provider/ProcessingMedia;",
            ">;"
        }
    .end annotation
.end field

.field private mTransitInfo:Lcom/miui/gallery/util/photoview/ItemViewInfo;


# direct methods
.method public constructor <init>(ILcom/miui/gallery/model/ImageLoadParams;Lcom/miui/gallery/util/photoview/ItemViewInfo;Lcom/miui/gallery/adapter/PhotoPageAdapter$OnPreviewedListener;Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageInteractionListener;)V
    .locals 4
    .param p1, "initCount"    # I
    .param p2, "previewCache"    # Lcom/miui/gallery/model/ImageLoadParams;
    .param p3, "transitInfo"    # Lcom/miui/gallery/util/photoview/ItemViewInfo;
    .param p4, "previewListener"    # Lcom/miui/gallery/adapter/PhotoPageAdapter$OnPreviewedListener;
    .param p5, "interactionListener"    # Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageInteractionListener;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/miui/gallery/widget/PagerAdapter;-><init>()V

    .line 442
    new-instance v2, Lcom/miui/gallery/adapter/PhotoPageAdapter$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$1;-><init>(Lcom/miui/gallery/adapter/PhotoPageAdapter;)V

    iput-object v2, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mCheckSource:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;

    .line 63
    iput p1, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mInitCount:I

    .line 64
    iput-object p2, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mPreviewCache:Lcom/miui/gallery/model/ImageLoadParams;

    .line 65
    iput-object p3, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mTransitInfo:Lcom/miui/gallery/util/photoview/ItemViewInfo;

    .line 66
    invoke-direct {p0}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getViewTypeCount()I

    move-result v1

    .line 67
    .local v1, "viewTypeCount":I
    new-array v2, v1, [Ljava/util/LinkedList;

    iput-object v2, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mCachedViews:[Ljava/util/LinkedList;

    .line 68
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 69
    iget-object v2, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mCachedViews:[Ljava/util/LinkedList;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    aput-object v3, v2, v0

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    iput-object p4, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mPreviewedListener:Lcom/miui/gallery/adapter/PhotoPageAdapter$OnPreviewedListener;

    .line 72
    iput-object p5, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mPhotoPageInteractionListener:Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageInteractionListener;

    .line 74
    iget-object v2, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mPreviewCache:Lcom/miui/gallery/model/ImageLoadParams;

    if-eqz v2, :cond_1

    .line 75
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->isPreviewing:Z

    .line 77
    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/adapter/PhotoPageAdapter;)Lcom/miui/gallery/model/BaseDataSet;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/adapter/PhotoPageAdapter;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mDataSet:Lcom/miui/gallery/model/BaseDataSet;

    return-object v0
.end method

.method private bindData(Lcom/miui/gallery/ui/PhotoPageItem;I)V
    .locals 12
    .param p1, "viewItem"    # Lcom/miui/gallery/ui/PhotoPageItem;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 272
    const v7, 0x7f120022

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lcom/miui/gallery/ui/PhotoPageItem;->setTag(ILjava/lang/Object;)V

    .line 273
    iget-boolean v7, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->isPreviewing:Z

    if-eqz v7, :cond_4

    .line 274
    iget-object v7, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mPreviewCache:Lcom/miui/gallery/model/ImageLoadParams;

    invoke-virtual {v7, v6, p2}, Lcom/miui/gallery/model/ImageLoadParams;->match(Lcom/miui/gallery/model/BaseDataItem;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 275
    iget-object v7, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mPreviewingItem:Ljava/lang/ref/WeakReference;

    if-nez v7, :cond_0

    .line 276
    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v7, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mPreviewingItem:Ljava/lang/ref/WeakReference;

    .line 279
    :cond_0
    invoke-virtual {p1}, Lcom/miui/gallery/ui/PhotoPageItem;->getCacheItem()Lcom/miui/gallery/model/ImageLoadParams;

    move-result-object v7

    if-nez v7, :cond_1

    .line 280
    iget-object v7, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mPreviewCache:Lcom/miui/gallery/model/ImageLoadParams;

    invoke-virtual {p1, v7, p0}, Lcom/miui/gallery/ui/PhotoPageItem;->setCacheItem(Lcom/miui/gallery/model/ImageLoadParams;Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;)V

    .line 281
    invoke-direct {p0}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->needTransit()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 282
    iget-object v7, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mTransitInfo:Lcom/miui/gallery/util/photoview/ItemViewInfo;

    invoke-virtual {p1, v7, p0}, Lcom/miui/gallery/ui/PhotoPageItem;->animEnter(Lcom/miui/gallery/util/photoview/ItemViewInfo;Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;)V

    .line 286
    :cond_1
    iget-object v7, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mDataSet:Lcom/miui/gallery/model/BaseDataSet;

    if-eqz v7, :cond_3

    invoke-virtual {p1}, Lcom/miui/gallery/ui/PhotoPageItem;->getDataItem()Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v7

    if-nez v7, :cond_3

    .line 287
    iget-object v7, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mDataSet:Lcom/miui/gallery/model/BaseDataSet;

    new-instance v8, Lcom/miui/gallery/model/BaseDataItem;

    invoke-direct {v8}, Lcom/miui/gallery/model/BaseDataItem;-><init>()V

    iget-object v9, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mPreviewCache:Lcom/miui/gallery/model/ImageLoadParams;

    invoke-virtual {v9}, Lcom/miui/gallery/model/ImageLoadParams;->getKey()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/miui/gallery/model/BaseDataItem;->setKey(J)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v8

    iget-object v9, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mPreviewCache:Lcom/miui/gallery/model/ImageLoadParams;

    invoke-virtual {v9}, Lcom/miui/gallery/model/ImageLoadParams;->getPos()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/miui/gallery/model/BaseDataSet;->getIndexOfItem(Lcom/miui/gallery/model/BaseDataItem;I)I

    move-result v5

    .line 288
    .local v5, "pos":I
    invoke-virtual {p0, v5}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v1

    .line 289
    .local v1, "item":Lcom/miui/gallery/model/BaseDataItem;
    if-eqz v1, :cond_3

    .line 290
    iget-object v7, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mProcessingMediaMap:Ljava/util/Map;

    if-eqz v7, :cond_2

    iget-object v6, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mProcessingMediaMap:Ljava/util/Map;

    .line 291
    invoke-virtual {v1}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/provider/ProcessingMedia;

    .line 290
    :cond_2
    invoke-virtual {p1, v6}, Lcom/miui/gallery/ui/PhotoPageItem;->setProcessingMedia(Lcom/miui/gallery/provider/ProcessingMedia;)V

    .line 292
    invoke-virtual {p1, v1}, Lcom/miui/gallery/ui/PhotoPageItem;->swapItem(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 317
    .end local v1    # "item":Lcom/miui/gallery/model/BaseDataItem;
    .end local v5    # "pos":I
    :cond_3
    :goto_0
    return-void

    .line 296
    :cond_4
    iget-object v7, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mDataSet:Lcom/miui/gallery/model/BaseDataSet;

    if-eqz v7, :cond_3

    .line 297
    invoke-virtual {p0, p2}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v0

    .line 298
    .local v0, "dataItem":Lcom/miui/gallery/model/BaseDataItem;
    invoke-virtual {p1}, Lcom/miui/gallery/ui/PhotoPageItem;->getProcessingMedia()Lcom/miui/gallery/provider/ProcessingMedia;

    move-result-object v4

    .line 299
    .local v4, "oldProcessingMedia":Lcom/miui/gallery/provider/ProcessingMedia;
    iget-object v7, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mProcessingMediaMap:Ljava/util/Map;

    if-eqz v7, :cond_8

    if-eqz v0, :cond_8

    iget-object v6, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mProcessingMediaMap:Ljava/util/Map;

    .line 300
    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/provider/ProcessingMedia;

    move-object v2, v6

    .line 301
    .local v2, "newProcessingMedia":Lcom/miui/gallery/provider/ProcessingMedia;
    :goto_1
    invoke-virtual {p1, v2}, Lcom/miui/gallery/ui/PhotoPageItem;->setProcessingMedia(Lcom/miui/gallery/provider/ProcessingMedia;)V

    .line 303
    iget-object v6, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mPreviewCache:Lcom/miui/gallery/model/ImageLoadParams;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mPreviewCache:Lcom/miui/gallery/model/ImageLoadParams;

    invoke-virtual {v6, v0, p2}, Lcom/miui/gallery/model/ImageLoadParams;->match(Lcom/miui/gallery/model/BaseDataItem;I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 304
    iget-object v6, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mPreviewCache:Lcom/miui/gallery/model/ImageLoadParams;

    invoke-virtual {p1, v6}, Lcom/miui/gallery/ui/PhotoPageItem;->loadCacheImage(Lcom/miui/gallery/model/ImageLoadParams;)V

    .line 306
    :cond_5
    invoke-virtual {p1}, Lcom/miui/gallery/ui/PhotoPageItem;->getDataItem()Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v3

    .line 307
    .local v3, "oldItem":Lcom/miui/gallery/model/BaseDataItem;
    if-eqz v3, :cond_6

    invoke-virtual {v3, v0}, Lcom/miui/gallery/model/BaseDataItem;->isModified(Lcom/miui/gallery/model/BaseDataItem;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 308
    invoke-direct {p0, v4, v2}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->isProcessingStatusChanged(Lcom/miui/gallery/provider/ProcessingMedia;Lcom/miui/gallery/provider/ProcessingMedia;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 310
    :cond_6
    invoke-virtual {p1, v0}, Lcom/miui/gallery/ui/PhotoPageItem;->swapItem(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 313
    :cond_7
    iget-object v6, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mPreviewCache:Lcom/miui/gallery/model/ImageLoadParams;

    if-nez v6, :cond_3

    .line 314
    invoke-direct {p0}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->notifyPreviewedCallback()V

    goto :goto_0

    .end local v2    # "newProcessingMedia":Lcom/miui/gallery/provider/ProcessingMedia;
    .end local v3    # "oldItem":Lcom/miui/gallery/model/BaseDataItem;
    :cond_8
    move-object v2, v6

    .line 300
    goto :goto_1
.end method

.method private clearPreviewParams()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->isPreviewing:Z

    .line 119
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mPreviewingItem:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mPreviewingItem:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mPreviewingItem:Ljava/lang/ref/WeakReference;

    .line 123
    :cond_0
    return-void
.end method

.method private getLayoutId(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 166
    packed-switch p1, :pswitch_data_0

    .line 176
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 168
    :pswitch_0
    const v0, 0x7f0400f9

    goto :goto_0

    .line 170
    :pswitch_1
    const v0, 0x7f0400f7

    goto :goto_0

    .line 172
    :pswitch_2
    const v0, 0x7f0400f8

    goto :goto_0

    .line 174
    :pswitch_3
    const v0, 0x7f0400fd

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public static getMinSlideHeight()F
    .locals 2

    .prologue
    .line 376
    invoke-static {}, Lcom/miui/gallery/Config$ScreenConfig;->getScreenHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    return v0
.end method

.method public static getMinSlideWidth()F
    .locals 2

    .prologue
    .line 372
    invoke-static {}, Lcom/miui/gallery/Config$ScreenConfig;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    return v0
.end method

.method private getPageItem(ILandroid/view/ViewGroup;)Lcom/miui/gallery/ui/PhotoPageItem;
    .locals 6
    .param p1, "type"    # I
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 325
    iget-object v3, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mCachedViews:[Ljava/util/LinkedList;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 326
    iget-object v3, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mCachedViews:[Ljava/util/LinkedList;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 327
    .local v1, "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/miui/gallery/ui/PhotoPageItem;>;"
    if-eqz v1, :cond_0

    .line 328
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/ui/PhotoPageItem;

    .line 329
    .local v2, "view":Lcom/miui/gallery/ui/PhotoPageItem;
    if-eqz v2, :cond_0

    .line 330
    const-string v3, "PhotoPageAdapter"

    const-string v4, "instantiateItem reuse photoview"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    .end local v1    # "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/miui/gallery/ui/PhotoPageItem;>;"
    .end local v2    # "view":Lcom/miui/gallery/ui/PhotoPageItem;
    :goto_0
    return-object v2

    .line 335
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->isPreviewing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 336
    invoke-static {}, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->getInstance()Lcom/miui/gallery/util/photoview/PhotoPageDataCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->getCacheItem()Landroid/view/View;

    move-result-object v2

    .line 337
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 338
    const-string v3, "PhotoPageAdapter"

    const-string v4, "cache item"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    check-cast v2, Lcom/miui/gallery/ui/PhotoPageItem;

    goto :goto_0

    .line 342
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    const-string v3, "PhotoPageAdapter"

    const-string v4, "instantiateItem new photoview"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getLayoutId(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/PhotoPageItem;

    .local v0, "item":Lcom/miui/gallery/ui/PhotoPageItem;
    move-object v2, v0

    .line 344
    goto :goto_0
.end method

.method private getViewType(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 134
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v0

    .line 135
    .local v0, "item":Lcom/miui/gallery/model/BaseDataItem;
    iget-boolean v5, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->isPreviewing:Z

    if-eqz v5, :cond_4

    .line 136
    iget-object v5, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mPreviewCache:Lcom/miui/gallery/model/ImageLoadParams;

    invoke-virtual {v5, v0, p1}, Lcom/miui/gallery/model/ImageLoadParams;->match(Lcom/miui/gallery/model/BaseDataItem;I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 137
    iget-object v5, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mPreviewCache:Lcom/miui/gallery/model/ImageLoadParams;

    invoke-virtual {v5}, Lcom/miui/gallery/model/ImageLoadParams;->isGif()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 162
    :cond_0
    :goto_0
    return v1

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mPreviewCache:Lcom/miui/gallery/model/ImageLoadParams;

    invoke-virtual {v1}, Lcom/miui/gallery/model/ImageLoadParams;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 141
    goto :goto_0

    .line 143
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mPreviewCache:Lcom/miui/gallery/model/ImageLoadParams;

    invoke-virtual {v1}, Lcom/miui/gallery/model/ImageLoadParams;->isFromFace()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    .line 144
    goto :goto_0

    :cond_3
    move v1, v4

    .line 146
    goto :goto_0

    .line 149
    :cond_4
    if-eqz v0, :cond_7

    .line 150
    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->isGif()Z

    move-result v5

    if-nez v5, :cond_0

    .line 153
    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    .line 154
    goto :goto_0

    .line 156
    :cond_5
    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->hasFace()Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v3

    .line 157
    goto :goto_0

    :cond_6
    move v1, v4

    .line 159
    goto :goto_0

    .line 162
    :cond_7
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private getViewTypeCount()I
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x4

    return v0
.end method

.method public static isItemValidate(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "item"    # Ljava/lang/Object;

    .prologue
    .line 427
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isProcessingStatusChanged(Lcom/miui/gallery/provider/ProcessingMedia;Lcom/miui/gallery/provider/ProcessingMedia;)Z
    .locals 1
    .param p1, "oldProcessingMedia"    # Lcom/miui/gallery/provider/ProcessingMedia;
    .param p2, "newProcessingMedia"    # Lcom/miui/gallery/provider/ProcessingMedia;

    .prologue
    .line 320
    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    if-nez p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTypeMatch(Ljava/lang/Object;I)Z
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 412
    invoke-static {p1}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->isItemValidate(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v1, p1

    .line 413
    check-cast v1, Lcom/miui/gallery/ui/PhotoPageItem;

    .line 414
    .local v1, "item":Lcom/miui/gallery/ui/PhotoPageItem;
    const v5, 0x7f12002a

    invoke-virtual {v1, v5}, Lcom/miui/gallery/ui/PhotoPageItem;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 415
    .local v2, "type":Ljava/lang/Integer;
    invoke-virtual {p0, p2}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v0

    .line 416
    .local v0, "curDataItem":Lcom/miui/gallery/model/BaseDataItem;
    if-eqz v0, :cond_4

    .line 417
    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->isVideo()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    .line 418
    :cond_0
    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->isGif()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v4, :cond_3

    .line 419
    :cond_1
    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->hasFace()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    .line 420
    :cond_2
    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->isVideo()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->isGif()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->hasFace()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    move v3, v4

    .line 423
    .end local v0    # "curDataItem":Lcom/miui/gallery/model/BaseDataItem;
    .end local v1    # "item":Lcom/miui/gallery/ui/PhotoPageItem;
    .end local v2    # "type":Ljava/lang/Integer;
    :cond_4
    return v3
.end method

.method private needTransit()Z
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mTransitInfo:Lcom/miui/gallery/util/photoview/ItemViewInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mTransitInfo:Lcom/miui/gallery/util/photoview/ItemViewInfo;

    invoke-virtual {v0}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->isLocationValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyPreviewedCallback()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mPreviewedListener:Lcom/miui/gallery/adapter/PhotoPageAdapter$OnPreviewedListener;

    if-eqz v0, :cond_0

    .line 261
    const-string v0, "PhotoPageAdapter"

    const-string v1, "notifyPreviewedCallback"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mPreviewedListener:Lcom/miui/gallery/adapter/PhotoPageAdapter$OnPreviewedListener;

    invoke-interface {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$OnPreviewedListener;->onPreviewed()V

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mPreviewedListener:Lcom/miui/gallery/adapter/PhotoPageAdapter$OnPreviewedListener;

    .line 265
    :cond_0
    return-void
.end method

.method private onPreviewedEnd()V
    .locals 1

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->isPreviewing:Z

    if-eqz v0, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->notifyPreviewedCallback()V

    .line 252
    invoke-direct {p0}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->clearPreviewParams()V

    .line 253
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mDataSet:Lcom/miui/gallery/model/BaseDataSet;

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->notifyDataSetChanged()V

    .line 257
    :cond_0
    return-void
.end method

.method private startOrFinishItemActionMode(Lcom/miui/gallery/ui/PhotoPageItem;)V
    .locals 3
    .param p1, "item"    # Lcom/miui/gallery/ui/PhotoPageItem;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-static {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->access$000(Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->getOriginIInstance()Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-virtual {v1}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->getSelectIInstance()Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-virtual {v2}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->getRenderIInstance()Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/gallery/ui/PhotoPageItem;->startActionMode(Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;)V

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-virtual {p1}, Lcom/miui/gallery/ui/PhotoPageItem;->finishActionMode()V

    goto :goto_0
.end method


# virtual methods
.method public changeDataSet(Lcom/miui/gallery/model/BaseDataSet;)V
    .locals 1
    .param p1, "dataSet"    # Lcom/miui/gallery/model/BaseDataSet;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->changeDataSet(Lcom/miui/gallery/model/BaseDataSet;Z)V

    .line 81
    return-void
.end method

.method public changeDataSet(Lcom/miui/gallery/model/BaseDataSet;Z)V
    .locals 6
    .param p1, "dataSet"    # Lcom/miui/gallery/model/BaseDataSet;
    .param p2, "immediate"    # Z

    .prologue
    .line 88
    const-string v2, "PhotoPageAdapter"

    const-string v3, "change dataset [%s] to [%s], ignoreDelayNotify %s"

    iget-object v4, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mDataSet:Lcom/miui/gallery/model/BaseDataSet;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2, v3, v4, p1, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    iget-boolean v2, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->isPreviewing:Z

    if-eqz v2, :cond_0

    .line 90
    if-eqz p2, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->clearPreviewParams()V

    .line 92
    invoke-direct {p0}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->notifyPreviewedCallback()V

    .line 95
    :cond_0
    iput-object p1, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mDataSet:Lcom/miui/gallery/model/BaseDataSet;

    .line 96
    const/4 v1, 0x1

    .line 97
    .local v1, "notifyChanged":Z
    iget-boolean v2, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->isPreviewing:Z

    if-eqz v2, :cond_1

    .line 99
    iget-object v2, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mPreviewingItem:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mPreviewingItem:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/ui/PhotoPageItem;

    move-object v0, v2

    .line 100
    .local v0, "item":Lcom/miui/gallery/ui/PhotoPageItem;
    :goto_0
    if-eqz v0, :cond_1

    .line 101
    iget-object v2, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mPreviewCache:Lcom/miui/gallery/model/ImageLoadParams;

    invoke-virtual {v2}, Lcom/miui/gallery/model/ImageLoadParams;->getPos()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->refreshItem(Ljava/lang/Object;I)V

    .line 102
    const/4 v1, 0x0

    .line 105
    .end local v0    # "item":Lcom/miui/gallery/ui/PhotoPageItem;
    :cond_1
    if-eqz v1, :cond_2

    .line 106
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->notifyDataSetChanged()V

    .line 108
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    if-eqz v2, :cond_3

    .line 109
    iget-object v2, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-virtual {v2}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->notifyDataChanged()V

    .line 111
    :cond_3
    return-void

    .line 99
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 349
    invoke-static {p3}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->isItemValidate(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 350
    const-string v2, "PhotoPageAdapter"

    const-string v3, "destroyItem %d"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, p3

    .line 351
    check-cast v0, Lcom/miui/gallery/ui/PhotoPageItem;

    .line 352
    .local v0, "obj":Lcom/miui/gallery/ui/PhotoPageItem;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 353
    const v2, 0x7f12002a

    invoke-virtual {v0, v2}, Lcom/miui/gallery/ui/PhotoPageItem;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 354
    .local v1, "type":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mCachedViews:[Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 355
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/miui/gallery/ui/PhotoPageItem;->setPhotoPageCallback(Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageInteractionListener;)V

    .line 357
    .end local v0    # "obj":Lcom/miui/gallery/ui/PhotoPageItem;
    .end local v1    # "type":Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->isPreviewing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mDataSet:Lcom/miui/gallery/model/BaseDataSet;

    if-nez v0, :cond_1

    .line 193
    :cond_0
    iget v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mInitCount:I

    .line 195
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mDataSet:Lcom/miui/gallery/model/BaseDataSet;

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataSet;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 180
    iget-object v1, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mDataSet:Lcom/miui/gallery/model/BaseDataSet;

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mDataSet:Lcom/miui/gallery/model/BaseDataSet;

    invoke-virtual {v1}, Lcom/miui/gallery/model/BaseDataSet;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mDataSet:Lcom/miui/gallery/model/BaseDataSet;

    invoke-virtual {v1, v0, p1}, Lcom/miui/gallery/model/BaseDataSet;->getItem(Lcom/miui/gallery/model/BaseDataItem;I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v0

    .line 183
    :cond_0
    return-object v0
.end method

.method public getDataSet()Lcom/miui/gallery/model/BaseDataSet;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mDataSet:Lcom/miui/gallery/model/BaseDataSet;

    return-object v0
.end method

.method public getItemPosition(Ljava/lang/Object;I)I
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "position"    # I

    .prologue
    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v0, -0x3

    .line 392
    iget-boolean v3, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->isPreviewing:Z

    if-eqz v3, :cond_2

    .line 393
    invoke-static {p1}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->isItemValidate(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 408
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 396
    goto :goto_0

    .line 398
    :cond_2
    iget-object v3, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mDataSet:Lcom/miui/gallery/model/BaseDataSet;

    if-eqz v3, :cond_5

    .line 401
    if-ltz p2, :cond_3

    iget-object v1, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mDataSet:Lcom/miui/gallery/model/BaseDataSet;

    invoke-virtual {v1}, Lcom/miui/gallery/model/BaseDataSet;->getCount()I

    move-result v1

    if-lt p2, v1, :cond_4

    :cond_3
    move v0, v2

    .line 402
    goto :goto_0

    .line 403
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->isTypeMatch(Ljava/lang/Object;I)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 406
    goto :goto_0

    :cond_5
    move v0, v1

    .line 408
    goto :goto_0
.end method

.method public getSlipWidth(II)I
    .locals 4
    .param p1, "slipHeight"    # I
    .param p2, "position"    # I

    .prologue
    .line 361
    invoke-virtual {p0, p2}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v0

    .line 362
    .local v0, "item":Lcom/miui/gallery/model/BaseDataItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getWidth()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getHeight()I

    move-result v2

    if-lez v2, :cond_0

    .line 363
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    int-to-float v3, p1

    mul-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 364
    .local v1, "slideWidth":F
    invoke-static {}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getMinSlideWidth()F

    move-result v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 365
    float-to-int v2, v1

    .line 368
    .end local v1    # "slideWidth":F
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/widget/PagerAdapter;->getSlipWidth(II)I

    move-result v2

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v5, -0x1

    .line 209
    invoke-direct {p0, p2}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getViewType(I)I

    move-result v0

    .line 210
    .local v0, "type":I
    if-ne v0, v5, :cond_0

    .line 212
    new-instance v1, Lcom/miui/gallery/adapter/PhotoPageAdapter$PlaceHolderItem;

    invoke-direct {v1}, Lcom/miui/gallery/adapter/PhotoPageAdapter$PlaceHolderItem;-><init>()V

    .line 222
    :goto_0
    return-object v1

    .line 214
    :cond_0
    const-string v2, "PhotoPageAdapter"

    const-string v3, "instantiateItem %d"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 215
    invoke-direct {p0, v0, p1}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getPageItem(ILandroid/view/ViewGroup;)Lcom/miui/gallery/ui/PhotoPageItem;

    move-result-object v1

    .line 216
    .local v1, "viewItem":Lcom/miui/gallery/ui/PhotoPageItem;
    invoke-direct {p0, v1, p2}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->bindData(Lcom/miui/gallery/ui/PhotoPageItem;I)V

    .line 217
    const v2, 0x7f12002a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/ui/PhotoPageItem;->setTag(ILjava/lang/Object;)V

    .line 219
    invoke-virtual {p1, v1, v5, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 220
    iget-object v2, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mPhotoPageInteractionListener:Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageInteractionListener;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/PhotoPageItem;->setPhotoPageCallback(Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageInteractionListener;)V

    .line 221
    invoke-direct {p0, v1}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->startOrFinishItemActionMode(Lcom/miui/gallery/ui/PhotoPageItem;)V

    goto :goto_0
.end method

.method public isPreviewing()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->isPreviewing:Z

    return v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 387
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onImageLoadFinish(ZLjava/lang/String;)V
    .locals 1
    .param p1, "cancelled"    # Z
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->needTransit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    invoke-direct {p0}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->onPreviewedEnd()V

    .line 247
    :cond_0
    return-void
.end method

.method public onTransitEnd()V
    .locals 2

    .prologue
    .line 237
    const-string v0, "PhotoPageAdapter"

    const-string v1, "onTransitEnd"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-direct {p0}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->onPreviewedEnd()V

    .line 239
    return-void
.end method

.method public refreshItem(Ljava/lang/Object;I)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "position"    # I

    .prologue
    .line 227
    invoke-static {p1}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->isItemValidate(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    const-string v1, "PhotoPageAdapter"

    const-string v2, "refreshItem %d"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, p1

    .line 229
    check-cast v0, Lcom/miui/gallery/ui/PhotoPageItem;

    .line 230
    .local v0, "viewItem":Lcom/miui/gallery/ui/PhotoPageItem;
    invoke-direct {p0, v0, p2}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->bindData(Lcom/miui/gallery/ui/PhotoPageItem;I)V

    .line 231
    invoke-direct {p0, v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->startOrFinishItemActionMode(Lcom/miui/gallery/ui/PhotoPageItem;)V

    .line 233
    .end local v0    # "viewItem":Lcom/miui/gallery/ui/PhotoPageItem;
    :cond_0
    return-void
.end method

.method public setProcessingMedias(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/provider/ProcessingMedia;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/miui/gallery/provider/ProcessingMedia;>;"
    iput-object p1, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mProcessingMediaMap:Ljava/util/Map;

    .line 115
    return-void
.end method

.method public startActionMode(Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;)Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;
    .locals 2
    .param p1, "listener"    # Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;

    .prologue
    .line 435
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    if-nez v0, :cond_0

    .line 436
    new-instance v0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    iget-object v1, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mCheckSource:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;

    invoke-direct {v0, v1, p1}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;-><init>(Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;)V

    iput-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->startAction()V

    .line 439
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    return-object v0
.end method
