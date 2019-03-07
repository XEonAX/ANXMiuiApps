.class public Lcom/miui/screenrecorder/view/AutoFitTextureView;
.super Landroid/view/TextureView;
.source "AutoFitTextureView.java"


# instance fields
.field private mRatioHeight:I

.field private mRatioWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/screenrecorder/view/AutoFitTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/screenrecorder/view/AutoFitTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    iput v0, p0, Lcom/miui/screenrecorder/view/AutoFitTextureView;->mRatioWidth:I

    .line 13
    iput v0, p0, Lcom/miui/screenrecorder/view/AutoFitTextureView;->mRatioHeight:I

    .line 25
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    .line 47
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 48
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 49
    .local v0, "height":I
    iget v2, p0, Lcom/miui/screenrecorder/view/AutoFitTextureView;->mRatioWidth:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/miui/screenrecorder/view/AutoFitTextureView;->mRatioHeight:I

    if-nez v2, :cond_1

    .line 50
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/miui/screenrecorder/view/AutoFitTextureView;->setMeasuredDimension(II)V

    .line 58
    :goto_0
    return-void

    .line 52
    :cond_1
    iget v2, p0, Lcom/miui/screenrecorder/view/AutoFitTextureView;->mRatioWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/miui/screenrecorder/view/AutoFitTextureView;->mRatioHeight:I

    div-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    .line 53
    iget v2, p0, Lcom/miui/screenrecorder/view/AutoFitTextureView;->mRatioHeight:I

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/miui/screenrecorder/view/AutoFitTextureView;->mRatioWidth:I

    div-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/miui/screenrecorder/view/AutoFitTextureView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 55
    :cond_2
    iget v2, p0, Lcom/miui/screenrecorder/view/AutoFitTextureView;->mRatioWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/miui/screenrecorder/view/AutoFitTextureView;->mRatioHeight:I

    div-int/2addr v2, v3

    invoke-virtual {p0, v2, v0}, Lcom/miui/screenrecorder/view/AutoFitTextureView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public setAspectRatio(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 36
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Size cannot be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_1
    iput p1, p0, Lcom/miui/screenrecorder/view/AutoFitTextureView;->mRatioWidth:I

    .line 40
    iput p2, p0, Lcom/miui/screenrecorder/view/AutoFitTextureView;->mRatioHeight:I

    .line 41
    invoke-virtual {p0}, Lcom/miui/screenrecorder/view/AutoFitTextureView;->requestLayout()V

    .line 42
    return-void
.end method
