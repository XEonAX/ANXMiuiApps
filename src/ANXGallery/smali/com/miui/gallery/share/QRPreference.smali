.class public Lcom/miui/gallery/share/QRPreference;
.super Landroid/preference/Preference;
.source "QRPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/share/QRPreference$Status;
    }
.end annotation


# instance fields
.field private mQRCodeRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryListener:Landroid/view/View$OnClickListener;

.field private mStatus:Lcom/miui/gallery/share/QRPreference$Status;

.field private mTextQR:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/share/QRPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    sget-object v0, Lcom/miui/gallery/share/QRPreference$Status;->REQUESTING:Lcom/miui/gallery/share/QRPreference$Status;

    iput-object v0, p0, Lcom/miui/gallery/share/QRPreference;->mStatus:Lcom/miui/gallery/share/QRPreference$Status;

    .line 43
    const v0, 0x7f040142

    invoke-virtual {p0, v0}, Lcom/miui/gallery/share/QRPreference;->setLayoutResource(I)V

    .line 44
    return-void
.end method

.method private getQRCodeParentSize()I
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/miui/gallery/share/QRPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b02a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private update(Landroid/view/View;)V
    .locals 13
    .param p1, "root"    # Landroid/view/View;

    .prologue
    const/4 v12, 0x0

    const/4 v9, 0x0

    const/16 v11, 0x8

    .line 89
    const v8, 0x7f120291

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 90
    .local v4, "errorView":Landroid/view/View;
    const v8, 0x7f120293

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 91
    .local v6, "requestingView":Landroid/view/View;
    const v8, 0x7f120294

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 93
    .local v5, "qrView":Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/miui/gallery/share/QRPreference;->mStatus:Lcom/miui/gallery/share/QRPreference$Status;

    sget-object v10, Lcom/miui/gallery/share/QRPreference$Status;->REQUESTING:Lcom/miui/gallery/share/QRPreference$Status;

    if-ne v8, v10, :cond_1

    .line 94
    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 95
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 96
    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v8, p0, Lcom/miui/gallery/share/QRPreference;->mStatus:Lcom/miui/gallery/share/QRPreference$Status;

    sget-object v10, Lcom/miui/gallery/share/QRPreference$Status;->FAILED:Lcom/miui/gallery/share/QRPreference$Status;

    if-ne v8, v10, :cond_2

    .line 98
    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    .line 99
    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 100
    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 101
    :cond_2
    iget-object v8, p0, Lcom/miui/gallery/share/QRPreference;->mStatus:Lcom/miui/gallery/share/QRPreference$Status;

    sget-object v10, Lcom/miui/gallery/share/QRPreference$Status;->SUCCESS:Lcom/miui/gallery/share/QRPreference$Status;

    if-ne v8, v10, :cond_0

    .line 102
    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 104
    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object v8, p0, Lcom/miui/gallery/share/QRPreference;->mTextQR:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 107
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 110
    :cond_3
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 111
    .local v2, "c":J
    iget-object v8, p0, Lcom/miui/gallery/share/QRPreference;->mQRCodeRef:Ljava/lang/ref/WeakReference;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/miui/gallery/share/QRPreference;->mQRCodeRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    move-object v0, v8

    .line 112
    .local v0, "bm":Landroid/graphics/Bitmap;
    :goto_1
    if-nez v0, :cond_4

    .line 115
    invoke-virtual {p0}, Lcom/miui/gallery/share/QRPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f0b00c0

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 116
    .local v7, "size":I
    iget-object v8, p0, Lcom/miui/gallery/share/QRPreference;->mTextQR:Ljava/lang/String;

    invoke-static {v8, v7}, Lcom/zxing/encoding/EncodingHandler;->createQRCode(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_4

    .line 119
    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-direct {v8, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v8, p0, Lcom/miui/gallery/share/QRPreference;->mQRCodeRef:Ljava/lang/ref/WeakReference;

    .line 122
    .end local v7    # "size":I
    :cond_4
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 123
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "c":J
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Lcom/google/zxing/WriterException;
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .end local v1    # "e":Lcom/google/zxing/WriterException;
    .restart local v2    # "c":J
    :cond_5
    move-object v0, v9

    .line 111
    goto :goto_1

    .line 125
    .end local v2    # "c":J
    :catch_1
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public getQRText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/miui/gallery/share/QRPreference;->mTextQR:Ljava/lang/String;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 50
    invoke-direct {p0}, Lcom/miui/gallery/share/QRPreference;->getQRCodeParentSize()I

    move-result v2

    .line 51
    .local v2, "qrSize":I
    const v3, 0x7f120290

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 52
    .local v1, "qrContent":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 53
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 54
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 55
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 57
    const v3, 0x7f120292

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    invoke-direct {p0, p1}, Lcom/miui/gallery/share/QRPreference;->update(Landroid/view/View;)V

    .line 59
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/gallery/share/QRPreference;->mRetryListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/miui/gallery/share/QRPreference;->mRetryListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 66
    :cond_0
    return-void
.end method

.method public setQRText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/miui/gallery/share/QRPreference;->mTextQR:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iput-object p1, p0, Lcom/miui/gallery/share/QRPreference;->mTextQR:Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/share/QRPreference;->mQRCodeRef:Ljava/lang/ref/WeakReference;

    .line 86
    :cond_0
    return-void
.end method

.method public setRetryListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/miui/gallery/share/QRPreference;->mRetryListener:Landroid/view/View$OnClickListener;

    .line 70
    return-void
.end method

.method public setStatus(Lcom/miui/gallery/share/QRPreference$Status;)V
    .locals 0
    .param p1, "status"    # Lcom/miui/gallery/share/QRPreference$Status;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/miui/gallery/share/QRPreference;->mStatus:Lcom/miui/gallery/share/QRPreference$Status;

    .line 74
    invoke-virtual {p0}, Lcom/miui/gallery/share/QRPreference;->notifyChanged()V

    .line 75
    return-void
.end method
