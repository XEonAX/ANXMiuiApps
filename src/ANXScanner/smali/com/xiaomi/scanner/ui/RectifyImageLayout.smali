.class public Lcom/xiaomi/scanner/ui/RectifyImageLayout;
.super Landroid/widget/RelativeLayout;
.source "RectifyImageLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field private final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field private mCancelButton:Landroid/widget/ImageView;

.field private mCropRectView:Lcom/xiaomi/scanner/ui/DocumentRectifyView;

.field private mCroppedImage:Landroid/widget/ImageView;

.field private mCroppedTitle:Landroid/widget/TextView;

.field private mDoneButton:Landroid/widget/ImageView;

.field private mMessageDispatcher:Lcom/xiaomi/scanner/ui/MessageDispatcher;

.field private mSourceBitmap:Landroid/graphics/Bitmap;

.field private mTitleId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "RectifyImageLayout"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/ui/RectifyImageLayout;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/RectifyImageLayout;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->mSourceBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/scanner/ui/RectifyImageLayout;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/RectifyImageLayout;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->setCropViewSize(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private notifyCropDoneToController(Lcom/xiaomi/recognizer/RecognizeResult;)V
    .locals 6
    .param p1, "result"    # Lcom/xiaomi/recognizer/RecognizeResult;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->mMessageDispatcher:Lcom/xiaomi/scanner/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->mMessageDispatcher:Lcom/xiaomi/scanner/ui/MessageDispatcher;

    const/4 v1, 0x0

    const v2, 0x7f0d00f2

    const/4 v3, 0x2

    const/4 v5, 0x0

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/scanner/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 220
    :cond_0
    return-void
.end method

.method private onCancelCropClicked()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 223
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->mCroppedImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 224
    iput-object v4, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->mSourceBitmap:Landroid/graphics/Bitmap;

    .line 225
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->mMessageDispatcher:Lcom/xiaomi/scanner/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->mMessageDispatcher:Lcom/xiaomi/scanner/ui/MessageDispatcher;

    const/4 v1, 0x0

    const v2, 0x7f0d00f1

    const/4 v3, 0x2

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/scanner/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 231
    :cond_0
    return-void
.end method

.method private onFinishCropClicked()V
    .locals 6

    .prologue
    .line 118
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->mCropRectView:Lcom/xiaomi/scanner/ui/DocumentRectifyView;

    invoke-virtual {v3}, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->getImageCropCorners()[Landroid/graphics/Point;

    move-result-object v1

    .line 119
    .local v1, "corners":[Landroid/graphics/Point;
    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->serializeCorners([Landroid/graphics/Point;)[F

    move-result-object v0

    .line 120
    .local v0, "coordinates":[F
    if-nez v0, :cond_0

    .line 121
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v4, "onFinishCropClicked: no coordinates return!"

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 130
    :goto_0
    return-void

    .line 124
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->mSourceBitmap:Landroid/graphics/Bitmap;

    .line 125
    new-instance v2, Lcom/xiaomi/recognizer/RecognizeResult;

    invoke-direct {v2}, Lcom/xiaomi/recognizer/RecognizeResult;-><init>()V

    .line 126
    .local v2, "result":Lcom/xiaomi/recognizer/RecognizeResult;
    iput-object v0, v2, Lcom/xiaomi/recognizer/RecognizeResult;->quadrangleCorners:[F

    .line 127
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/xiaomi/recognizer/RecognizeResult;->resultValid:Z

    .line 128
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onFinishCropClicked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0, v2}, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->notifyCropDoneToController(Lcom/xiaomi/recognizer/RecognizeResult;)V

    goto :goto_0
.end method

.method private serializeCorners([Landroid/graphics/Point;)[F
    .locals 8
    .param p1, "corners"    # [Landroid/graphics/Point;

    .prologue
    const/4 v5, 0x0

    .line 142
    if-eqz p1, :cond_0

    array-length v4, p1

    const/4 v6, 0x4

    if-eq v4, v6, :cond_3

    .line 143
    :cond_0
    iget-object v6, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "serializeCorners: require 4 points but found "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez p1, :cond_2

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    move-object v2, v5

    .line 161
    :cond_1
    :goto_1
    return-object v2

    .line 143
    :cond_2
    array-length v4, p1

    goto :goto_0

    .line 148
    :cond_3
    const/4 v4, 0x2

    const/4 v6, 0x3

    invoke-direct {p0, p1, v4, v6}, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->switchPoint([Landroid/graphics/Point;II)V

    .line 149
    array-length v3, p1

    .line 150
    .local v3, "size":I
    mul-int/lit8 v4, v3, 0x2

    new-array v2, v4, [F

    .line 151
    .local v2, "result":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v3, :cond_1

    .line 152
    aget-object v0, p1, v1

    .line 153
    .local v0, "corner":Landroid/graphics/Point;
    if-nez v0, :cond_4

    .line 154
    iget-object v4, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "serializeCorners: invalid corner "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    move-object v2, v5

    .line 155
    goto :goto_1

    .line 157
    :cond_4
    mul-int/lit8 v4, v1, 0x2

    iget v6, v0, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    aput v6, v2, v4

    .line 158
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    iget v6, v0, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    aput v6, v2, v4

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private setCropViewSize(Landroid/graphics/Bitmap;)V
    .locals 10
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 258
    iget-object v8, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->mCroppedImage:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    .line 259
    .local v5, "imageWidth":I
    iget-object v8, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->mCroppedImage:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    .line 260
    .local v4, "imageHeight":I
    if-eqz p1, :cond_0

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    .line 261
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 262
    .local v7, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 263
    .local v2, "height":I
    move v1, v5

    .line 264
    .local v1, "cropViewWith":I
    move v0, v4

    .line 265
    .local v0, "cropViewHeight":I
    int-to-float v8, v5

    int-to-float v9, v4

    div-float v3, v8, v9

    .line 266
    .local v3, "imageAspect":F
    int-to-float v8, v7

    int-to-float v9, v2

    div-float/2addr v8, v9

    cmpl-float v8, v8, v3

    if-ltz v8, :cond_1

    .line 267
    mul-int v8, v5, v2

    div-int v0, v8, v7

    .line 272
    :goto_0
    iget-object v8, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->mCropRectView:Lcom/xiaomi/scanner/ui/DocumentRectifyView;

    invoke-virtual {v8}, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 273
    .local v6, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 274
    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 275
    iget-object v8, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->mCropRectView:Lcom/xiaomi/scanner/ui/DocumentRectifyView;

    invoke-virtual {v8, v6}, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    iget-object v8, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->mCropRectView:Lcom/xiaomi/scanner/ui/DocumentRectifyView;

    invoke-virtual {v8}, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->requestLayout()V

    .line 278
    .end local v0    # "cropViewHeight":I
    .end local v1    # "cropViewWith":I
    .end local v2    # "height":I
    .end local v3    # "imageAspect":F
    .end local v6    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v7    # "width":I
    :cond_0
    return-void

    .line 269
    .restart local v0    # "cropViewHeight":I
    .restart local v1    # "cropViewWith":I
    .restart local v2    # "height":I
    .restart local v3    # "imageAspect":F
    .restart local v7    # "width":I
    :cond_1
    mul-int v8, v4, v7

    div-int v1, v8, v2

    goto :goto_0
.end method

.method private switchPoint([Landroid/graphics/Point;II)V
    .locals 3
    .param p1, "corners"    # [Landroid/graphics/Point;
    .param p2, "index1"    # I
    .param p3, "index2"    # I

    .prologue
    .line 96
    if-nez p1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    array-length v0, p1

    .line 101
    .local v0, "size":I
    if-ge p2, v0, :cond_0

    if-ltz p2, :cond_0

    if-ge p3, v0, :cond_0

    if-ltz p3, :cond_0

    .line 105
    aget-object v1, p1, p2

    .line 106
    .local v1, "temp":Landroid/graphics/Point;
    aget-object v2, p1, p3

    aput-object v2, p1, p2

    .line 107
    aput-object v1, p1, p3

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 75
    :goto_0
    return-void

    .line 69
    :pswitch_0
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->onCancelCropClicked()V

    goto :goto_0

    .line 72
    :pswitch_1
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->onFinishCropClicked()V

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x7f0d00f1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onFinishInflate()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 45
    const v0, 0x7f0d00f0

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->mCroppedTitle:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0d00ef

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/ui/DocumentRectifyView;

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->mCropRectView:Lcom/xiaomi/scanner/ui/DocumentRectifyView;

    .line 47
    const v0, 0x7f0d00ee

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->mCroppedImage:Landroid/widget/ImageView;

    .line 48
    const v0, 0x7f0d00f1

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->mCancelButton:Landroid/widget/ImageView;

    .line 49
    const v0, 0x7f0d00f2

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->mDoneButton:Landroid/widget/ImageView;

    .line 50
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->mCancelButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->mDoneButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget v0, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->mTitleId:I

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->mCroppedTitle:Landroid/widget/TextView;

    iget v2, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->mTitleId:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->mCroppedImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 57
    sget-boolean v0, Lcom/xiaomi/scanner/util/Util;->hasNativageBar:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaomi/scanner/module/code/utils/Utils;->isFullScreenDevice()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getNavigationBarHeight()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->setPadding(IIII)V

    .line 58
    return-void

    :cond_1
    move v0, v1

    .line 57
    goto :goto_0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 236
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->mSourceBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 237
    new-instance v0, Lcom/xiaomi/scanner/ui/RectifyImageLayout$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/ui/RectifyImageLayout$1;-><init>(Lcom/xiaomi/scanner/ui/RectifyImageLayout;)V

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 244
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 63
    return-void
.end method

.method public setCropCorners([Landroid/graphics/Point;)V
    .locals 3
    .param p1, "corners"    # [Landroid/graphics/Point;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCropCorners: cropView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->mCropRectView:Lcom/xiaomi/scanner/ui/DocumentRectifyView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->mCropRectView:Lcom/xiaomi/scanner/ui/DocumentRectifyView;

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x2

    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->switchPoint([Landroid/graphics/Point;II)V

    .line 91
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->mCropRectView:Lcom/xiaomi/scanner/ui/DocumentRectifyView;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/xiaomi/scanner/ui/DocumentRectifyView;->setImageParams(II[Landroid/graphics/Point;)V

    .line 93
    :cond_0
    return-void
.end method

.method public setMessageDispatcher(Lcom/xiaomi/scanner/ui/MessageDispatcher;)V
    .locals 0
    .param p1, "messageDispatcher"    # Lcom/xiaomi/scanner/ui/MessageDispatcher;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->mMessageDispatcher:Lcom/xiaomi/scanner/ui/MessageDispatcher;

    .line 41
    return-void
.end method

.method public setSourceImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->mSourceBitmap:Landroid/graphics/Bitmap;

    .line 248
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->mCroppedImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 249
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->setCropViewSize(Landroid/graphics/Bitmap;)V

    .line 250
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->mTitleId:I

    .line 112
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->mCroppedTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->mCroppedTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 115
    :cond_0
    return-void
.end method
