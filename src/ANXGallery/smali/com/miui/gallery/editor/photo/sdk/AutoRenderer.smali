.class public Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;
.super Ljava/lang/Object;
.source "AutoRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/sdk/AutoRenderer$AutoRenderTask;,
        Lcom/miui/gallery/editor/photo/sdk/AutoRenderer$Callback;
    }
.end annotation


# instance fields
.field private mAutoRenderTask:Lcom/miui/gallery/editor/photo/sdk/AutoRenderer$AutoRenderTask;

.field private mFilterEngine:Lcom/miui/gallery/editor/photo/core/imports/filter/FilterEngine;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 18
    .local v0, "appContext":Landroid/content/Context;
    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterEngine;

    invoke-direct {v1, v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterEngine;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;->mFilterEngine:Lcom/miui/gallery/editor/photo/core/imports/filter/FilterEngine;

    .line 19
    invoke-static {v0}, Lcom/miui/filtersdk/BeautificationSDK;->init(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;)Lcom/miui/gallery/editor/photo/core/imports/filter/FilterEngine;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;->mFilterEngine:Lcom/miui/gallery/editor/photo/core/imports/filter/FilterEngine;

    return-object v0
.end method


# virtual methods
.method public release()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;->mFilterEngine:Lcom/miui/gallery/editor/photo/core/imports/filter/FilterEngine;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterEngine;->release()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;->mFilterEngine:Lcom/miui/gallery/editor/photo/core/imports/filter/FilterEngine;

    .line 34
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;->mAutoRenderTask:Lcom/miui/gallery/editor/photo/sdk/AutoRenderer$AutoRenderTask;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;->mAutoRenderTask:Lcom/miui/gallery/editor/photo/sdk/AutoRenderer$AutoRenderTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/sdk/AutoRenderer$AutoRenderTask;->cancel(Z)Z

    .line 37
    :cond_0
    return-void
.end method

.method public render(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;->mFilterEngine:Lcom/miui/gallery/editor/photo/core/imports/filter/FilterEngine;

    invoke-static {}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterManager;->getAutoBeautifyData()Lcom/miui/gallery/editor/photo/core/imports/filter/FilterBeautify;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterEngine;->render(Landroid/graphics/Bitmap;Lcom/miui/gallery/editor/photo/core/Metadata;Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public render(Landroid/graphics/Bitmap;Lcom/miui/gallery/editor/photo/sdk/AutoRenderer$Callback;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "callback"    # Lcom/miui/gallery/editor/photo/sdk/AutoRenderer$Callback;

    .prologue
    .line 23
    new-instance v0, Lcom/miui/gallery/editor/photo/sdk/AutoRenderer$AutoRenderTask;

    invoke-direct {v0, p0, p2}, Lcom/miui/gallery/editor/photo/sdk/AutoRenderer$AutoRenderTask;-><init>(Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;Lcom/miui/gallery/editor/photo/sdk/AutoRenderer$Callback;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;->mAutoRenderTask:Lcom/miui/gallery/editor/photo/sdk/AutoRenderer$AutoRenderTask;

    .line 24
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;->mAutoRenderTask:Lcom/miui/gallery/editor/photo/sdk/AutoRenderer$AutoRenderTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/editor/photo/sdk/AutoRenderer$AutoRenderTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 25
    return-void
.end method
