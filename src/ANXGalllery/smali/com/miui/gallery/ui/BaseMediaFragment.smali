.class public abstract Lcom/miui/gallery/ui/BaseMediaFragment;
.super Lcom/miui/gallery/ui/BaseFragment;
.source "BaseMediaFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/BaseMediaFragment$PhotoPageReceiver;
    }
.end annotation


# instance fields
.field private mInPhotoPage:Z

.field private mPhotoPageReceiver:Lcom/miui/gallery/ui/BaseMediaFragment$PhotoPageReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseFragment;-><init>()V

    .line 111
    return-void
.end method


# virtual methods
.method protected abstract getLoader()Landroid/content/Loader;
.end method

.method protected getLoaders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/Loader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Loader;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseMediaFragment;->getLoader()Landroid/content/Loader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    return-object v0
.end method

.method protected isInPhotoPage()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/miui/gallery/ui/BaseMediaFragment;->mInPhotoPage:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 31
    new-instance v0, Lcom/miui/gallery/ui/BaseMediaFragment$PhotoPageReceiver;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/BaseMediaFragment$PhotoPageReceiver;-><init>(Lcom/miui/gallery/ui/BaseMediaFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/BaseMediaFragment;->mPhotoPageReceiver:Lcom/miui/gallery/ui/BaseMediaFragment$PhotoPageReceiver;

    .line 32
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseFragment;->onPause()V

    .line 57
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->clearHardMemoryCache()V

    .line 58
    return-void
.end method

.method protected onPhotoPageCreate(Landroid/content/Intent;)V
    .locals 4
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseMediaFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseMediaFragment;->getLoaders()Ljava/util/List;

    move-result-object v1

    .line 75
    .local v1, "loaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/Loader;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 76
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Loader;

    .line 77
    .local v0, "loader":Landroid/content/Loader;
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Landroid/content/Loader;->stopLoading()V

    goto :goto_0

    .line 83
    .end local v0    # "loader":Landroid/content/Loader;
    .end local v1    # "loaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/Loader;>;"
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/gallery/ui/BaseMediaFragment;->mInPhotoPage:Z

    .line 84
    return-void
.end method

.method protected onPhotoPageDestroy(Landroid/content/Intent;)V
    .locals 4
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 90
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseMediaFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    const-string v2, "photo_result_code"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseMediaFragment;->getLoaders()Ljava/util/List;

    move-result-object v1

    .line 93
    .local v1, "loaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/Loader;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 94
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Loader;

    .line 95
    .local v0, "loader":Landroid/content/Loader;
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Landroid/content/Loader;->startLoading()V

    goto :goto_0

    .line 101
    .end local v0    # "loader":Landroid/content/Loader;
    .end local v1    # "loaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/Loader;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseMediaFragment;->finish()V

    .line 104
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/gallery/ui/BaseMediaFragment;->mInPhotoPage:Z

    .line 105
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseFragment;->onResume()V

    .line 52
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 36
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseFragment;->onStart()V

    .line 37
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 38
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.miu.gallery.action.ENTER_PHOTO_PAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    const-string v1, "com.miui.gallery.action.EXIT_PHOTO_PAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/miui/gallery/ui/BaseMediaFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/BaseMediaFragment;->mPhotoPageReceiver:Lcom/miui/gallery/ui/BaseMediaFragment$PhotoPageReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 41
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseFragment;->onStop()V

    .line 46
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseMediaFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/BaseMediaFragment;->mPhotoPageReceiver:Lcom/miui/gallery/ui/BaseMediaFragment$PhotoPageReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 47
    return-void
.end method
