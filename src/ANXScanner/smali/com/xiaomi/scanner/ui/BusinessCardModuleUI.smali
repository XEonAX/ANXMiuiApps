.class public Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;
.super Ljava/lang/Object;
.source "BusinessCardModuleUI.java"

# interfaces
.implements Lcom/xiaomi/scanner/ui/BusinessCardResultView$FinishClick;


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private cardPreview:Lcom/xiaomi/scanner/ui/PreviewWithRectView;

.field private mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mFullRoot:Landroid/view/ViewGroup;

.field private resultView:Lcom/xiaomi/scanner/ui/BusinessCardResultView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "BusinessCardModuleUI"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/scanner/app/ScanActivity;)V
    .locals 8
    .param p1, "mActivity"    # Lcom/xiaomi/scanner/app/ScanActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    .line 41
    invoke-virtual {p1}, Lcom/xiaomi/scanner/app/ScanActivity;->getModuleLayoutRoot()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 42
    .local v2, "mRoot":Landroid/view/ViewGroup;
    const v5, 0x7f0d008c

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 43
    .local v1, "mPreviewRoot":Landroid/view/ViewGroup;
    const v5, 0x7f0d0090

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->mFullRoot:Landroid/view/ViewGroup;

    .line 45
    invoke-virtual {p1}, Lcom/xiaomi/scanner/app/ScanActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030045

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 46
    const v5, 0x7f0d0109

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/scanner/ui/PreviewWithRectView;

    iput-object v5, p0, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->cardPreview:Lcom/xiaomi/scanner/ui/PreviewWithRectView;

    .line 48
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 49
    .local v3, "rect":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->cardPreview:Lcom/xiaomi/scanner/ui/PreviewWithRectView;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/app/ScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0010

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v6, v7}, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->setDataAndDraw(Landroid/graphics/Rect;IZ)V

    .line 50
    const v5, 0x7f0d010a

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 51
    .local v4, "textView":Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 52
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 53
    return-void
.end method

.method private changeTo(Z)V
    .locals 4
    .param p1, "preview"    # Z

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 118
    if-eqz p1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->mFullRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->resultView:Lcom/xiaomi/scanner/ui/BusinessCardResultView;

    if-eqz v0, :cond_1

    .line 122
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->resultView:Lcom/xiaomi/scanner/ui/BusinessCardResultView;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->setVisibility(I)V

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->cardPreview:Lcom/xiaomi/scanner/ui/PreviewWithRectView;

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->cardPreview:Lcom/xiaomi/scanner/ui/PreviewWithRectView;

    if-eqz p1, :cond_5

    :goto_1
    invoke-virtual {v0, v2}, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->setVisibility(I)V

    .line 127
    :cond_2
    if-eqz p1, :cond_3

    .line 128
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getCaptureModule()Lcom/xiaomi/scanner/camera/CaptureModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->startPreview()V

    .line 129
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->onDestroy()V

    .line 131
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 122
    goto :goto_0

    :cond_5
    move v2, v1

    .line 125
    goto :goto_1
.end method

.method private getPreviewRect()Landroid/graphics/Rect;
    .locals 7

    .prologue
    .line 56
    iget-object v4, p0, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v4}, Lcom/xiaomi/scanner/app/ScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 57
    .local v2, "marginTop":I
    iget-object v4, p0, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v4}, Lcom/xiaomi/scanner/app/ScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08009e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 58
    .local v1, "marginLeft":I
    sget v3, Lcom/xiaomi/scanner/util/Util;->screenWidth:I

    .line 59
    .local v3, "screenWidth":I
    mul-int/lit8 v4, v1, 0x2

    sub-int v4, v3, v4

    int-to-float v4, v4

    const v5, 0x3f1e353f    # 0.618f

    mul-float/2addr v4, v5

    float-to-int v0, v4

    .line 61
    .local v0, "height":I
    new-instance v4, Landroid/graphics/Rect;

    sub-int v5, v3, v1

    add-int v6, v2, v0

    invoke-direct {v4, v1, v2, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method private hideLoading()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getAppUI()Lcom/xiaomi/scanner/app/AppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/AppUI;->dismissProgress()V

    .line 147
    return-void
.end method

.method private initOrUpdateResultUi(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/scanner/bean/BusinessCardItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/scanner/bean/BusinessCardItem;>;"
    const/4 v2, 0x0

    .line 65
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->resultView:Lcom/xiaomi/scanner/ui/BusinessCardResultView;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/xiaomi/scanner/ui/BusinessCardResultView;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/ui/BusinessCardResultView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->resultView:Lcom/xiaomi/scanner/ui/BusinessCardResultView;

    .line 67
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->resultView:Lcom/xiaomi/scanner/ui/BusinessCardResultView;

    invoke-virtual {v0, p0}, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->setFinishClick(Lcom/xiaomi/scanner/ui/BusinessCardResultView$FinishClick;)V

    .line 68
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->mFullRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->resultView:Lcom/xiaomi/scanner/ui/BusinessCardResultView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->mFullRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->resultView:Lcom/xiaomi/scanner/ui/BusinessCardResultView;

    invoke-virtual {v0, v2}, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->resultView:Lcom/xiaomi/scanner/ui/BusinessCardResultView;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->updateView(Landroid/graphics/Bitmap;Ljava/util/List;)V

    .line 73
    invoke-direct {p0, v2}, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->changeTo(Z)V

    .line 74
    return-void
.end method

.method private showLoading()V
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getAppUI()Lcom/xiaomi/scanner/app/AppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/AppUI;->isProgressShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->hideLoading()V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getAppUI()Lcom/xiaomi/scanner/app/AppUI;

    move-result-object v0

    const v1, 0x7f07008d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/scanner/app/AppUI;->showProgressView(II)V

    .line 143
    return-void
.end method

.method private trackBCEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->isOnlyBusinessCardScan()Z

    move-result v0

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackBCEvent(ZLjava/lang/String;)V

    .line 110
    :cond_0
    return-void
.end method


# virtual methods
.method public getCropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 79
    .local v0, "cropBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->cardPreview:Lcom/xiaomi/scanner/ui/PreviewWithRectView;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/xiaomi/scanner/util/PictureDecoder;->cropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 83
    :goto_0
    if-nez v0, :cond_0

    .line 84
    move-object v0, p1

    .line 86
    :cond_0
    return-object v0

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCropBitmap error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 162
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->mFullRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 163
    .local v0, "canBack":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 164
    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->changeTo(Z)V

    .line 166
    :cond_0
    return v0

    .line 162
    .end local v0    # "canBack":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->resultView:Lcom/xiaomi/scanner/ui/BusinessCardResultView;

    .line 155
    iput-object v0, p0, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->mBitmap:Landroid/graphics/Bitmap;

    .line 156
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->cardPreview:Lcom/xiaomi/scanner/ui/PreviewWithRectView;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->cardPreview:Lcom/xiaomi/scanner/ui/PreviewWithRectView;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->clear()V

    .line 159
    :cond_0
    return-void
.end method

.method public onFinishClick()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->changeTo(Z)V

    .line 115
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->hideLoading()V

    .line 151
    return-void
.end method

.method public showBusinessResult(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/scanner/bean/BusinessCardItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/scanner/bean/BusinessCardItem;>;"
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->hideLoading()V

    .line 91
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 92
    :cond_0
    const v1, 0x7f070029

    invoke-static {v1}, Lcom/xiaomi/scanner/util/ToastUtils;->showCenterToast(I)V

    .line 93
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->changeTo(Z)V

    .line 104
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->isOnlyBusinessCardScan()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    const-string v1, "business_card_result_show"

    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->trackBCEvent(Ljava/lang/String;)V

    .line 96
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "BusinessCardResult"

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/scanner/app/ScanActivity;->setResult(ILandroid/content/Intent;)V

    .line 99
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->finish()V

    goto :goto_0

    .line 101
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    const-string v1, "business_card_result_show"

    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->trackBCEvent(Ljava/lang/String;)V

    .line 102
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->initOrUpdateResultUi(Ljava/util/List;)V

    goto :goto_0
.end method

.method public showImageAndLoading(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "decode"    # Landroid/graphics/Bitmap;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->mBitmap:Landroid/graphics/Bitmap;

    .line 135
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/BusinessCardModuleUI;->showLoading()V

    .line 136
    return-void
.end method
