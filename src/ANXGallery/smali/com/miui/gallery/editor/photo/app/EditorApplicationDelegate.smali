.class public Lcom/miui/gallery/editor/photo/app/EditorApplicationDelegate;
.super Lmiui/external/ApplicationDelegate;
.source "EditorApplicationDelegate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lmiui/external/ApplicationDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .prologue
    .line 20
    invoke-super {p0}, Lmiui/external/ApplicationDelegate;->onCreate()V

    .line 21
    const-string v1, "EditApplicationDelegate"

    const-string v2, "edit progress start"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->getInstance()Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->init(Landroid/content/Context;)V

    .line 23
    invoke-static {p0}, Lcom/miui/gallery/util/GalleryStatHelper;->init(Landroid/content/Context;)V

    .line 24
    invoke-static {p0}, Lcom/miui/gallery/util/uil/CloudImageLoader;->init(Landroid/content/Context;)V

    .line 25
    invoke-static {p0}, Lcom/miui/filtersdk/BeautificationSDK;->init(Landroid/content/Context;)V

    .line 26
    new-instance v0, Lcom/miui/gallery/editor/photo/app/EditorApplicationDelegate$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/EditorApplicationDelegate$1;-><init>(Lcom/miui/gallery/editor/photo/app/EditorApplicationDelegate;)V

    .line 33
    .local v0, "imageLoaderInitializer":Lcom/nostra13/universalimageloader/core/ImageLoader$Initializer;
    invoke-static {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->setInitializer(Lcom/nostra13/universalimageloader/core/ImageLoader$Initializer;)V

    .line 34
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/editor/photo/app/EditorApplicationDelegate$2;

    invoke-direct {v2, p0, v0}, Lcom/miui/gallery/editor/photo/app/EditorApplicationDelegate$2;-><init>(Lcom/miui/gallery/editor/photo/app/EditorApplicationDelegate;Lcom/nostra13/universalimageloader/core/ImageLoader$Initializer;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    .line 41
    return-void
.end method
