.class public Lcom/miui/gallery/widget/CardCoverView;
.super Landroid/widget/LinearLayout;
.source "CardCoverView.java"


# instance fields
.field private mCoverImageView1:Landroid/widget/ImageView;

.field private mCoverImageView2:Landroid/widget/ImageView;

.field private mCoverImageView3:Landroid/widget/ImageView;

.field private mCoverImageView4:Landroid/widget/ImageView;

.field private mCoverImageView5:Lcom/miui/gallery/widget/CardNumImageView;

.field private mMediaFeatureItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private mSecondRow:Landroid/widget/LinearLayout;

.field private mShouldUpdateViews:Z

.field private mThirdRow:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/widget/CardCoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/widget/CardCoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/CardCoverView;->initViews(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method private bindView(Landroid/widget/ImageView;Ljava/lang/String;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    .locals 10
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "localPath"    # Ljava/lang/String;
    .param p3, "downloadUri"    # Landroid/net/Uri;
    .param p4, "downloadType"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p5, "displayImageOptions"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    const/4 v6, 0x0

    .line 194
    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadType;->MICRO:Lcom/miui/gallery/sdk/download/DownloadType;

    if-ne p4, v0, :cond_0

    .line 195
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v0

    iget-object v5, v0, Lcom/miui/gallery/Config$ThumbConfig;->sMicroTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v3, p1

    move-object v4, p5

    move-object v9, v6

    .line 194
    invoke-static/range {v0 .. v9}, Lcom/miui/gallery/util/BindImageHelper;->bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;ZZLcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;)V

    .line 197
    return-void

    :cond_0
    move-object v5, v6

    .line 195
    goto :goto_0
.end method

.method private getCoverImageView(II)Landroid/widget/ImageView;
    .locals 2
    .param p1, "totalCount"    # I
    .param p2, "i"    # I

    .prologue
    const/4 v0, 0x0

    .line 170
    if-gt p1, p2, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-object v0

    .line 173
    :cond_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 175
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mCoverImageView1:Landroid/widget/ImageView;

    goto :goto_0

    .line 177
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mCoverImageView2:Landroid/widget/ImageView;

    goto :goto_0

    .line 179
    :pswitch_2
    iget-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mCoverImageView3:Landroid/widget/ImageView;

    goto :goto_0

    .line 181
    :pswitch_3
    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mCoverImageView4:Landroid/widget/ImageView;

    goto :goto_0

    .line 187
    :pswitch_4
    iget-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mCoverImageView5:Lcom/miui/gallery/widget/CardNumImageView;

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getDownloadUri(IJ)Landroid/net/Uri;
    .locals 1
    .param p0, "syncState"    # I
    .param p1, "id"    # J

    .prologue
    .line 214
    if-nez p0, :cond_0

    .line 215
    invoke-static {p1, p2}, Lcom/miui/gallery/util/uil/CloudUriAdapter;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v0

    .line 217
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getImagePath(Lcom/miui/gallery/assistant/model/MediaFeatureItem;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;
    .locals 1
    .param p0, "mediaFeatureItem"    # Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    .param p1, "downloadType"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 200
    if-eqz p0, :cond_2

    .line 201
    invoke-virtual {p0}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getOriginPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getOriginPath()Ljava/lang/String;

    move-result-object v0

    .line 210
    :goto_0
    return-object v0

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getThumbnailPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN:Lcom/miui/gallery/sdk/download/DownloadType;

    if-eq p1, v0, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getThumbnailPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getMicroThumbnailPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN:Lcom/miui/gallery/sdk/download/DownloadType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    if-eq p1, v0, :cond_2

    .line 207
    invoke-virtual {p0}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getMicroThumbnailPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 210
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const v0, 0x7f04003b

    invoke-static {p1, v0, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    const v0, 0x7f1200f0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/CardCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mCoverImageView1:Landroid/widget/ImageView;

    .line 64
    const v0, 0x7f1200f2

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/CardCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mCoverImageView2:Landroid/widget/ImageView;

    .line 65
    const v0, 0x7f1200f3

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/CardCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mCoverImageView3:Landroid/widget/ImageView;

    .line 66
    const v0, 0x7f1200f5

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/CardCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mCoverImageView4:Landroid/widget/ImageView;

    .line 67
    const v0, 0x7f1200f6

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/CardCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/widget/CardNumImageView;

    iput-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mCoverImageView5:Lcom/miui/gallery/widget/CardNumImageView;

    .line 68
    const v0, 0x7f1200f1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/CardCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mSecondRow:Landroid/widget/LinearLayout;

    .line 69
    const v0, 0x7f1200f4

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/CardCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mThirdRow:Landroid/widget/LinearLayout;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mMediaFeatureItems:Ljava/util/List;

    .line 71
    return-void
.end method

.method private updateViews()V
    .locals 12

    .prologue
    .line 147
    iget-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mMediaFeatureItems:Ljava/util/List;

    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mShouldUpdateViews:Z

    if-eqz v0, :cond_2

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mShouldUpdateViews:Z

    .line 149
    iget-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mMediaFeatureItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    .line 150
    .local v7, "imageCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_2

    .line 151
    invoke-direct {p0, v7, v6}, Lcom/miui/gallery/widget/CardCoverView;->getCoverImageView(II)Landroid/widget/ImageView;

    move-result-object v1

    .line 152
    .local v1, "coverImageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mMediaFeatureItems:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    .line 154
    .local v8, "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    invoke-static {v7, v6}, Lcom/miui/gallery/card/CardUtil;->getDownloadType(II)Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v4

    .line 155
    .local v4, "downloadType":Lcom/miui/gallery/sdk/download/DownloadType;
    invoke-static {v8, v4}, Lcom/miui/gallery/widget/CardCoverView;->getImagePath(Lcom/miui/gallery/assistant/model/MediaFeatureItem;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-virtual {v8}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getLocalFlag()I

    move-result v0

    invoke-virtual {v8}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getId()J

    move-result-wide v10

    invoke-static {v0, v10, v11}, Lcom/miui/gallery/widget/CardCoverView;->getDownloadUri(IJ)Landroid/net/Uri;

    move-result-object v3

    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    if-ne v4, v0, :cond_1

    iget-object v5, p0, Lcom/miui/gallery/widget/CardCoverView;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    :goto_1
    move-object v0, p0

    .line 155
    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/widget/CardCoverView;->bindView(Landroid/widget/ImageView;Ljava/lang/String;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 150
    .end local v4    # "downloadType":Lcom/miui/gallery/sdk/download/DownloadType;
    .end local v8    # "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 156
    .restart local v4    # "downloadType":Lcom/miui/gallery/sdk/download/DownloadType;
    .restart local v8    # "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    :cond_1
    sget-object v5, Lcom/miui/gallery/Config$ThumbConfig;->MICRO_THUMB_DISPLAY_IMAGE_OPTIONS_DEFAULT:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    goto :goto_1

    .line 161
    .end local v1    # "coverImageView":Landroid/widget/ImageView;
    .end local v4    # "downloadType":Lcom/miui/gallery/sdk/download/DownloadType;
    .end local v6    # "i":I
    .end local v7    # "imageCount":I
    .end local v8    # "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    :cond_2
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 132
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 135
    invoke-direct {p0}, Lcom/miui/gallery/widget/CardCoverView;->updateViews()V

    .line 136
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 77
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 78
    .local v1, "width":I
    add-int/lit8 v2, v1, -0x4

    div-int/lit8 v0, v2, 0x2

    .line 79
    .local v0, "height":I
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 80
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 81
    return-void
.end method

.method public setImageCount(I)V
    .locals 5
    .param p1, "imageCount"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v3, 0x8

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 84
    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mCoverImageView1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mSecondRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mThirdRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mCoverImageView1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 128
    :goto_0
    return-void

    .line 89
    :cond_0
    if-ne p1, v2, :cond_1

    .line 90
    iget-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mCoverImageView1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mSecondRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mThirdRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mCoverImageView3:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mCoverImageView1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 96
    iget-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mCoverImageView2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 98
    iget-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mCoverImageView1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 99
    iget-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mSecondRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    .line 101
    :cond_1
    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mCoverImageView1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mSecondRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mThirdRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mCoverImageView3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mCoverImageView1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 108
    iget-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mCoverImageView2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 110
    iget-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mCoverImageView1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x40a00000    # 5.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 111
    iget-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mSecondRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x40400000    # 3.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto/16 :goto_0

    .line 113
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mCoverImageView1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mSecondRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mThirdRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mCoverImageView3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mCoverImageView1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 119
    iget-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mCoverImageView2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 121
    iget-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mCoverImageView1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x40000000    # 2.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 122
    iget-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mSecondRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 123
    iget-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mThirdRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 125
    iget-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mCoverImageView5:Lcom/miui/gallery/widget/CardNumImageView;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/widget/CardNumImageView;->setNum(I)V

    goto/16 :goto_0
.end method

.method public update(ILcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    .locals 1
    .param p1, "imageRes"    # I
    .param p2, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 225
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/CardCoverView;->setImageCount(I)V

    .line 226
    iget-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mCoverImageView1:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 227
    return-void
.end method

.method public update(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    .locals 3
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 233
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/CardCoverView;->setImageCount(I)V

    .line 234
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    new-instance v1, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    iget-object v2, p0, Lcom/miui/gallery/widget/CardCoverView;->mCoverImageView1:Landroid/widget/ImageView;

    invoke-direct {v1, v2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v0, p1, v1, p2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 238
    return-void
.end method

.method public update(Ljava/util/List;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    .locals 1
    .param p2, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;",
            "Lcom/nostra13/universalimageloader/core/DisplayImageOptions;",
            ")V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "mediaFeatureItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    iget-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mMediaFeatureItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 140
    iget-object v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mMediaFeatureItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 141
    iput-object p2, p0, Lcom/miui/gallery/widget/CardCoverView;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/widget/CardCoverView;->mShouldUpdateViews:Z

    .line 143
    invoke-virtual {p0}, Lcom/miui/gallery/widget/CardCoverView;->requestLayout()V

    .line 144
    return-void
.end method
