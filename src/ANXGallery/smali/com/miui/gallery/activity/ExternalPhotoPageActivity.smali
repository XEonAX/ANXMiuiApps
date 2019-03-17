.class public Lcom/miui/gallery/activity/ExternalPhotoPageActivity;
.super Lcom/miui/gallery/activity/BaseActivity;
.source "ExternalPhotoPageActivity.java"

# interfaces
.implements Lcom/miui/gallery/util/BrightnessProvider;


# static fields
.field private static final REQUIRED_RUNTIME_PERMISSIONS:[Ljava/lang/String;


# instance fields
.field private mBrightnessManager:Lcom/miui/gallery/view/BrightnessManager;

.field private mSupportWindowAnim:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;->REQUIRED_RUNTIME_PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/miui/gallery/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private static getImageSize(Z)Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .locals 3
    .param p0, "withBlurEffect"    # Z

    .prologue
    .line 125
    if-eqz p0, :cond_0

    .line 126
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/gallery/Config$ThumbConfig;->sMicroTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 128
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-static {}, Lcom/miui/gallery/util/ScreenUtils;->getScreenWidth()I

    move-result v1

    invoke-static {}, Lcom/miui/gallery/util/ScreenUtils;->getScreenHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    goto :goto_0
.end method

.method private isCameraPreview()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-virtual {p0}, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 80
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    const-string v2, "from_MiuiCamera"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static preloadThumbnail(Ljava/lang/String;)V
    .locals 1
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-static {}, Lcom/miui/gallery/util/ProcessingMediaHelper;->getInstance()Lcom/miui/gallery/util/ProcessingMediaHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/gallery/util/ProcessingMediaHelper;->isMediaInProcessing(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;->preloadThumbnail(Ljava/lang/String;Z)V

    .line 134
    return-void
.end method

.method public static preloadThumbnail(Ljava/lang/String;Z)V
    .locals 7
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "withBlurEffect"    # Z

    .prologue
    const/4 v6, 0x1

    .line 137
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v4, v5}, Lcom/miui/gallery/permission/core/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 139
    const-string v4, "ExternalPhotoPageActivity"

    const-string v5, "Can\'t access external storage, relate permission is ungranted"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-static {p1}, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;->getImageSize(Z)Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v1

    .line 143
    .local v1, "imageSize":Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    new-instance v4, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    sget-object v5, Lcom/miui/gallery/Config$ThumbConfig;->THUMBNAIL_DISPLAY_IMAGE_OPTIONS_DEFAULT:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 144
    invoke-virtual {v4, v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 145
    .local v0, "builder":Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    invoke-virtual {v0, v6}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->loadFromBigPhotoCache(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v4

    sget-object v5, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 146
    invoke-virtual {v4, v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v4

    .line 147
    invoke-virtual {v4, v6}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->delayCacheThumbnail(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v4

    .line 148
    invoke-virtual {v4, v6}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v4

    .line 149
    invoke-virtual {v4, v6}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->highPriority(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 150
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    .line 151
    .local v2, "options":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    if-eqz p1, :cond_1

    .line 152
    invoke-static {v2}, Lcom/miui/gallery/Config$ThumbConfig;->appendBlurOptions(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    .line 154
    :cond_1
    new-instance v3, Lcom/nostra13/universalimageloader/core/imageaware/NonViewAware;

    sget-object v4, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->FIT_INSIDE:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    invoke-direct {v3, v1, v4}, Lcom/nostra13/universalimageloader/core/imageaware/NonViewAware;-><init>(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)V

    .line 155
    .local v3, "viewAware":Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->resume()V

    .line 156
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    invoke-virtual {v4, p0, v3, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto :goto_0
.end method

.method private prepareIfFromCamera()V
    .locals 19

    .prologue
    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    .line 86
    .local v14, "intent":Landroid/content/Intent;
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v14}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-nez v6, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    invoke-virtual {v14}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    .line 90
    .local v13, "extras":Landroid/os/Bundle;
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;->isCameraPreview()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090003

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v18

    .line 94
    .local v18, "supportWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    .line 95
    .local v17, "supportHeight":I
    invoke-static {}, Lcom/miui/gallery/util/ScreenUtils;->getScreenWidth()I

    move-result v6

    move/from16 v0, v18

    if-ne v6, v0, :cond_2

    invoke-static {}, Lcom/miui/gallery/util/ScreenUtils;->getScreenHeight()I

    move-result v6

    move/from16 v0, v17

    if-ne v6, v0, :cond_2

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const v7, 0x7f110027

    invoke-virtual {v6, v7}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 97
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;->mSupportWindowAnim:Z

    .line 100
    :cond_2
    const/16 v16, 0x0

    .line 101
    .local v16, "position":I
    invoke-virtual {v14}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    .line 102
    .local v12, "data":Landroid/net/Uri;
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, "uri":Ljava/lang/String;
    const-string v6, "photo_count"

    const/4 v7, 0x1

    invoke-virtual {v14, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    const-string v6, "photo_init_position"

    const/4 v7, 0x0

    invoke-virtual {v14, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    invoke-static {v12}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 109
    .local v2, "id":J
    invoke-static {v12}, Lcom/miui/gallery/util/MediaStoreUtils;->getMineTypeFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 110
    .local v8, "mimeType":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/util/ProcessingMediaHelper;->getInstance()Lcom/miui/gallery/util/ProcessingMediaHelper;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/miui/gallery/util/ProcessingMediaHelper;->isMediaInProcessing(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;->getImageSize(Z)Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v5

    .line 111
    .local v5, "imageSize":Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    new-instance v1, Lcom/miui/gallery/model/ImageLoadParams;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v9, -0x1

    invoke-direct/range {v1 .. v10}, Lcom/miui/gallery/model/ImageLoadParams;-><init>(JLjava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;ILjava/lang/String;J)V

    .line 112
    .local v1, "params":Lcom/miui/gallery/model/ImageLoadParams;
    const-string v6, "photo_transition_data"

    invoke-virtual {v14, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 115
    invoke-static {v4}, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;->preloadThumbnail(Ljava/lang/String;)V

    .line 117
    const-string v6, "camera-brightness-manual"

    const/4 v7, -0x1

    invoke-virtual {v13, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    const-string v6, "camera-brightness"

    const/4 v7, -0x1

    invoke-virtual {v13, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 118
    .local v15, "manualBrightness":I
    :goto_1
    const-string v6, "camera-brightness-auto"

    const/high16 v7, -0x40800000    # -1.0f

    invoke-virtual {v13, v6, v7}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v11

    .line 120
    .local v11, "autoBrightness":F
    new-instance v6, Lcom/miui/gallery/view/BrightnessManager;

    const/high16 v7, 0x3f800000    # 1.0f

    int-to-float v9, v15

    mul-float/2addr v7, v9

    const/high16 v9, 0x437f0000    # 255.0f

    div-float/2addr v7, v9

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v7, v11}, Lcom/miui/gallery/view/BrightnessManager;-><init>(Landroid/app/Activity;FF)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;->mBrightnessManager:Lcom/miui/gallery/view/BrightnessManager;

    goto/16 :goto_0

    .line 117
    .end local v11    # "autoBrightness":F
    .end local v15    # "manualBrightness":I
    :cond_3
    const-string v6, "camera-brightness-manual"

    const/4 v7, -0x1

    invoke-virtual {v13, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    goto :goto_1
.end method

.method private startMainActivity()V
    .locals 2

    .prologue
    .line 212
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 215
    invoke-virtual {p0, v0}, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;->startActivity(Landroid/content/Intent;)V

    .line 216
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;->finishAndRemoveTask()V

    .line 166
    :goto_0
    iget-boolean v0, p0, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;->mSupportWindowAnim:Z

    if-eqz v0, :cond_0

    .line 167
    const v0, 0x7f05000b

    const v1, 0x7f05000c

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;->overridePendingTransition(II)V

    .line 169
    :cond_0
    return-void

    .line 164
    :cond_1
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->finish()V

    goto :goto_0
.end method

.method public getAutoBrightness()F
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;->mBrightnessManager:Lcom/miui/gallery/view/BrightnessManager;

    if-nez v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;->mBrightnessManager:Lcom/miui/gallery/view/BrightnessManager;

    invoke-virtual {v0}, Lcom/miui/gallery/view/BrightnessManager;->getAutoBrightness()F

    move-result v0

    goto :goto_0
.end method

.method protected getFragmentContainerId()I
    .locals 1

    .prologue
    .line 225
    const v0, 0x1020002

    return v0
.end method

.method public getManualBrightness()F
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;->mBrightnessManager:Lcom/miui/gallery/view/BrightnessManager;

    if-nez v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;->mBrightnessManager:Lcom/miui/gallery/view/BrightnessManager;

    invoke-virtual {v0}, Lcom/miui/gallery/view/BrightnessManager;->getManualBrightness()F

    move-result v0

    goto :goto_0
.end method

.method public getRuntimePermissions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    sget-object v0, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;->REQUIRED_RUNTIME_PERMISSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method protected hasCustomContentView()Z
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityReenter(ILandroid/content/Intent;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "PhotoPageFragment"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/PhotoPageFragment;

    .line 174
    .local v0, "fragment":Lcom/miui/gallery/ui/PhotoPageFragment;
    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageFragment;->onActivityReenter(ILandroid/content/Intent;)V

    .line 177
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 181
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 182
    invoke-virtual {p0}, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 183
    .local v1, "manager":Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "PhotoPageFragment"

    .line 185
    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/PhotoPageFragment;

    .line 186
    .local v0, "fragment":Lcom/miui/gallery/ui/PhotoPageFragment;
    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/gallery/ui/PhotoPageFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 191
    .end local v0    # "fragment":Lcom/miui/gallery/ui/PhotoPageFragment;
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 257
    .local v1, "manager":Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "PhotoPageFragment"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/PhotoPageFragment;

    .line 259
    .local v0, "fragment":Lcom/miui/gallery/ui/PhotoPageFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->onBackPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    .end local v0    # "fragment":Lcom/miui/gallery/ui/PhotoPageFragment;
    :goto_0
    return-void

    .line 263
    :cond_0
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;->prepareIfFromCamera()V

    .line 69
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-static {p0}, Lcom/miui/gallery/util/IntentUtil;->getCallingPackage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "callingPackage":Ljava/lang/String;
    const-string v1, "photo"

    const-string v2, "external_view_photo"

    .line 75
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "Unknown"

    .line 73
    .end local v0    # "callingPackage":Ljava/lang/String;
    :cond_0
    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 230
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->onPause()V

    .line 231
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->pause()V

    .line 232
    iget-object v0, p0, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;->mBrightnessManager:Lcom/miui/gallery/view/BrightnessManager;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;->mBrightnessManager:Lcom/miui/gallery/view/BrightnessManager;

    invoke-virtual {v0}, Lcom/miui/gallery/view/BrightnessManager;->onPause()V

    .line 235
    :cond_0
    return-void
.end method

.method public onPermissionsChecked([Ljava/lang/String;[I)V
    .locals 7
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResults"    # [I

    .prologue
    const/4 v6, 0x0

    .line 195
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/activity/BaseActivity;->onPermissionsChecked([Ljava/lang/String;[I)V

    .line 197
    invoke-virtual {p0}, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 198
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 199
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_2

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;->finish()V

    .line 201
    invoke-direct {p0}, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;->startMainActivity()V

    .line 209
    :cond_1
    :goto_0
    return-void

    .line 205
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "PhotoPageFragment"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/PhotoPageFragment;

    .line 206
    .local v0, "fragment":Lcom/miui/gallery/ui/PhotoPageFragment;
    if-nez v0, :cond_1

    .line 207
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v2, v3, v4, v6}, Lcom/miui/gallery/ui/PhotoPageFragment;->newInstance(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;I)Lcom/miui/gallery/ui/PhotoPageFragment;

    move-result-object v3

    const-string v4, "PhotoPageFragment"

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v6, v5}, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->onResume()V

    .line 240
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->resume()V

    .line 241
    iget-object v0, p0, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;->mBrightnessManager:Lcom/miui/gallery/view/BrightnessManager;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;->mBrightnessManager:Lcom/miui/gallery/view/BrightnessManager;

    invoke-virtual {v0}, Lcom/miui/gallery/view/BrightnessManager;->onResume()V

    .line 244
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 248
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onWindowFocusChanged(Z)V

    .line 249
    iget-object v0, p0, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;->mBrightnessManager:Lcom/miui/gallery/view/BrightnessManager;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;->mBrightnessManager:Lcom/miui/gallery/view/BrightnessManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/view/BrightnessManager;->onWindowFocusChanged(Z)V

    .line 252
    :cond_0
    return-void
.end method
