.class public abstract Lcom/miui/gallery/collage/core/CollagePresenter;
.super Ljava/lang/Object;
.source "CollagePresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;,
        Lcom/miui/gallery/collage/core/CollagePresenter$SaveListener;,
        Lcom/miui/gallery/collage/core/CollagePresenter$SaveTask;
    }
.end annotation


# instance fields
.field private mDataLoader:Lcom/miui/gallery/collage/app/common/IDataLoader;

.field protected mImageCount:I

.field private mMenuFragment:Lcom/miui/gallery/collage/app/common/CollageMenuFragment;

.field private mRenderFragment:Lcom/miui/gallery/collage/app/common/CollageRenderFragment;

.field private mReplaceImageListener:Lcom/miui/gallery/collage/CollageActivity$ReplaceImageListener;

.field private mSaveTask:Lcom/miui/gallery/collage/core/CollagePresenter$SaveTask;

.field protected mViewInterface:Lcom/miui/gallery/collage/core/ViewInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mImageCount:I

    .line 181
    new-instance v0, Lcom/miui/gallery/collage/core/CollagePresenter$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/collage/core/CollagePresenter$2;-><init>(Lcom/miui/gallery/collage/core/CollagePresenter;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mReplaceImageListener:Lcom/miui/gallery/collage/CollageActivity$ReplaceImageListener;

    .line 253
    return-void
.end method

.method private static getCreativePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getCreativeDirectory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public attach(Lcom/miui/gallery/collage/core/ViewInterface;)V
    .locals 0
    .param p1, "viewInterface"    # Lcom/miui/gallery/collage/core/ViewInterface;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mViewInterface:Lcom/miui/gallery/collage/core/ViewInterface;

    .line 42
    return-void
.end method

.method protected abstract createEngine(Landroid/content/Context;Lcom/miui/gallery/collage/BitmapManager;)Lcom/miui/gallery/collage/core/RenderEngine;
.end method

.method public final detach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    iput-object v1, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mViewInterface:Lcom/miui/gallery/collage/core/ViewInterface;

    .line 46
    iput-object v1, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mMenuFragment:Lcom/miui/gallery/collage/app/common/CollageMenuFragment;

    .line 47
    iput-object v1, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mRenderFragment:Lcom/miui/gallery/collage/app/common/CollageRenderFragment;

    .line 48
    iget-object v0, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mSaveTask:Lcom/miui/gallery/collage/core/CollagePresenter$SaveTask;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mSaveTask:Lcom/miui/gallery/collage/core/CollagePresenter$SaveTask;

    invoke-static {v0, v1}, Lcom/miui/gallery/collage/core/CollagePresenter$SaveTask;->access$002(Lcom/miui/gallery/collage/core/CollagePresenter$SaveTask;Lcom/miui/gallery/collage/core/CollagePresenter$SaveListener;)Lcom/miui/gallery/collage/core/CollagePresenter$SaveListener;

    .line 50
    iget-object v0, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mSaveTask:Lcom/miui/gallery/collage/core/CollagePresenter$SaveTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/core/CollagePresenter$SaveTask;->cancel(Z)Z

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mDataLoader:Lcom/miui/gallery/collage/app/common/IDataLoader;

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mDataLoader:Lcom/miui/gallery/collage/app/common/IDataLoader;

    invoke-interface {v0}, Lcom/miui/gallery/collage/app/common/IDataLoader;->cancel()V

    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/collage/core/CollagePresenter;->onDetach()V

    .line 56
    return-void
.end method

.method public dismissControlWindow()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mRenderFragment:Lcom/miui/gallery/collage/app/common/CollageRenderFragment;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mRenderFragment:Lcom/miui/gallery/collage/app/common/CollageRenderFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/app/common/CollageRenderFragment;->dismissControlWindow()V

    .line 130
    :cond_0
    return-void
.end method

.method public doSave(Lcom/miui/gallery/collage/BitmapManager;)V
    .locals 13
    .param p1, "bitmapManager"    # Lcom/miui/gallery/collage/BitmapManager;

    .prologue
    const/4 v5, 0x0

    const/4 v12, 0x0

    .line 64
    iget-object v0, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mRenderFragment:Lcom/miui/gallery/collage/app/common/CollageRenderFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mViewInterface:Lcom/miui/gallery/collage/core/ViewInterface;

    if-nez v0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mRenderFragment:Lcom/miui/gallery/collage/app/common/CollageRenderFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/app/common/CollageRenderFragment;->export()Lcom/miui/gallery/collage/core/RenderData;

    move-result-object v2

    .line 68
    .local v2, "renderData":Lcom/miui/gallery/collage/core/RenderData;
    iget-object v0, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mRenderFragment:Lcom/miui/gallery/collage/app/common/CollageRenderFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/app/common/CollageRenderFragment;->onSimple()Ljava/util/HashMap;

    move-result-object v8

    .line 69
    .local v8, "simple":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "collage"

    const-string v3, "collage_save"

    invoke-static {v0, v3, v8}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 70
    iget-object v0, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mViewInterface:Lcom/miui/gallery/collage/core/ViewInterface;

    invoke-interface {v0}, Lcom/miui/gallery/collage/core/ViewInterface;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/miui/gallery/collage/core/CollagePresenter;->createEngine(Landroid/content/Context;Lcom/miui/gallery/collage/BitmapManager;)Lcom/miui/gallery/collage/core/RenderEngine;

    move-result-object v1

    .line 71
    .local v1, "engine":Lcom/miui/gallery/collage/core/RenderEngine;
    if-eqz v2, :cond_2

    if-nez v1, :cond_3

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mViewInterface:Lcom/miui/gallery/collage/core/ViewInterface;

    invoke-interface {v0, v5, v12}, Lcom/miui/gallery/collage/core/ViewInterface;->onSaveFinish(Ljava/lang/String;Z)V

    goto :goto_0

    .line 75
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mViewInterface:Lcom/miui/gallery/collage/core/ViewInterface;

    invoke-interface {v0}, Lcom/miui/gallery/collage/core/ViewInterface;->onSaving()V

    .line 77
    const-string/jumbo v0, "yyyyMMdd_HHmmss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v0, v10, v11}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v9

    .line 78
    .local v9, "stamp":Ljava/lang/CharSequence;
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "IMG_%s.jpg"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v9, v4, v12

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 79
    .local v7, "name":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lcom/miui/gallery/collage/core/CollagePresenter;->getCreativePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .local v6, "file":Ljava/io/File;
    new-instance v0, Lcom/miui/gallery/collage/core/CollagePresenter$SaveTask;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mViewInterface:Lcom/miui/gallery/collage/core/ViewInterface;

    invoke-interface {v4}, Lcom/miui/gallery/collage/core/ViewInterface;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/collage/core/CollagePresenter$SaveTask;-><init>(Lcom/miui/gallery/collage/core/RenderEngine;Lcom/miui/gallery/collage/core/RenderData;Ljava/lang/String;Landroid/content/Context;Lcom/miui/gallery/collage/core/CollagePresenter$1;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mSaveTask:Lcom/miui/gallery/collage/core/CollagePresenter$SaveTask;

    .line 82
    iget-object v0, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mSaveTask:Lcom/miui/gallery/collage/core/CollagePresenter$SaveTask;

    new-instance v3, Lcom/miui/gallery/collage/core/CollagePresenter$1;

    invoke-direct {v3, p0}, Lcom/miui/gallery/collage/core/CollagePresenter$1;-><init>(Lcom/miui/gallery/collage/core/CollagePresenter;)V

    invoke-static {v0, v3}, Lcom/miui/gallery/collage/core/CollagePresenter$SaveTask;->access$002(Lcom/miui/gallery/collage/core/CollagePresenter$SaveTask;Lcom/miui/gallery/collage/core/CollagePresenter$SaveListener;)Lcom/miui/gallery/collage/core/CollagePresenter$SaveListener;

    .line 90
    iget-object v0, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mSaveTask:Lcom/miui/gallery/collage/core/CollagePresenter$SaveTask;

    new-array v3, v12, [Ljava/lang/Void;

    invoke-virtual {v0, v3}, Lcom/miui/gallery/collage/core/CollagePresenter$SaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public getImageCount()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mImageCount:I

    return v0
.end method

.method public getMenuFragment()Lcom/miui/gallery/collage/app/common/CollageMenuFragment;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mMenuFragment:Lcom/miui/gallery/collage/app/common/CollageMenuFragment;

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/miui/gallery/collage/core/CollagePresenter;->onCreateMenuFragment()Lcom/miui/gallery/collage/app/common/CollageMenuFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mMenuFragment:Lcom/miui/gallery/collage/app/common/CollageMenuFragment;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mMenuFragment:Lcom/miui/gallery/collage/app/common/CollageMenuFragment;

    return-object v0
.end method

.method public abstract getMenuFragmentTag()Ljava/lang/String;
.end method

.method public getRenderFragment()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mRenderFragment:Lcom/miui/gallery/collage/app/common/CollageRenderFragment;

    if-nez v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/miui/gallery/collage/core/CollagePresenter;->onCreateRenderFragment()Lcom/miui/gallery/collage/app/common/CollageRenderFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mRenderFragment:Lcom/miui/gallery/collage/app/common/CollageRenderFragment;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mRenderFragment:Lcom/miui/gallery/collage/app/common/CollageRenderFragment;

    return-object v0
.end method

.method public abstract getRenderFragmentTag()Ljava/lang/String;
.end method

.method public abstract getTitle()I
.end method

.method protected abstract hasResourceData()Z
.end method

.method public isActivating()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mRenderFragment:Lcom/miui/gallery/collage/app/common/CollageRenderFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mRenderFragment:Lcom/miui/gallery/collage/app/common/CollageRenderFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/app/common/CollageRenderFragment;->isActivating()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final loadDataFromResourceAsync(Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;)V
    .locals 1
    .param p1, "dataLoadListener"    # Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/miui/gallery/collage/core/CollagePresenter;->hasResourceData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    if-eqz p1, :cond_0

    .line 114
    invoke-interface {p1}, Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;->onDataLoad()V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/gallery/collage/core/CollagePresenter;->onCreateDataLoader(Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;)Lcom/miui/gallery/collage/app/common/IDataLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mDataLoader:Lcom/miui/gallery/collage/app/common/IDataLoader;

    .line 119
    iget-object v0, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mDataLoader:Lcom/miui/gallery/collage/app/common/IDataLoader;

    invoke-interface {v0}, Lcom/miui/gallery/collage/app/common/IDataLoader;->loadData()V

    goto :goto_0
.end method

.method public notifyBitmapReplace(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "from"    # Landroid/graphics/Bitmap;
    .param p2, "to"    # Landroid/graphics/Bitmap;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mRenderFragment:Lcom/miui/gallery/collage/app/common/CollageRenderFragment;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mRenderFragment:Lcom/miui/gallery/collage/app/common/CollageRenderFragment;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/collage/app/common/CollageRenderFragment;->onBitmapReplace(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 150
    :cond_0
    return-void
.end method

.method public notifyReceiveBitmaps()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mRenderFragment:Lcom/miui/gallery/collage/app/common/CollageRenderFragment;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mRenderFragment:Lcom/miui/gallery/collage/app/common/CollageRenderFragment;

    iget-object v1, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mViewInterface:Lcom/miui/gallery/collage/core/ViewInterface;

    invoke-interface {v1}, Lcom/miui/gallery/collage/core/ViewInterface;->getBitmaps()[Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/app/common/CollageRenderFragment;->setBitmap([Landroid/graphics/Bitmap;)V

    .line 144
    :cond_0
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 167
    instance-of v1, p1, Lcom/miui/gallery/collage/app/common/CollageRenderFragment;

    if-eqz v1, :cond_2

    .line 168
    iget-object v1, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mViewInterface:Lcom/miui/gallery/collage/core/ViewInterface;

    invoke-interface {v1}, Lcom/miui/gallery/collage/core/ViewInterface;->getBitmaps()[Landroid/graphics/Bitmap;

    move-result-object v0

    .line 169
    .local v0, "bitmaps":[Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 170
    iget-object v1, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mRenderFragment:Lcom/miui/gallery/collage/app/common/CollageRenderFragment;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/collage/app/common/CollageRenderFragment;->setBitmap([Landroid/graphics/Bitmap;)V

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mRenderFragment:Lcom/miui/gallery/collage/app/common/CollageRenderFragment;

    iget-object v2, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mReplaceImageListener:Lcom/miui/gallery/collage/CollageActivity$ReplaceImageListener;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/collage/app/common/CollageRenderFragment;->setReplaceImageListener(Lcom/miui/gallery/collage/CollageActivity$ReplaceImageListener;)V

    .line 179
    .end local v0    # "bitmaps":[Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-void

    .line 173
    :cond_2
    instance-of v1, p1, Lcom/miui/gallery/collage/app/common/CollageMenuFragment;

    if-eqz v1, :cond_1

    .line 174
    iget-object v1, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mMenuFragment:Lcom/miui/gallery/collage/app/common/CollageMenuFragment;

    invoke-virtual {v1, p0}, Lcom/miui/gallery/collage/app/common/CollageMenuFragment;->setPresenter(Lcom/miui/gallery/collage/core/CollagePresenter;)V

    .line 175
    iget-object v1, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mRenderFragment:Lcom/miui/gallery/collage/app/common/CollageRenderFragment;

    if-eqz v1, :cond_1

    .line 176
    iget-object v1, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mMenuFragment:Lcom/miui/gallery/collage/app/common/CollageMenuFragment;

    iget-object v2, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mRenderFragment:Lcom/miui/gallery/collage/app/common/CollageRenderFragment;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/collage/app/common/CollageMenuFragment;->setRenderFragment(Lcom/miui/gallery/collage/app/common/CollageRenderFragment;)V

    goto :goto_0
.end method

.method protected abstract onCreateDataLoader(Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;)Lcom/miui/gallery/collage/app/common/IDataLoader;
.end method

.method protected abstract onCreateMenuFragment()Lcom/miui/gallery/collage/app/common/CollageMenuFragment;
.end method

.method protected abstract onCreateRenderFragment()Lcom/miui/gallery/collage/app/common/CollageRenderFragment;
.end method

.method protected abstract onDetach()V
.end method

.method public setImageSize(I)V
    .locals 0
    .param p1, "imageCount"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/miui/gallery/collage/core/CollagePresenter;->mImageCount:I

    .line 134
    return-void
.end method

.method public supportImageSize(I)Z
    .locals 1
    .param p1, "imageCount"    # I

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method
