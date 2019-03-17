.class public Lcom/miui/gallery/editor/photo/app/CropperActivity;
.super Lcom/miui/gallery/activity/BaseActivity;
.source "CropperActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment;,
        Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportLoader;,
        Lcom/miui/gallery/editor/photo/app/CropperActivity$PrepareLoader;,
        Lcom/miui/gallery/editor/photo/app/CropperActivity$DecodeResult;
    }
.end annotation


# instance fields
.field private mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/miui/gallery/editor/photo/app/CropperActivity$DecodeResult;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelButton:Landroid/view/View;

.field private mCropView:Lcom/edmodo/cropper/CropImageView;

.field private mData:Landroid/net/Uri;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOutput:Landroid/net/Uri;

.field private mOutputX:F

.field private mOutputY:F

.field private mReturnData:Z

.field private mSaveButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/miui/gallery/activity/BaseActivity;-><init>()V

    .line 113
    new-instance v0, Lcom/miui/gallery/editor/photo/app/CropperActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/CropperActivity$1;-><init>(Lcom/miui/gallery/editor/photo/app/CropperActivity;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 125
    new-instance v0, Lcom/miui/gallery/editor/photo/app/CropperActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/CropperActivity$2;-><init>(Lcom/miui/gallery/editor/photo/app/CropperActivity;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 391
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/editor/photo/app/CropperActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/CropperActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity;->mCancelButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/app/CropperActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/CropperActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity;->mSaveButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/app/CropperActivity;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/CropperActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity;->mData:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/editor/photo/app/CropperActivity;)Lcom/edmodo/cropper/CropImageView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/CropperActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity;->mCropView:Lcom/edmodo/cropper/CropImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/editor/photo/app/CropperActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/CropperActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/CropperActivity;->createOutput()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/editor/photo/app/CropperActivity;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/CropperActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity;->mOutput:Landroid/net/Uri;

    return-object v0
.end method

.method private createOutput()Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 103
    .local v8, "start":J
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity;->mCropView:Lcom/edmodo/cropper/CropImageView;

    invoke-virtual {v2}, Lcom/edmodo/cropper/CropImageView;->getCroppedImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 104
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget v2, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity;->mOutputX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity;->mOutputY:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 105
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 106
    .local v5, "matrix":Landroid/graphics/Matrix;
    iget v2, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity;->mOutputX:F

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity;->mOutputY:F

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 107
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 109
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    :cond_0
    const-string v1, "CropperActivity"

    const-string v2, "create output costs %dms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 59
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v4, 0x7f040061

    invoke-virtual {p0, v4}, Lcom/miui/gallery/editor/photo/app/CropperActivity;->setContentView(I)V

    .line 61
    const v4, 0x7f120146

    invoke-virtual {p0, v4}, Lcom/miui/gallery/editor/photo/app/CropperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity;->mSaveButton:Landroid/view/View;

    .line 62
    const v4, 0x7f120145

    invoke-virtual {p0, v4}, Lcom/miui/gallery/editor/photo/app/CropperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity;->mCancelButton:Landroid/view/View;

    .line 63
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity;->mSaveButton:Landroid/view/View;

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity;->mCancelButton:Landroid/view/View;

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v4, 0x7f120144

    invoke-virtual {p0, v4}, Lcom/miui/gallery/editor/photo/app/CropperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/edmodo/cropper/CropImageView;

    iput-object v4, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity;->mCropView:Lcom/edmodo/cropper/CropImageView;

    .line 67
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity;->mSaveButton:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/CropperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 70
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity;->mData:Landroid/net/Uri;

    .line 71
    const-string v4, "output"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity;->mOutput:Landroid/net/Uri;

    .line 72
    const-string v4, "return-data"

    invoke-virtual {v3, v4, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity;->mReturnData:Z

    .line 73
    const-string v4, "outputX"

    invoke-virtual {v3, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity;->mOutputX:F

    .line 74
    const-string v4, "outputY"

    invoke-virtual {v3, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity;->mOutputY:F

    .line 76
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity;->mData:Landroid/net/Uri;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity;->mOutput:Landroid/net/Uri;

    if-nez v4, :cond_1

    .line 77
    :cond_0
    const-string v4, "CropperActivity"

    const-string/jumbo v5, "src or des missed, src: %s, des: %s"

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity;->mData:Landroid/net/Uri;

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity;->mOutput:Landroid/net/Uri;

    invoke-static {v4, v5, v6, v7}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/CropperActivity;->finish()V

    .line 93
    :goto_0
    return-void

    .line 82
    :cond_1
    const-string v5, "CropperActivity"

    const-string v6, "cropper\'s input: %s, output: %s"

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity;->mData:Landroid/net/Uri;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity;->mOutput:Landroid/net/Uri;

    if-nez v4, :cond_3

    const-string v4, "bytes"

    :goto_1
    invoke-static {v5, v6, v7, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    const-string v4, "aspectX"

    invoke-virtual {v3, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 85
    .local v0, "aspectX":I
    const-string v4, "aspectY"

    invoke-virtual {v3, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 86
    .local v1, "aspectY":I
    if-lez v0, :cond_2

    if-lez v1, :cond_2

    .line 87
    const-string v4, "fixed_aspect_ratio"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 88
    .local v2, "fixedAspectRatio":Z
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity;->mCropView:Lcom/edmodo/cropper/CropImageView;

    invoke-virtual {v4, v2}, Lcom/edmodo/cropper/CropImageView;->setFixedAspectRatio(Z)V

    .line 89
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity;->mCropView:Lcom/edmodo/cropper/CropImageView;

    invoke-virtual {v4, v0, v1}, Lcom/edmodo/cropper/CropImageView;->setAspectRatio(II)V

    .line 92
    .end local v2    # "fixedAspectRatio":Z
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/CropperActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v4, v9, v5, v6}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 82
    .end local v0    # "aspectX":I
    .end local v1    # "aspectY":I
    :cond_3
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity;->mOutput:Landroid/net/Uri;

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    return-void
.end method
