.class public Lcom/miui/gallery/activity/HomePageStartupHelper;
.super Ljava/lang/Object;
.source "HomePageStartupHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/activity/HomePageStartupHelper$ImageDisplayItem;,
        Lcom/miui/gallery/activity/HomePageStartupHelper$Attacher;,
        Lcom/miui/gallery/activity/HomePageStartupHelper$DataLoadListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final MICRO_THUMB_COLUMN_NUMBER:I

.field private final MICRO_THUMB_PRELOAD_MAX_COUNT:I

.field private mAttacher:Lcom/miui/gallery/activity/HomePageStartupHelper$Attacher;

.field private mContext:Landroid/content/Context;

.field private mCursorLock:Ljava/lang/Object;

.field private mDataLoadFuture:Lcom/miui/gallery/threadpool/Future;

.field private mDataLoadListener:Lcom/miui/gallery/activity/HomePageStartupHelper$DataLoadListener;

.field private volatile mHomePageCursor:Landroid/database/Cursor;

.field private volatile mIsDataInitialized:Z

.field private volatile mIsDestroyed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "HomePageStartupHelper"

    sput-object v0, Lcom/miui/gallery/activity/HomePageStartupHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/activity/HomePageStartupHelper$Attacher;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attacher"    # Lcom/miui/gallery/activity/HomePageStartupHelper$Attacher;

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v0

    iget v0, v0, Lcom/miui/gallery/Config$ThumbConfig;->sMicroThumbColumnsPortrait:I

    iput v0, p0, Lcom/miui/gallery/activity/HomePageStartupHelper;->MICRO_THUMB_COLUMN_NUMBER:I

    .line 32
    iget v0, p0, Lcom/miui/gallery/activity/HomePageStartupHelper;->MICRO_THUMB_COLUMN_NUMBER:I

    mul-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/miui/gallery/activity/HomePageStartupHelper;->MICRO_THUMB_PRELOAD_MAX_COUNT:I

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/activity/HomePageStartupHelper;->mCursorLock:Ljava/lang/Object;

    .line 39
    iput-boolean v1, p0, Lcom/miui/gallery/activity/HomePageStartupHelper;->mIsDataInitialized:Z

    .line 40
    iput-boolean v1, p0, Lcom/miui/gallery/activity/HomePageStartupHelper;->mIsDestroyed:Z

    .line 44
    iput-object p1, p0, Lcom/miui/gallery/activity/HomePageStartupHelper;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/miui/gallery/activity/HomePageStartupHelper;->mAttacher:Lcom/miui/gallery/activity/HomePageStartupHelper$Attacher;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/activity/HomePageStartupHelper;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/activity/HomePageStartupHelper;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageStartupHelper;->mHomePageCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/gallery/activity/HomePageStartupHelper;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/activity/HomePageStartupHelper;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/miui/gallery/activity/HomePageStartupHelper;->mHomePageCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/gallery/activity/HomePageStartupHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/activity/HomePageStartupHelper;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageStartupHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/miui/gallery/activity/HomePageStartupHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/activity/HomePageStartupHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/activity/HomePageStartupHelper;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/miui/gallery/activity/HomePageStartupHelper;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/activity/HomePageStartupHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/activity/HomePageStartupHelper;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/miui/gallery/activity/HomePageStartupHelper;->closeCursor()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/gallery/activity/HomePageStartupHelper;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/activity/HomePageStartupHelper;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageStartupHelper;->mCursorLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/activity/HomePageStartupHelper;Ljava/util/ArrayList;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/activity/HomePageStartupHelper;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/miui/gallery/activity/HomePageStartupHelper;->getPreloadImageCount(Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/activity/HomePageStartupHelper;)Lcom/miui/gallery/activity/HomePageStartupHelper$DataLoadListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/activity/HomePageStartupHelper;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageStartupHelper;->mDataLoadListener:Lcom/miui/gallery/activity/HomePageStartupHelper$DataLoadListener;

    return-object v0
.end method

.method static synthetic access$802(Lcom/miui/gallery/activity/HomePageStartupHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/activity/HomePageStartupHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/miui/gallery/activity/HomePageStartupHelper;->mIsDataInitialized:Z

    return p1
.end method

.method static synthetic access$900(Lcom/miui/gallery/activity/HomePageStartupHelper;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/activity/HomePageStartupHelper;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/miui/gallery/activity/HomePageStartupHelper;->preloadHomePageImages(Ljava/util/ArrayList;)V

    return-void
.end method

.method private closeCursor()V
    .locals 2

    .prologue
    .line 191
    iget-object v1, p0, Lcom/miui/gallery/activity/HomePageStartupHelper;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageStartupHelper;->mHomePageCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageStartupHelper;->mHomePageCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 195
    :cond_0
    monitor-exit v1

    .line 196
    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getPreloadImageCount(Ljava/util/ArrayList;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "groupItemCount":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 114
    const/4 v3, 0x0

    .line 138
    :goto_0
    return v3

    .line 116
    :cond_0
    const/4 v6, 0x0

    .line 117
    .local v6, "totalImageCount":I
    const/4 v5, 0x0

    .line 118
    .local v5, "totalEmptyCount":I
    iget v2, p0, Lcom/miui/gallery/activity/HomePageStartupHelper;->MICRO_THUMB_COLUMN_NUMBER:I

    .line 119
    .local v2, "numColumn":I
    iget v1, p0, Lcom/miui/gallery/activity/HomePageStartupHelper;->MICRO_THUMB_PRELOAD_MAX_COUNT:I

    .line 120
    .local v1, "maxCount":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 121
    .local v0, "count":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 122
    .local v7, "value":I
    add-int/2addr v6, v7

    .line 123
    add-int v9, v6, v5

    if-le v9, v1, :cond_3

    .line 132
    .end local v0    # "count":Ljava/lang/Integer;
    .end local v7    # "value":I
    :cond_2
    add-int v8, v5, v6

    if-ge v8, v1, :cond_4

    .line 133
    move v3, v6

    .line 137
    .local v3, "preloadCount":I
    :goto_2
    sget-object v8, Lcom/miui/gallery/activity/HomePageStartupHelper;->TAG:Ljava/lang/String;

    const-string v9, "preload image count %d"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 126
    .end local v3    # "preloadCount":I
    .restart local v0    # "count":Ljava/lang/Integer;
    .restart local v7    # "value":I
    :cond_3
    rem-int v4, v7, v2

    .line 127
    .local v4, "remain":I
    if-eqz v4, :cond_1

    .line 128
    sub-int v9, v2, v4

    add-int/2addr v5, v9

    goto :goto_1

    .line 135
    .end local v0    # "count":Ljava/lang/Integer;
    .end local v4    # "remain":I
    .end local v7    # "value":I
    :cond_4
    sub-int v3, v1, v5

    .restart local v3    # "preloadCount":I
    goto :goto_2
.end method

.method private loadHomePageData()Lcom/miui/gallery/threadpool/Future;
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/activity/HomePageStartupHelper$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/activity/HomePageStartupHelper$1;-><init>(Lcom/miui/gallery/activity/HomePageStartupHelper;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    return-object v0
.end method

.method private preloadHomePageImages(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/activity/HomePageStartupHelper$ImageDisplayItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "displayItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/activity/HomePageStartupHelper$ImageDisplayItem;>;"
    const/4 v11, 0x1

    const/4 v5, 0x0

    .line 142
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageStartupHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/activity/HomePageStartupHelper;->mIsDestroyed:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->resume()V

    .line 146
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    sget-object v1, Lcom/miui/gallery/Config$ThumbConfig;->MICRO_THUMB_DISPLAY_IMAGE_OPTIONS_DEFAULT:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 147
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 148
    invoke-virtual {v0, v11}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->highPriority(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v8

    .line 149
    .local v8, "builder":Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/gallery/activity/HomePageStartupHelper$ImageDisplayItem;

    .line 150
    .local v9, "item":Lcom/miui/gallery/activity/HomePageStartupHelper$ImageDisplayItem;
    iget-boolean v0, p0, Lcom/miui/gallery/activity/HomePageStartupHelper;->mIsDestroyed:Z

    if-eqz v0, :cond_2

    .line 151
    sget-object v0, Lcom/miui/gallery/activity/HomePageStartupHelper;->TAG:Ljava/lang/String;

    const-string v1, "preload home page images break"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_2
    invoke-static {v9}, Lcom/miui/gallery/activity/HomePageStartupHelper$ImageDisplayItem;->access$1000(Lcom/miui/gallery/activity/HomePageStartupHelper$ImageDisplayItem;)J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-lez v0, :cond_3

    .line 155
    invoke-virtual {v8, v11}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerFileLength(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-static {v9}, Lcom/miui/gallery/activity/HomePageStartupHelper$ImageDisplayItem;->access$1000(Lcom/miui/gallery/activity/HomePageStartupHelper$ImageDisplayItem;)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->fileLength(J)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 159
    :goto_2
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    .line 160
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/gallery/Config$ThumbConfig;->sMicroTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    sget-object v3, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->CROP:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    .line 159
    invoke-virtual {v0, v5, v1, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->createImageAware(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    move-result-object v2

    .line 161
    .local v2, "imageAware":Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    .line 162
    invoke-static {v9}, Lcom/miui/gallery/activity/HomePageStartupHelper$ImageDisplayItem;->access$1100(Lcom/miui/gallery/activity/HomePageStartupHelper$ImageDisplayItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-virtual {v8}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    .line 165
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/miui/gallery/Config$ThumbConfig;->sMicroTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-object v6, v5

    move-object v7, v5

    .line 161
    invoke-virtual/range {v0 .. v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Landroid/graphics/RectF;)V

    goto :goto_1

    .line 157
    .end local v2    # "imageAware":Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerFileLength(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    goto :goto_2
.end method


# virtual methods
.method public onActivityCreate()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/miui/gallery/activity/HomePageStartupHelper;->loadHomePageData()Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/activity/HomePageStartupHelper;->mDataLoadFuture:Lcom/miui/gallery/threadpool/Future;

    .line 50
    return-void
.end method

.method public onActivityDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/activity/HomePageStartupHelper;->mIsDestroyed:Z

    .line 178
    invoke-direct {p0}, Lcom/miui/gallery/activity/HomePageStartupHelper;->closeCursor()V

    .line 180
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageStartupHelper;->mAttacher:Lcom/miui/gallery/activity/HomePageStartupHelper$Attacher;

    if-eqz v0, :cond_0

    .line 181
    iput-object v1, p0, Lcom/miui/gallery/activity/HomePageStartupHelper;->mAttacher:Lcom/miui/gallery/activity/HomePageStartupHelper$Attacher;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageStartupHelper;->mDataLoadFuture:Lcom/miui/gallery/threadpool/Future;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageStartupHelper;->mDataLoadFuture:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    .line 186
    iput-object v1, p0, Lcom/miui/gallery/activity/HomePageStartupHelper;->mDataLoadFuture:Lcom/miui/gallery/threadpool/Future;

    .line 188
    :cond_1
    return-void
.end method

.method public onStartup()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageStartupHelper;->mAttacher:Lcom/miui/gallery/activity/HomePageStartupHelper$Attacher;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageStartupHelper;->mAttacher:Lcom/miui/gallery/activity/HomePageStartupHelper$Attacher;

    invoke-interface {v0}, Lcom/miui/gallery/activity/HomePageStartupHelper$Attacher;->onStartup()V

    .line 173
    :cond_0
    return-void
.end method

.method public setDataLoaderListener(Lcom/miui/gallery/activity/HomePageStartupHelper$DataLoadListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/miui/gallery/activity/HomePageStartupHelper$DataLoadListener;

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/miui/gallery/activity/HomePageStartupHelper;->mIsDataInitialized:Z

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageStartupHelper;->mHomePageCursor:Landroid/database/Cursor;

    invoke-interface {p1, v0}, Lcom/miui/gallery/activity/HomePageStartupHelper$DataLoadListener;->onDataLoadFinish(Landroid/database/Cursor;)V

    .line 205
    :goto_0
    return-void

    .line 202
    :cond_0
    sget-object v0, Lcom/miui/gallery/activity/HomePageStartupHelper;->TAG:Ljava/lang/String;

    const-string v1, "preload home page cursor failed"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iput-object p1, p0, Lcom/miui/gallery/activity/HomePageStartupHelper;->mDataLoadListener:Lcom/miui/gallery/activity/HomePageStartupHelper$DataLoadListener;

    goto :goto_0
.end method
