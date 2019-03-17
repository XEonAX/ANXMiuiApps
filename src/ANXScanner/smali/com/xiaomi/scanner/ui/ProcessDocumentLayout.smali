.class public Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;
.super Landroid/widget/RelativeLayout;
.source "ProcessDocumentLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mGrayScaleView:Landroid/widget/TextView;

.field private mMessageDispatcher:Lcom/xiaomi/scanner/ui/MessageDispatcher;

.field private mOcrView:Landroid/view/View;

.field private mRectifiedImage:Landroid/graphics/Bitmap;

.field private mRectifiedImg:Landroid/widget/ImageView;

.field private mRectifyView:Landroid/view/View;

.field private mRetakeView:Landroid/view/View;

.field private mSaveView:Landroid/view/View;

.field private mToGrayScale:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;->mToGrayScale:Z

    .line 31
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 97
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 66
    :pswitch_1
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;->mMessageDispatcher:Lcom/xiaomi/scanner/ui/MessageDispatcher;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;->mMessageDispatcher:Lcom/xiaomi/scanner/ui/MessageDispatcher;

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-boolean v4, p0, Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;->mToGrayScale:Z

    .line 70
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 67
    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/scanner/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    :cond_1
    iget-boolean v0, p0, Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;->mToGrayScale:Z

    if-nez v0, :cond_2

    move v1, v6

    :cond_2
    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;->updateGrayScaleStatus(Z)V

    goto :goto_0

    .line 75
    :pswitch_2
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;->mMessageDispatcher:Lcom/xiaomi/scanner/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;->mMessageDispatcher:Lcom/xiaomi/scanner/ui/MessageDispatcher;

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-boolean v4, p0, Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;->mToGrayScale:Z

    if-nez v4, :cond_3

    .line 79
    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 76
    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/scanner/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move v6, v1

    .line 77
    goto :goto_1

    .line 87
    :pswitch_3
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;->mMessageDispatcher:Lcom/xiaomi/scanner/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;->mMessageDispatcher:Lcom/xiaomi/scanner/ui/MessageDispatcher;

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    move-object v4, v5

    .line 88
    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/scanner/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d00e7
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 37
    const v0, 0x7f0d00eb

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;->mRetakeView:Landroid/view/View;

    .line 38
    const v0, 0x7f0d00ec

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;->mSaveView:Landroid/view/View;

    .line 39
    const v0, 0x7f0d00e5

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;->mRectifiedImg:Landroid/widget/ImageView;

    .line 40
    const v0, 0x7f0d00e9

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;->mOcrView:Landroid/view/View;

    .line 41
    const v0, 0x7f0d00e7

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;->mRectifyView:Landroid/view/View;

    .line 42
    const v0, 0x7f0d00e8

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;->mGrayScaleView:Landroid/widget/TextView;

    .line 44
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;->mRetakeView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;->mSaveView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;->mOcrView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;->mRectifyView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;->mGrayScaleView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    sget-boolean v0, Lcom/xiaomi/scanner/util/Util;->hasNativageBar:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/scanner/module/code/utils/Utils;->isFullScreenDevice()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getNavigationBarHeight()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;->setPadding(IIII)V

    .line 51
    return-void

    :cond_0
    move v0, v1

    .line 50
    goto :goto_0
.end method

.method public setMessageDispatcher(Lcom/xiaomi/scanner/ui/MessageDispatcher;)V
    .locals 0
    .param p1, "messageDispatcher"    # Lcom/xiaomi/scanner/ui/MessageDispatcher;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;->mMessageDispatcher:Lcom/xiaomi/scanner/ui/MessageDispatcher;

    .line 55
    return-void
.end method

.method public setRectifiedImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;->mRectifiedImage:Landroid/graphics/Bitmap;

    .line 59
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;->mRectifiedImg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;->mRectifiedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 60
    return-void
.end method

.method public updateGrayScaleStatus(Z)V
    .locals 2
    .param p1, "toGrayScale"    # Z

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;->mToGrayScale:Z

    if-eq v0, p1, :cond_0

    .line 101
    iput-boolean p1, p0, Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;->mToGrayScale:Z

    .line 102
    if-eqz p1, :cond_1

    .line 103
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;->mGrayScaleView:Landroid/widget/TextView;

    const v1, 0x7f070042

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ProcessDocumentLayout;->mGrayScaleView:Landroid/widget/TextView;

    const v1, 0x7f07003f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
