.class public Lcom/miui/gallery/collage/CollageActivity;
.super Landroid/app/Activity;
.source "CollageActivity.java"

# interfaces
.implements Lcom/miui/gallery/collage/core/ViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/collage/CollageActivity$ReplaceImageListener;
    }
.end annotation


# instance fields
.field private mBitmapLoaderListener:Lcom/miui/gallery/collage/BitmapManager$BitmapLoaderListener;

.field private mBitmapManager:Lcom/miui/gallery/collage/BitmapManager;

.field private mCancel:Landroid/widget/TextView;

.field private mCancelListener:Landroid/view/View$OnClickListener;

.field private mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mCurrentImageSize:I

.field private mCurrentPresenter:Lcom/miui/gallery/collage/core/CollagePresenter;

.field private mLoadingProgressView:Landroid/view/View;

.field private mPresenters:[Lcom/miui/gallery/collage/core/CollagePresenter;

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mRectTemp:Landroid/graphics/Rect;

.field private mRenderContainer:Landroid/view/View;

.field private mReplaceBitmapFrom:Landroid/graphics/Bitmap;

.field private mRootView:Landroid/view/ViewGroup;

.field private mSave:Landroid/widget/TextView;

.field private mSaveListener:Landroid/view/View$OnClickListener;

.field private mSaveProgressDialog:Lmiui/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mCurrentImageSize:I

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mRectTemp:Landroid/graphics/Rect;

    .line 133
    new-instance v0, Lcom/miui/gallery/collage/CollageActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/collage/CollageActivity$1;-><init>(Lcom/miui/gallery/collage/CollageActivity;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 242
    new-instance v0, Lcom/miui/gallery/collage/CollageActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/collage/CollageActivity$2;-><init>(Lcom/miui/gallery/collage/CollageActivity;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mCancelListener:Landroid/view/View$OnClickListener;

    .line 249
    new-instance v0, Lcom/miui/gallery/collage/CollageActivity$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/collage/CollageActivity$3;-><init>(Lcom/miui/gallery/collage/CollageActivity;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mSaveListener:Landroid/view/View$OnClickListener;

    .line 363
    new-instance v0, Lcom/miui/gallery/collage/CollageActivity$4;

    invoke-direct {v0, p0}, Lcom/miui/gallery/collage/CollageActivity$4;-><init>(Lcom/miui/gallery/collage/CollageActivity;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mBitmapLoaderListener:Lcom/miui/gallery/collage/BitmapManager$BitmapLoaderListener;

    .line 427
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/collage/CollageActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/CollageActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/CollageActivity;->onSelectRadio(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/collage/CollageActivity;)Lcom/miui/gallery/collage/core/CollagePresenter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/CollageActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mCurrentPresenter:Lcom/miui/gallery/collage/core/CollagePresenter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/collage/CollageActivity;)Lcom/miui/gallery/collage/BitmapManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/CollageActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mBitmapManager:Lcom/miui/gallery/collage/BitmapManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/collage/CollageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/CollageActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/miui/gallery/collage/CollageActivity;->onBitmapDecodeFinishAfterChoose()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/collage/CollageActivity;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/CollageActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/collage/CollageActivity;->notifyBitmapReplace(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private decodeBitmapAsync([Landroid/net/Uri;)V
    .locals 1
    .param p1, "uris"    # [Landroid/net/Uri;

    .prologue
    .line 353
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mBitmapManager:Lcom/miui/gallery/collage/BitmapManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/collage/BitmapManager;->loadBitmapAsync([Landroid/net/Uri;)V

    .line 354
    return-void
.end method

.method private dismissLoading()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mLoadingProgressView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity;->mLoadingProgressView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mLoadingProgressView:Landroid/view/View;

    .line 203
    :cond_0
    return-void
.end method

.method private enableButton()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mSave:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 377
    return-void
.end method

.method private findViews()V
    .locals 1

    .prologue
    .line 234
    const v0, 0x7f12012f

    invoke-virtual {p0, v0}, Lcom/miui/gallery/collage/CollageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 235
    const v0, 0x7f120131

    invoke-virtual {p0, v0}, Lcom/miui/gallery/collage/CollageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mSave:Landroid/widget/TextView;

    .line 236
    const v0, 0x7f120130

    invoke-virtual {p0, v0}, Lcom/miui/gallery/collage/CollageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mCancel:Landroid/widget/TextView;

    .line 237
    const v0, 0x7f120133

    invoke-virtual {p0, v0}, Lcom/miui/gallery/collage/CollageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mRenderContainer:Landroid/view/View;

    .line 238
    const v0, 0x7f120135

    invoke-virtual {p0, v0}, Lcom/miui/gallery/collage/CollageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mLoadingProgressView:Landroid/view/View;

    .line 239
    const v0, 0x7f12012e

    invoke-virtual {p0, v0}, Lcom/miui/gallery/collage/CollageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mRootView:Landroid/view/ViewGroup;

    .line 240
    return-void
.end method

.method private gotoPhotoPage(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 335
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 336
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 337
    invoke-virtual {p0, v0}, Lcom/miui/gallery/collage/CollageActivity;->startActivity(Landroid/content/Intent;)V

    .line 338
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 94
    new-instance v0, Lcom/miui/gallery/collage/BitmapManager;

    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity;->mBitmapLoaderListener:Lcom/miui/gallery/collage/BitmapManager$BitmapLoaderListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/collage/BitmapManager;-><init>(Landroid/content/Context;Lcom/miui/gallery/collage/BitmapManager$BitmapLoaderListener;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mBitmapManager:Lcom/miui/gallery/collage/BitmapManager;

    .line 95
    return-void
.end method

.method private initPresenter()V
    .locals 5

    .prologue
    .line 98
    invoke-static {}, Lcom/miui/gallery/collage/core/Effect;->values()[Lcom/miui/gallery/collage/core/Effect;

    move-result-object v4

    array-length v2, v4

    .line 99
    .local v2, "length":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v0, "collagePresenters":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/collage/core/CollagePresenter;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 101
    invoke-static {}, Lcom/miui/gallery/collage/core/Effect;->values()[Lcom/miui/gallery/collage/core/Effect;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/miui/gallery/collage/core/Effect;->generatePresenter()Lcom/miui/gallery/collage/core/CollagePresenter;

    move-result-object v3

    .line 102
    .local v3, "presenter":Lcom/miui/gallery/collage/core/CollagePresenter;
    iget v4, p0, Lcom/miui/gallery/collage/CollageActivity;->mCurrentImageSize:I

    invoke-virtual {v3, v4}, Lcom/miui/gallery/collage/core/CollagePresenter;->supportImageSize(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 103
    iget v4, p0, Lcom/miui/gallery/collage/CollageActivity;->mCurrentImageSize:I

    invoke-virtual {v3, v4}, Lcom/miui/gallery/collage/core/CollagePresenter;->setImageSize(I)V

    .line 104
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    .end local v3    # "presenter":Lcom/miui/gallery/collage/core/CollagePresenter;
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/miui/gallery/collage/core/CollagePresenter;

    iput-object v4, p0, Lcom/miui/gallery/collage/CollageActivity;->mPresenters:[Lcom/miui/gallery/collage/core/CollagePresenter;

    .line 108
    iget-object v4, p0, Lcom/miui/gallery/collage/CollageActivity;->mPresenters:[Lcom/miui/gallery/collage/core/CollagePresenter;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 109
    return-void
.end method

.method private initView()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 112
    iget-object v4, p0, Lcom/miui/gallery/collage/CollageActivity;->mPresenters:[Lcom/miui/gallery/collage/core/CollagePresenter;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v0, v4, v2

    .line 113
    .local v0, "presenter":Lcom/miui/gallery/collage/core/CollagePresenter;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f040058

    iget-object v8, p0, Lcom/miui/gallery/collage/CollageActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v6, v7, v8, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 114
    .local v1, "radioButton":Landroid/widget/RadioButton;
    iget-object v6, p0, Lcom/miui/gallery/collage/CollageActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v6, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 115
    invoke-virtual {v0}, Lcom/miui/gallery/collage/core/CollagePresenter;->getTitle()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setText(I)V

    .line 116
    invoke-virtual {v1}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v6, p0, Lcom/miui/gallery/collage/CollageActivity;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    .end local v0    # "presenter":Lcom/miui/gallery/collage/core/CollagePresenter;
    .end local v1    # "radioButton":Landroid/widget/RadioButton;
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/collage/CollageActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    iget-object v4, p0, Lcom/miui/gallery/collage/CollageActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v3}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 121
    iget-object v2, p0, Lcom/miui/gallery/collage/CollageActivity;->mCancel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/gallery/collage/CollageActivity;->mCancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v2, p0, Lcom/miui/gallery/collage/CollageActivity;->mSave:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/gallery/collage/CollageActivity;->mSaveListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    return-void
.end method

.method private notifyBitmapReplace(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "from"    # Landroid/graphics/Bitmap;
    .param p2, "to"    # Landroid/graphics/Bitmap;

    .prologue
    .line 206
    iget-object v2, p0, Lcom/miui/gallery/collage/CollageActivity;->mPresenters:[Lcom/miui/gallery/collage/core/CollagePresenter;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 207
    .local v0, "presenter":Lcom/miui/gallery/collage/core/CollagePresenter;
    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/collage/core/CollagePresenter;->notifyBitmapReplace(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    .end local v0    # "presenter":Lcom/miui/gallery/collage/core/CollagePresenter;
    :cond_0
    return-void
.end method

.method private notifyBitmapsReceive()V
    .locals 4

    .prologue
    .line 188
    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity;->mBitmapManager:Lcom/miui/gallery/collage/BitmapManager;

    invoke-virtual {v1}, Lcom/miui/gallery/collage/BitmapManager;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/collage/CollageActivity;->dismissLoading()V

    .line 192
    iget-object v2, p0, Lcom/miui/gallery/collage/CollageActivity;->mPresenters:[Lcom/miui/gallery/collage/core/CollagePresenter;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 193
    .local v0, "presenter":Lcom/miui/gallery/collage/core/CollagePresenter;
    invoke-virtual {v0}, Lcom/miui/gallery/collage/core/CollagePresenter;->notifyReceiveBitmaps()V

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 195
    .end local v0    # "presenter":Lcom/miui/gallery/collage/core/CollagePresenter;
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/collage/CollageActivity;->enableButton()V

    goto :goto_0
.end method

.method private onBitmapDecodeFinishAfterChoose()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mBitmapManager:Lcom/miui/gallery/collage/BitmapManager;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/BitmapManager;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mBitmapManager:Lcom/miui/gallery/collage/BitmapManager;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/BitmapManager;->size()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mCurrentImageSize:I

    .line 359
    invoke-direct {p0}, Lcom/miui/gallery/collage/CollageActivity;->notifyBitmapsReceive()V

    .line 361
    :cond_0
    return-void
.end method

.method private onSelectPresenter(I)V
    .locals 8
    .param p1, "index"    # I

    .prologue
    .line 148
    iget-object v7, p0, Lcom/miui/gallery/collage/CollageActivity;->mPresenters:[Lcom/miui/gallery/collage/core/CollagePresenter;

    aget-object v4, v7, p1

    .line 149
    .local v4, "presenter":Lcom/miui/gallery/collage/core/CollagePresenter;
    invoke-virtual {v4, p0}, Lcom/miui/gallery/collage/core/CollagePresenter;->attach(Lcom/miui/gallery/collage/core/ViewInterface;)V

    .line 151
    invoke-virtual {p0}, Lcom/miui/gallery/collage/CollageActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 152
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 153
    .local v1, "fragmentTransaction":Landroid/app/FragmentTransaction;
    iget-object v7, p0, Lcom/miui/gallery/collage/CollageActivity;->mCurrentPresenter:Lcom/miui/gallery/collage/core/CollagePresenter;

    if-eqz v7, :cond_0

    .line 154
    iget-object v7, p0, Lcom/miui/gallery/collage/CollageActivity;->mCurrentPresenter:Lcom/miui/gallery/collage/core/CollagePresenter;

    invoke-virtual {v7}, Lcom/miui/gallery/collage/core/CollagePresenter;->getMenuFragmentTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 155
    iget-object v7, p0, Lcom/miui/gallery/collage/CollageActivity;->mCurrentPresenter:Lcom/miui/gallery/collage/core/CollagePresenter;

    invoke-virtual {v7}, Lcom/miui/gallery/collage/core/CollagePresenter;->getRenderFragmentTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 158
    :cond_0
    iput-object v4, p0, Lcom/miui/gallery/collage/CollageActivity;->mCurrentPresenter:Lcom/miui/gallery/collage/core/CollagePresenter;

    .line 160
    invoke-virtual {v4}, Lcom/miui/gallery/collage/core/CollagePresenter;->getMenuFragmentTag()Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "menuTag":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/miui/gallery/collage/core/CollagePresenter;->getRenderFragmentTag()Ljava/lang/String;

    move-result-object v6

    .line 163
    .local v6, "renderTag":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 164
    .local v2, "menuFragment":Landroid/app/Fragment;
    invoke-virtual {v0, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    .line 166
    .local v5, "renderFragment":Landroid/app/Fragment;
    if-nez v5, :cond_1

    .line 167
    invoke-virtual {v4}, Lcom/miui/gallery/collage/core/CollagePresenter;->getRenderFragment()Landroid/app/Fragment;

    move-result-object v5

    .line 168
    const v7, 0x7f120133

    .line 169
    invoke-virtual {v1, v7, v5, v6}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 175
    :goto_0
    if-nez v2, :cond_2

    .line 176
    invoke-virtual {v4}, Lcom/miui/gallery/collage/core/CollagePresenter;->getMenuFragment()Lcom/miui/gallery/collage/app/common/CollageMenuFragment;

    move-result-object v2

    .line 177
    const v7, 0x7f120132

    .line 178
    invoke-virtual {v1, v7, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 183
    :goto_1
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 184
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 185
    return-void

    .line 172
    :cond_1
    invoke-virtual {v1, v5}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 181
    :cond_2
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_1
.end method

.method private onSelectRadio(Landroid/view/View;)V
    .locals 2
    .param p1, "radioButton"    # Landroid/view/View;

    .prologue
    .line 143
    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, p1}, Landroid/widget/RadioGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 144
    .local v0, "index":I
    invoke-direct {p0, v0}, Lcom/miui/gallery/collage/CollageActivity;->onSelectPresenter(I)V

    .line 145
    return-void
.end method

.method private receiveImages(Landroid/content/ClipData;)V
    .locals 5
    .param p1, "clipData"    # Landroid/content/ClipData;

    .prologue
    .line 341
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 342
    .local v0, "count":I
    const/4 v4, 0x6

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 343
    new-array v3, v0, [Landroid/net/Uri;

    .line 344
    .local v3, "uris":[Landroid/net/Uri;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 345
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 346
    .local v2, "uri":Landroid/net/Uri;
    invoke-direct {p0, v2}, Lcom/miui/gallery/collage/CollageActivity;->resolveUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v3, v1

    .line 344
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 348
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    iput v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mCurrentImageSize:I

    .line 349
    invoke-direct {p0, v3}, Lcom/miui/gallery/collage/CollageActivity;->decodeBitmapAsync([Landroid/net/Uri;)V

    .line 350
    return-void
.end method

.method private resolveIntent()V
    .locals 3

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/miui/gallery/collage/CollageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 220
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 221
    const-string v1, "collage"

    const-string v2, "collage_enter"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/gallery/collage/CollageActivity;->receiveImages(Landroid/content/ClipData;)V

    .line 224
    :cond_0
    return-void
.end method

.method private resolveUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 227
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.gallery.open"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 230
    .end local p1    # "uri":Landroid/net/Uri;
    :cond_0
    return-object p1
.end method

.method private showProgressDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 326
    new-instance v0, Lmiui/app/ProgressDialog;

    invoke-direct {v0, p0}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mSaveProgressDialog:Lmiui/app/ProgressDialog;

    .line 327
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mSaveProgressDialog:Lmiui/app/ProgressDialog;

    const v1, 0x7f0c0373

    invoke-virtual {p0, v1}, Lcom/miui/gallery/collage/CollageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mSaveProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0, v2}, Lmiui/app/ProgressDialog;->setCancelable(Z)V

    .line 329
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mSaveProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0, v2}, Lmiui/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 330
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mSaveProgressDialog:Lmiui/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 331
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mSaveProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->show()V

    .line 332
    return-void
.end method

.method private startPicker(II)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "max"    # I

    .prologue
    .line 259
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 260
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const-string v1, "pick-upper-bound"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 262
    invoke-virtual {p0, v0, p1}, Lcom/miui/gallery/collage/CollageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 263
    return-void
.end method

.method public static startPicker(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 392
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 393
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    const-string v1, "pick-upper-bound"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 395
    const-string v1, "pick_intent"

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/miui/gallery/collage/CollageActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 396
    const-string v1, "pick_close_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 397
    const-string v1, "com.miui.gallery"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 399
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 381
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mRenderContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mRenderContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity;->mRectTemp:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 384
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mRectTemp:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mCurrentPresenter:Lcom/miui/gallery/collage/core/CollagePresenter;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/core/CollagePresenter;->dismissControlWindow()V

    .line 388
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getBitmaps()[Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mBitmapManager:Lcom/miui/gallery/collage/BitmapManager;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/BitmapManager;->data()[Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 322
    return-object p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 267
    const-string v1, "CollageActivity"

    const-string v2, "onActivityResult"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    packed-switch p1, :pswitch_data_0

    .line 289
    :goto_0
    return-void

    .line 270
    :pswitch_0
    packed-switch p2, :pswitch_data_1

    .line 276
    invoke-virtual {p0}, Lcom/miui/gallery/collage/CollageActivity;->finish()V

    goto :goto_0

    .line 272
    :pswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/gallery/collage/CollageActivity;->receiveImages(Landroid/content/ClipData;)V

    goto :goto_0

    .line 281
    :pswitch_2
    packed-switch p2, :pswitch_data_2

    goto :goto_0

    .line 283
    :pswitch_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/gallery/collage/CollageActivity;->resolveUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 284
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity;->mBitmapManager:Lcom/miui/gallery/collage/BitmapManager;

    iget-object v2, p0, Lcom/miui/gallery/collage/CollageActivity;->mReplaceBitmapFrom:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v0}, Lcom/miui/gallery/collage/BitmapManager;->replaceBitmap(Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    goto :goto_0

    .line 268
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 270
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_1
    .end packed-switch

    .line 281
    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_3
    .end packed-switch
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/app/Activity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 128
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mCurrentPresenter:Lcom/miui/gallery/collage/core/CollagePresenter;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mCurrentPresenter:Lcom/miui/gallery/collage/core/CollagePresenter;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/collage/core/CollagePresenter;->onAttachFragment(Landroid/app/Fragment;)V

    .line 131
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 213
    invoke-static {p0}, Lcom/android/internal/WindowCompat;->isNotch(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/miui/gallery/collage/CollageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/SystemUiUtil;->extendToStatusBar(Landroid/view/View;)V

    .line 216
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 81
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/miui/gallery/collage/CollageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/WindowCompat;->setCutoutModeShortEdges(Landroid/view/Window;)V

    .line 83
    invoke-virtual {p0}, Lcom/miui/gallery/collage/CollageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 84
    invoke-virtual {p0}, Lcom/miui/gallery/collage/CollageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/SystemUiUtil;->setDrawSystemBarBackground(Landroid/view/Window;)V

    .line 85
    const v0, 0x7f040054

    invoke-virtual {p0, v0}, Lcom/miui/gallery/collage/CollageActivity;->setContentView(I)V

    .line 86
    invoke-direct {p0}, Lcom/miui/gallery/collage/CollageActivity;->init()V

    .line 87
    invoke-direct {p0}, Lcom/miui/gallery/collage/CollageActivity;->findViews()V

    .line 88
    invoke-direct {p0}, Lcom/miui/gallery/collage/CollageActivity;->resolveIntent()V

    .line 89
    invoke-direct {p0}, Lcom/miui/gallery/collage/CollageActivity;->initPresenter()V

    .line 90
    invoke-direct {p0}, Lcom/miui/gallery/collage/CollageActivity;->initView()V

    .line 91
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 415
    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity;->mSaveProgressDialog:Lmiui/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 416
    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity;->mSaveProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v1}, Lmiui/app/ProgressDialog;->dismiss()V

    .line 418
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/collage/CollageActivity;->mPresenters:[Lcom/miui/gallery/collage/core/CollagePresenter;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 419
    .local v0, "presenter":Lcom/miui/gallery/collage/core/CollagePresenter;
    invoke-virtual {v0}, Lcom/miui/gallery/collage/core/CollagePresenter;->detach()V

    .line 418
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 421
    .end local v0    # "presenter":Lcom/miui/gallery/collage/core/CollagePresenter;
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity;->mBitmapManager:Lcom/miui/gallery/collage/BitmapManager;

    if-eqz v1, :cond_2

    .line 422
    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity;->mBitmapManager:Lcom/miui/gallery/collage/BitmapManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/gallery/collage/BitmapManager;->setBitmapLoaderListener(Lcom/miui/gallery/collage/BitmapManager$BitmapLoaderListener;)V

    .line 424
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 425
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 409
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 410
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->pause()V

    .line 411
    return-void
.end method

.method public onReplaceBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "from"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x1

    .line 307
    if-nez p1, :cond_0

    .line 313
    :goto_0
    return-void

    .line 310
    :cond_0
    const-string v0, "CollageActivity"

    const-string v1, "replace bitmap : %s"

    invoke-static {v0, v1, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 311
    iput-object p1, p0, Lcom/miui/gallery/collage/CollageActivity;->mReplaceBitmapFrom:Landroid/graphics/Bitmap;

    .line 312
    invoke-direct {p0, v2, v2}, Lcom/miui/gallery/collage/CollageActivity;->startPicker(II)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 403
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 404
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->resume()V

    .line 405
    return-void
.end method

.method public onSaveFinish(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "outPath"    # Ljava/lang/String;
    .param p2, "success"    # Z

    .prologue
    .line 298
    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/CollageActivity;->gotoPhotoPage(Ljava/lang/String;)V

    .line 301
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/collage/CollageActivity;->setResult(I)V

    .line 302
    invoke-virtual {p0}, Lcom/miui/gallery/collage/CollageActivity;->finish()V

    .line 303
    return-void
.end method

.method public onSaving()V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/miui/gallery/collage/CollageActivity;->showProgressDialog()V

    .line 294
    return-void
.end method
