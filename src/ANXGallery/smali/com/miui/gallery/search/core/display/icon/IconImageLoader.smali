.class public Lcom/miui/gallery/search/core/display/icon/IconImageLoader;
.super Ljava/lang/Object;
.source "IconImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;
    }
.end annotation


# static fields
.field private static sLoader:Lcom/miui/gallery/search/core/display/icon/IconImageLoader;

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mExecutor:Lcom/miui/gallery/search/core/context/TaskExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 34
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/miui/gallery/search/core/display/icon/IconImageLoader;->sURIMatcher:Landroid/content/UriMatcher;

    .line 35
    sget-object v0, Lcom/miui/gallery/search/core/display/icon/IconImageLoader;->sURIMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "web"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Lcom/miui/gallery/search/core/context/SearchContext;->getInstance()Lcom/miui/gallery/search/core/context/SearchContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/search/core/context/SearchContext;->getIconLoaderExecutor()Lcom/miui/gallery/search/core/context/TaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/search/core/display/icon/IconImageLoader;->mExecutor:Lcom/miui/gallery/search/core/context/TaskExecutor;

    .line 54
    return-void
.end method

.method static synthetic access$000(Landroid/net/Uri;Landroid/widget/ImageView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/Uri;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/miui/gallery/search/core/display/icon/IconImageLoader;->generateKey(Landroid/net/Uri;Landroid/widget/ImageView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cancelHolderTask(Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;)V
    .locals 3
    .param p1, "holder"    # Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;

    .prologue
    .line 113
    invoke-virtual {p1}, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;->getTask()Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    const-string v0, "COVER"

    const-string v1, "Cancel holder task %s"

    invoke-virtual {p1}, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/icon/IconImageLoader;->mExecutor:Lcom/miui/gallery/search/core/context/TaskExecutor;

    invoke-virtual {p1}, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;->getTask()Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/gallery/search/core/context/TaskExecutor;->cancel(Lcom/miui/gallery/threadpool/ThreadPool$Job;)V

    .line 117
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;->setTask(Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;)V

    .line 119
    :cond_0
    return-void
.end method

.method private static generateKey(Landroid/net/Uri;Landroid/widget/ImageView;)Ljava/lang/String;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 122
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 123
    :cond_0
    const-string v0, ""

    .line 125
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "imageView"

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance()Lcom/miui/gallery/search/core/display/icon/IconImageLoader;
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/miui/gallery/search/core/display/icon/IconImageLoader;->sLoader:Lcom/miui/gallery/search/core/display/icon/IconImageLoader;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lcom/miui/gallery/search/core/display/icon/IconImageLoader;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/miui/gallery/search/core/display/icon/IconImageLoader;->sLoader:Lcom/miui/gallery/search/core/display/icon/IconImageLoader;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/miui/gallery/search/core/display/icon/IconImageLoader;

    invoke-direct {v0}, Lcom/miui/gallery/search/core/display/icon/IconImageLoader;-><init>()V

    sput-object v0, Lcom/miui/gallery/search/core/display/icon/IconImageLoader;->sLoader:Lcom/miui/gallery/search/core/display/icon/IconImageLoader;

    .line 47
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_1
    sget-object v0, Lcom/miui/gallery/search/core/display/icon/IconImageLoader;->sLoader:Lcom/miui/gallery/search/core/display/icon/IconImageLoader;

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public displayImage(Landroid/content/Context;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "imageType"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p4, "imageView"    # Landroid/widget/ImageView;
    .param p5, "displayImageOptions"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p6, "imageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .prologue
    .line 58
    const/4 v10, 0x0

    .line 59
    .local v10, "isImageLoaderSupportedUri":Z
    const/4 v9, 0x0

    .line 61
    .local v9, "isGalleryImage":Z
    if-eqz p2, :cond_0

    .line 62
    const-string v3, "image"

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 63
    const/4 v9, 0x1

    .line 69
    :cond_0
    :goto_0
    if-eqz p5, :cond_1

    invoke-virtual/range {p5 .. p5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->shouldShowImageOnLoading()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getImageOnLoading(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    :cond_1
    invoke-static/range {p4 .. p4}, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;->getImageHolder(Landroid/widget/ImageView;)Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;

    move-result-object v2

    .line 74
    .local v2, "holder":Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/miui/gallery/search/core/display/icon/IconImageLoader;->generateKey(Landroid/net/Uri;Landroid/widget/ImageView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;->hasResult()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 76
    invoke-virtual {v2}, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;->displayResult()V

    .line 110
    .end local v2    # "holder":Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;
    :goto_1
    return-void

    .line 64
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ofUri(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    move-result-object v3

    sget-object v4, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->UNKNOWN:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    if-eq v3, v4, :cond_0

    .line 65
    const/4 v10, 0x1

    goto :goto_0

    .line 81
    .restart local v2    # "holder":Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;
    :cond_3
    invoke-direct {p0, v2}, Lcom/miui/gallery/search/core/display/icon/IconImageLoader;->cancelHolderTask(Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;)V

    .line 84
    if-eqz v10, :cond_4

    .line 85
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    .end local v2    # "holder":Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    move-object/from16 v0, p4

    invoke-direct {v4, v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v2 .. v8}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    goto :goto_1

    .line 88
    .restart local v2    # "holder":Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;
    :cond_4
    if-nez v9, :cond_5

    .line 89
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    .end local v2    # "holder":Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;
    const/4 v3, 0x0

    new-instance v4, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    move-object/from16 v0, p4

    invoke-direct {v4, v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v2 .. v8}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    goto :goto_1

    .restart local v2    # "holder":Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;
    :cond_5
    move-object/from16 v3, p4

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 94
    invoke-virtual/range {v2 .. v7}, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;->set(Landroid/widget/ImageView;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)V

    .line 97
    sget-object v3, Lcom/miui/gallery/search/core/display/icon/IconImageLoader;->sURIMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v11

    .line 98
    .local v11, "matchResult":I
    packed-switch v11, :pswitch_data_0

    .line 105
    new-instance v12, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;

    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-direct {v12, p1, v0, v2, v3}, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/miui/gallery/search/core/Consumer;Landroid/os/Handler;)V

    .line 106
    .local v12, "task":Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;
    invoke-virtual {v2, v12}, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;->setTask(Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;)V

    .line 107
    invoke-static {}, Lcom/miui/gallery/search/core/context/SearchContext;->getInstance()Lcom/miui/gallery/search/core/context/SearchContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/search/core/context/SearchContext;->getIconLoaderExecutor()Lcom/miui/gallery/search/core/context/TaskExecutor;

    move-result-object v3

    invoke-interface {v3, v12}, Lcom/miui/gallery/search/core/context/TaskExecutor;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)V

    goto :goto_1

    .line 101
    .end local v12    # "task":Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;
    :pswitch_0
    const-string/jumbo v3, "url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 102
    .local v13, "webUrl":Ljava/lang/String;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {v3, v13, v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto/16 :goto_1

    .line 98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
