.class public Lcom/xiaomi/scanner/ui/CodeModuleUI;
.super Ljava/lang/Object;
.source "CodeModuleUI.java"


# static fields
.field private static final REQUEST_EXTRA_SUBTITLE:Ljava/lang/String; = "subTitle"

.field private static final REQUEST_EXTRA_SUBTITLE_LINK:Ljava/lang/String; = "subTitleLink"

.field private static final REQUEST_EXTRA_SUBTITLE_LINK_ACTION:Ljava/lang/String; = "subTitleLinkAction"

.field private static final REQUEST_EXTRA_TITLE:Ljava/lang/String; = "title"

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private final mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

.field private final mAppRoot:Landroid/view/View;

.field private mAppUI:Lcom/xiaomi/scanner/app/AppUI;

.field private final mController:Lcom/xiaomi/scanner/module/CodeModule;

.field private mFrameRectInPreview:Landroid/graphics/Rect;

.field private mFramingRect:Landroid/graphics/Rect;

.field private final mModuleRoot:Landroid/view/ViewGroup;

.field private mQRFgView:Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;

.field private tipView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "CodeModuleUI"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/scanner/app/ScanActivity;Lcom/xiaomi/scanner/module/CodeModule;Landroid/view/View;Ljava/lang/String;)V
    .locals 5
    .param p1, "activity"    # Lcom/xiaomi/scanner/app/ScanActivity;
    .param p2, "controller"    # Lcom/xiaomi/scanner/module/CodeModule;
    .param p3, "parent"    # Landroid/view/View;
    .param p4, "callingApp"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    .line 49
    iput-object p2, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mController:Lcom/xiaomi/scanner/module/CodeModule;

    .line 50
    iput-object p3, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mAppRoot:Landroid/view/View;

    .line 51
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getAppUI()Lcom/xiaomi/scanner/app/AppUI;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    .line 53
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mAppRoot:Landroid/view/View;

    const v2, 0x7f0d008c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mModuleRoot:Landroid/view/ViewGroup;

    .line 55
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030023

    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mModuleRoot:Landroid/view/ViewGroup;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 57
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mModuleRoot:Landroid/view/ViewGroup;

    const v2, 0x7f0d009c

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;

    iput-object v1, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mQRFgView:Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;

    .line 58
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mQRFgView:Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;

    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/CodeModuleUI;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->setScannerFrame(Landroid/graphics/Rect;)V

    .line 59
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mController:Lcom/xiaomi/scanner/module/CodeModule;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/module/CodeModule;->isPause()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/xiaomi/scanner/util/AppUtil;->isUserAgreeToRun()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mQRFgView:Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->startLaserAnim()V

    .line 62
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/CodeModuleUI;->showThirdAppUI()V

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mModuleRoot:Landroid/view/ViewGroup;

    const v2, 0x7f0d009e

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->tipView:Landroid/widget/TextView;

    .line 67
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->tipView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 68
    .local v0, "tipParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/CodeModuleUI;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Lcom/xiaomi/scanner/app/ScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080082

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/ui/CodeModuleUI;)Lcom/xiaomi/scanner/app/ScanActivity;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/CodeModuleUI;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    return-object v0
.end method

.method static synthetic access$100()Lcom/xiaomi/scanner/debug/Log$Tag;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-object v0
.end method


# virtual methods
.method public getFramingRect()Landroid/graphics/Rect;
    .locals 9

    .prologue
    .line 129
    iget-object v6, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mFramingRect:Landroid/graphics/Rect;

    if-nez v6, :cond_0

    .line 130
    iget-object v6, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v6}, Lcom/xiaomi/scanner/app/ScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 131
    .local v2, "res":Landroid/content/res/Resources;
    const v6, 0x7f080081

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v5, v6

    .line 132
    .local v5, "width":I
    const v6, 0x7f08007f

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    .line 133
    .local v0, "height":I
    iget-object v6, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mModuleRoot:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    if-nez v6, :cond_1

    sget v6, Lcom/xiaomi/scanner/util/Util;->screenWidth:I

    sget v7, Lcom/xiaomi/scanner/util/Util;->screenHeight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 135
    .local v4, "viewRootWidth":I
    :goto_0
    sub-int v6, v4, v5

    div-int/lit8 v1, v6, 0x2

    .line 136
    .local v1, "leftOffset":I
    const v6, 0x7f080080

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 137
    .local v3, "topOffset":I
    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v1, v5

    add-int v8, v3, v0

    invoke-direct {v6, v1, v3, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mFramingRect:Landroid/graphics/Rect;

    .line 139
    .end local v0    # "height":I
    .end local v1    # "leftOffset":I
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "topOffset":I
    .end local v4    # "viewRootWidth":I
    .end local v5    # "width":I
    :cond_0
    sget-object v6, Lcom/xiaomi/scanner/ui/CodeModuleUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "framingRect: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mFramingRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 140
    iget-object v6, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mFramingRect:Landroid/graphics/Rect;

    return-object v6

    .line 133
    .restart local v0    # "height":I
    .restart local v2    # "res":Landroid/content/res/Resources;
    .restart local v5    # "width":I
    :cond_1
    iget-object v6, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mModuleRoot:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    goto :goto_0
.end method

.method public getFramingRectInPreview(III)Landroid/graphics/Rect;
    .locals 6
    .param p1, "previewWidth"    # I
    .param p2, "previewHeight"    # I
    .param p3, "orientation"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 148
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mFrameRectInPreview:Landroid/graphics/Rect;

    if-nez v3, :cond_2

    .line 149
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/CodeModuleUI;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 151
    .local v2, "rect":Landroid/graphics/Rect;
    const/16 v3, 0x5a

    if-eq p3, v3, :cond_0

    const/16 v3, 0x10e

    if-ne p3, v3, :cond_3

    .line 152
    :cond_0
    int-to-float v3, p2

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v4}, Lcom/xiaomi/scanner/app/AppUI;->getPreviewWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 156
    .local v1, "ratio":F
    :goto_0
    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 157
    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 158
    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 159
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 160
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/lit8 v0, v3, 0x3

    .line 161
    .local v0, "offset":I
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v0

    int-to-float v3, v3

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v4}, Lcom/xiaomi/scanner/app/AppUI;->getPreviewHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    iget v3, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v0

    int-to-float v3, v3

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v4}, Lcom/xiaomi/scanner/app/AppUI;->getPreviewWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 162
    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 163
    iget v3, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 164
    iget v3, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 165
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 167
    :cond_1
    iput-object v2, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mFrameRectInPreview:Landroid/graphics/Rect;

    .line 168
    sget-object v3, Lcom/xiaomi/scanner/ui/CodeModuleUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "framingRectInPreview: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mFrameRectInPreview:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 171
    .end local v0    # "offset":I
    .end local v1    # "ratio":F
    .end local v2    # "rect":Landroid/graphics/Rect;
    :cond_2
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mFrameRectInPreview:Landroid/graphics/Rect;

    return-object v3

    .line 154
    .restart local v2    # "rect":Landroid/graphics/Rect;
    :cond_3
    int-to-float v3, p1

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v4}, Lcom/xiaomi/scanner/app/AppUI;->getPreviewWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .restart local v1    # "ratio":F
    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mQRFgView:Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->clear()V

    .line 176
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mQRFgView:Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mQRFgView:Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->stopLaserAnim()V

    .line 86
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mQRFgView:Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mFramingRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mQRFgView:Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->startLaserAnim()V

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->tipView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/scanner/config/ConfigModel;->instance:Lcom/xiaomi/scanner/config/ConfigModel;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/config/ConfigModel;->getQrScanTip()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->tipView:Landroid/widget/TextView;

    sget-object v1, Lcom/xiaomi/scanner/config/ConfigModel;->instance:Lcom/xiaomi/scanner/config/ConfigModel;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/config/ConfigModel;->getQrScanTip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :cond_0
    return-void

    .line 75
    :cond_1
    sget-object v0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drop this start operation, mFramingRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mFramingRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showThirdAppUI()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 89
    iget-object v7, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v7}, Lcom/xiaomi/scanner/app/ScanActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 90
    .local v0, "intent":Landroid/content/Intent;
    const-string v7, "title"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 91
    .local v5, "title":Ljava/lang/String;
    const-string v7, "subTitle"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "subTitle":Ljava/lang/String;
    const-string v7, "subTitleLinkAction"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "subTitleLinkAction":Ljava/lang/String;
    const-string v7, "subTitleLink"

    invoke-virtual {v0, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 94
    .local v2, "subTitleLink":Z
    iget-object v7, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mModuleRoot:Landroid/view/ViewGroup;

    const v8, 0x7f0d009d

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 95
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 96
    iget-object v7, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mModuleRoot:Landroid/view/ViewGroup;

    const v8, 0x7f0d009a

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 97
    .local v6, "titleTextView":Landroid/widget/TextView;
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    .end local v6    # "titleTextView":Landroid/widget/TextView;
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 101
    iget-object v7, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mModuleRoot:Landroid/view/ViewGroup;

    const v8, 0x7f0d009b

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 102
    .local v4, "subTitleTextView":Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setFlags(I)V

    .line 103
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    if-eqz v2, :cond_1

    .line 105
    new-instance v7, Lcom/xiaomi/scanner/ui/CodeModuleUI$1;

    invoke-direct {v7, p0, v3}, Lcom/xiaomi/scanner/ui/CodeModuleUI$1;-><init>(Lcom/xiaomi/scanner/ui/CodeModuleUI;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    .end local v4    # "subTitleTextView":Landroid/widget/TextView;
    :cond_1
    return-void
.end method
