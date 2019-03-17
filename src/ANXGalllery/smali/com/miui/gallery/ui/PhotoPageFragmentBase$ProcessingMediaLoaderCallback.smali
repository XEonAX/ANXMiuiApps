.class Lcom/miui/gallery/ui/PhotoPageFragmentBase$ProcessingMediaLoaderCallback;
.super Ljava/lang/Object;
.source "PhotoPageFragmentBase.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessingMediaLoaderCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/miui/gallery/provider/ProcessingMedia;",
        ">;>;"
    }
.end annotation


# instance fields
.field private isFirstLoad:Z

.field private start:J

.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragmentBase;)V
    .locals 1

    .prologue
    .line 409
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ProcessingMediaLoaderCallback;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ProcessingMediaLoaderCallback;->isFirstLoad:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragmentBase;Lcom/miui/gallery/ui/PhotoPageFragmentBase$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragmentBase;
    .param p2, "x1"    # Lcom/miui/gallery/ui/PhotoPageFragmentBase$1;

    .prologue
    .line 409
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ProcessingMediaLoaderCallback;-><init>(Lcom/miui/gallery/ui/PhotoPageFragmentBase;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .param p1, "i"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/provider/ProcessingMedia;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 415
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ProcessingMediaLoaderCallback;->start:J

    .line 416
    new-instance v0, Lcom/miui/gallery/loader/ProcessingMediaLoader;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ProcessingMediaLoaderCallback;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/miui/gallery/activity/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/loader/ProcessingMediaLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 409
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ProcessingMediaLoaderCallback;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/provider/ProcessingMedia;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/provider/ProcessingMedia;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Lcom/miui/gallery/provider/ProcessingMedia;>;>;"
    .local p2, "processingMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/ProcessingMedia;>;"
    const/4 v8, 0x0

    .line 421
    invoke-static {p2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 422
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ProcessingMediaLoaderCallback;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mProcessingMediaMap:Ljava/util/Map;

    .line 423
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/ProcessingMedia;

    .line 424
    .local v0, "processingMedia":Lcom/miui/gallery/provider/ProcessingMedia;
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ProcessingMediaLoaderCallback;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mProcessingMediaMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/miui/gallery/provider/ProcessingMedia;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 426
    .end local v0    # "processingMedia":Lcom/miui/gallery/provider/ProcessingMedia;
    :cond_0
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ProcessingMediaLoaderCallback;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->access$400(Lcom/miui/gallery/ui/PhotoPageFragmentBase;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/CompatHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 427
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ProcessingMediaLoaderCallback;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    .line 428
    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->access$500(Lcom/miui/gallery/ui/PhotoPageFragmentBase;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x2710

    .line 427
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/internal/CompatHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 434
    :goto_1
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ProcessingMediaLoaderCallback;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ProcessingMediaLoaderCallback;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mProcessingMediaMap:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->setProcessingMedias(Ljava/util/Map;)V

    .line 436
    iget-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ProcessingMediaLoaderCallback;->isFirstLoad:Z

    if-nez v1, :cond_3

    .line 437
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ProcessingMediaLoaderCallback;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->notifyDataSetChanged()V

    .line 442
    :goto_2
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ProcessingMediaLoaderCallback;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->access$600(Lcom/miui/gallery/ui/PhotoPageFragmentBase;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 443
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ProcessingMediaLoaderCallback;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-static {v1, v8}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->access$602(Lcom/miui/gallery/ui/PhotoPageFragmentBase;Z)Z

    .line 444
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ProcessingMediaLoaderCallback;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->access$700(Lcom/miui/gallery/ui/PhotoPageFragmentBase;)V

    .line 447
    :cond_1
    iput-boolean v8, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ProcessingMediaLoaderCallback;->isFirstLoad:Z

    .line 448
    return-void

    .line 431
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ProcessingMediaLoaderCallback;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mProcessingMediaMap:Ljava/util/Map;

    .line 432
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ProcessingMediaLoaderCallback;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->access$400(Lcom/miui/gallery/ui/PhotoPageFragmentBase;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/CompatHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 439
    :cond_3
    const-string v1, "PhotoPageFragmentBase"

    const-string v2, "ProcessingMediaLoader first load costs [%d] ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ProcessingMediaLoaderCallback;->start:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/provider/ProcessingMedia;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 452
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Lcom/miui/gallery/provider/ProcessingMedia;>;>;"
    return-void
.end method
