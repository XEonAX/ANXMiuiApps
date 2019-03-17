.class public Lcom/miui/gallery/ui/SlideShowFragment;
.super Lcom/miui/gallery/ui/BaseFragment;
.source "SlideShowFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/SlideShowFragment$SlideLoaderCallBack;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/gallery/adapter/SlideShowAdapter;

.field private mLoadDuration:I

.field private mLoaderCallBack:Lcom/miui/gallery/ui/SlideShowFragment$SlideLoaderCallBack;

.field private mSlideHandler:Landroid/os/Handler;

.field private mSlideView:Lcom/miui/gallery/widget/SlideShowView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseFragment;-><init>()V

    .line 42
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/miui/gallery/ui/SlideShowFragment;->mLoadDuration:I

    .line 44
    new-instance v0, Lcom/miui/gallery/ui/SlideShowFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/SlideShowFragment$1;-><init>(Lcom/miui/gallery/ui/SlideShowFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/SlideShowFragment;->mSlideHandler:Landroid/os/Handler;

    .line 183
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/SlideShowFragment;Lcom/miui/gallery/adapter/SlideShowAdapter$ShowItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/SlideShowFragment;
    .param p1, "x1"    # Lcom/miui/gallery/adapter/SlideShowAdapter$ShowItem;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/SlideShowFragment;->showPendingItem(Lcom/miui/gallery/adapter/SlideShowAdapter$ShowItem;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/SlideShowFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/SlideShowFragment;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/miui/gallery/ui/SlideShowFragment;->loadNextBitmap()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/SlideShowFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/SlideShowFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/ui/SlideShowFragment;->mSlideHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/SlideShowFragment;)Lcom/miui/gallery/adapter/SlideShowAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/SlideShowFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/ui/SlideShowFragment;->mAdapter:Lcom/miui/gallery/adapter/SlideShowAdapter;

    return-object v0
.end method

.method private getSlideDuration()I
    .locals 3

    .prologue
    .line 91
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$SlideShow;->getSlideShowInterval()I

    move-result v2

    mul-int/lit16 v0, v2, 0x3e8

    .line 92
    .local v0, "interval":I
    const/16 v2, 0xdac

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 93
    .local v1, "slideDuration":I
    add-int/lit16 v2, v1, -0x1f4

    iput v2, p0, Lcom/miui/gallery/ui/SlideShowFragment;->mLoadDuration:I

    .line 94
    return v1
.end method

.method private loadNextBitmap()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/miui/gallery/ui/SlideShowFragment;->mAdapter:Lcom/miui/gallery/adapter/SlideShowAdapter;

    new-instance v1, Lcom/miui/gallery/ui/SlideShowFragment$3;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/SlideShowFragment$3;-><init>(Lcom/miui/gallery/ui/SlideShowFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/SlideShowAdapter;->nextBitmap(Lcom/miui/gallery/threadpool/FutureListener;)V

    .line 181
    return-void
.end method

.method private setResult(Lcom/miui/gallery/adapter/SlideShowAdapter$ShowItem;)V
    .locals 12
    .param p1, "item"    # Lcom/miui/gallery/adapter/SlideShowAdapter$ShowItem;

    .prologue
    .line 156
    const-string v2, "SlideShowFragment"

    const-string/jumbo v3, "setResult %d"

    invoke-virtual {p1}, Lcom/miui/gallery/adapter/SlideShowAdapter$ShowItem;->getIndex()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v3, v5}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    iget-object v2, p0, Lcom/miui/gallery/ui/SlideShowFragment;->mAdapter:Lcom/miui/gallery/adapter/SlideShowAdapter;

    invoke-virtual {p1}, Lcom/miui/gallery/adapter/SlideShowAdapter$ShowItem;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/adapter/SlideShowAdapter;->getBaseDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v0

    .line 158
    .local v0, "dataItem":Lcom/miui/gallery/model/BaseDataItem;
    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getPathDisplayBetter()Ljava/lang/String;

    move-result-object v4

    .line 160
    .local v4, "path":Ljava/lang/String;
    new-instance v1, Lcom/miui/gallery/model/ImageLoadParams;

    .line 161
    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getKey()J

    move-result-wide v2

    .line 162
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v5

    iget-object v5, v5, Lcom/miui/gallery/Config$ThumbConfig;->sMicroTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    const/4 v6, 0x0

    .line 163
    invoke-virtual {p1}, Lcom/miui/gallery/adapter/SlideShowAdapter$ShowItem;->getIndex()I

    move-result v7

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getMimeType()Ljava/lang/String;

    move-result-object v8

    .line 164
    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getSecretKey()[B

    move-result-object v9

    const-wide/16 v10, -0x1

    invoke-direct/range {v1 .. v11}, Lcom/miui/gallery/model/ImageLoadParams;-><init>(JLjava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;ILjava/lang/String;[BJ)V

    .line 166
    .local v1, "params":Lcom/miui/gallery/model/ImageLoadParams;
    invoke-virtual {p0}, Lcom/miui/gallery/ui/SlideShowFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "photo_transition_data"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 168
    .end local v1    # "params":Lcom/miui/gallery/model/ImageLoadParams;
    .end local v4    # "path":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/SlideShowFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "photo_init_position"

    invoke-virtual {p1}, Lcom/miui/gallery/adapter/SlideShowAdapter$ShowItem;->getIndex()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 169
    invoke-virtual {p0}, Lcom/miui/gallery/ui/SlideShowFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "photo_count"

    iget-object v5, p0, Lcom/miui/gallery/ui/SlideShowFragment;->mAdapter:Lcom/miui/gallery/adapter/SlideShowAdapter;

    invoke-virtual {v5}, Lcom/miui/gallery/adapter/SlideShowAdapter;->getCount()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    return-void
.end method

.method private showPendingItem(Lcom/miui/gallery/adapter/SlideShowAdapter$ShowItem;)V
    .locals 4
    .param p1, "item"    # Lcom/miui/gallery/adapter/SlideShowAdapter$ShowItem;

    .prologue
    .line 143
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/adapter/SlideShowAdapter$ShowItem;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/SlideShowFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/gallery/ui/SlideShowFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/miui/gallery/ui/SlideShowFragment;->finish()V

    .line 153
    :cond_1
    :goto_0
    return-void

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/SlideShowFragment;->mSlideView:Lcom/miui/gallery/widget/SlideShowView;

    invoke-virtual {p1}, Lcom/miui/gallery/adapter/SlideShowAdapter$ShowItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/widget/SlideShowView;->next(Landroid/graphics/Bitmap;I)V

    .line 150
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/SlideShowFragment;->setResult(Lcom/miui/gallery/adapter/SlideShowAdapter$ShowItem;)V

    .line 152
    iget-object v0, p0, Lcom/miui/gallery/ui/SlideShowFragment;->mSlideHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget v2, p0, Lcom/miui/gallery/ui/SlideShowFragment;->mLoadDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public static showSlideShowFragment(Lcom/miui/gallery/activity/BaseActivity;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "activity"    # Lcom/miui/gallery/activity/BaseActivity;
    .param p1, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 60
    new-instance v0, Lcom/miui/gallery/ui/SlideShowFragment;

    invoke-direct {v0}, Lcom/miui/gallery/ui/SlideShowFragment;-><init>()V

    .line 61
    .local v0, "fragment":Lcom/miui/gallery/ui/SlideShowFragment;
    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/SlideShowFragment;->setArguments(Landroid/os/Bundle;)V

    .line 62
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/gallery/activity/BaseActivity;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ZZ)V

    .line 63
    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    const-string/jumbo v0, "slide_show"

    return-object v0
.end method

.method protected getThemeRes()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 100
    new-instance v0, Lcom/miui/gallery/ui/SlideShowFragment$SlideLoaderCallBack;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/SlideShowFragment$SlideLoaderCallBack;-><init>(Lcom/miui/gallery/ui/SlideShowFragment;Lcom/miui/gallery/ui/SlideShowFragment$1;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/SlideShowFragment;->mLoaderCallBack:Lcom/miui/gallery/ui/SlideShowFragment$SlideLoaderCallBack;

    .line 101
    invoke-virtual {p0}, Lcom/miui/gallery/ui/SlideShowFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const-string v1, "SlideShowFragment"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/gallery/ui/SlideShowFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/ui/SlideShowFragment;->mLoaderCallBack:Lcom/miui/gallery/ui/SlideShowFragment$SlideLoaderCallBack;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 102
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 68
    const v1, 0x7f040147

    invoke-virtual {p1, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f120296

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/widget/SlideShowView;

    iput-object v1, p0, Lcom/miui/gallery/ui/SlideShowFragment;->mSlideView:Lcom/miui/gallery/widget/SlideShowView;

    .line 70
    new-instance v2, Lcom/miui/gallery/adapter/SlideShowAdapter;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/SlideShowFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "photo_transition_data"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/model/ImageLoadParams;

    .line 71
    invoke-virtual {p0}, Lcom/miui/gallery/ui/SlideShowFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "photo_init_position"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {v2, v1, v3}, Lcom/miui/gallery/adapter/SlideShowAdapter;-><init>(Lcom/miui/gallery/model/ImageLoadParams;I)V

    iput-object v2, p0, Lcom/miui/gallery/ui/SlideShowFragment;->mAdapter:Lcom/miui/gallery/adapter/SlideShowAdapter;

    .line 72
    iget-object v1, p0, Lcom/miui/gallery/ui/SlideShowFragment;->mSlideView:Lcom/miui/gallery/widget/SlideShowView;

    invoke-direct {p0}, Lcom/miui/gallery/ui/SlideShowFragment;->getSlideDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/SlideShowView;->setSlideDuration(I)V

    .line 73
    iget-object v1, p0, Lcom/miui/gallery/ui/SlideShowFragment;->mSlideView:Lcom/miui/gallery/widget/SlideShowView;

    new-instance v2, Lcom/miui/gallery/ui/SlideShowFragment$2;

    invoke-direct {v2, p0}, Lcom/miui/gallery/ui/SlideShowFragment$2;-><init>(Lcom/miui/gallery/ui/SlideShowFragment;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/SlideShowView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 82
    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseFragment;->onPause()V

    .line 117
    invoke-virtual {p0}, Lcom/miui/gallery/ui/SlideShowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/SystemUiUtil;->showSystemBars(Landroid/view/View;)V

    .line 118
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseFragment;->onResume()V

    .line 123
    invoke-virtual {p0}, Lcom/miui/gallery/ui/SlideShowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/SystemUiUtil;->hideSystemBars(Landroid/view/View;)V

    .line 124
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseFragment;->onStart()V

    .line 107
    iget-object v0, p0, Lcom/miui/gallery/ui/SlideShowFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/miui/gallery/ui/SlideShowFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/SlideShowFragment;->mAdapter:Lcom/miui/gallery/adapter/SlideShowAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/SlideShowAdapter;->resume()V

    .line 111
    invoke-direct {p0}, Lcom/miui/gallery/ui/SlideShowFragment;->loadNextBitmap()V

    .line 112
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseFragment;->onStop()V

    .line 129
    iget-object v0, p0, Lcom/miui/gallery/ui/SlideShowFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/miui/gallery/ui/SlideShowFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/SlideShowFragment;->mAdapter:Lcom/miui/gallery/adapter/SlideShowAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/SlideShowAdapter;->pause()V

    .line 133
    iget-object v0, p0, Lcom/miui/gallery/ui/SlideShowFragment;->mSlideView:Lcom/miui/gallery/widget/SlideShowView;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/SlideShowView;->release()V

    .line 134
    iget-object v0, p0, Lcom/miui/gallery/ui/SlideShowFragment;->mSlideHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 135
    return-void
.end method
