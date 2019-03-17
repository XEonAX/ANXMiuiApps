.class public Lcom/miui/gallery/editor/photo/app/crop/CropFragment;
.super Lcom/miui/gallery/editor/photo/app/MenuFragment;
.source "CropFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/app/crop/CropFragment$AutoCropTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/editor/photo/app/MenuFragment",
        "<",
        "Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;",
        "Lcom/miui/gallery/editor/photo/core/SdkProvider",
        "<",
        "Lcom/miui/gallery/editor/photo/core/common/model/CropData;",
        "Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/gallery/editor/photo/app/crop/CropAdapter;

.field private mAutoCropData:Lcom/miui/gallery/editor/photo/app/crop/AutoCropData;

.field private mAutoCropListener:Landroid/view/View$OnClickListener;

.field private mBottomView:Landroid/view/View;

.field private mBubbleIndicator:Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;

.field private mClearListener:Landroid/view/View$OnClickListener;

.field private mCurrentProgress:I

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/CropData;",
            ">;"
        }
    .end annotation
.end field

.field private mIndicatorCallback:Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$Callback",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mOnCropStateChangedListener:Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment$OnCropStateChangedListener;

.field private mOnItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

.field private mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

.field private mSeekBar:Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;

.field private mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/miui/gallery/editor/photo/core/Effect;->CROP:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/app/MenuFragment;-><init>(Lcom/miui/gallery/editor/photo/core/Effect;)V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mCurrentProgress:I

    .line 50
    new-instance v0, Lcom/miui/gallery/editor/photo/app/crop/AutoCropData;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/app/crop/AutoCropData;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mAutoCropData:Lcom/miui/gallery/editor/photo/app/crop/AutoCropData;

    .line 142
    new-instance v0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$2;-><init>(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mOnCropStateChangedListener:Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment$OnCropStateChangedListener;

    .line 166
    new-instance v0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$3;-><init>(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mClearListener:Landroid/view/View$OnClickListener;

    .line 176
    new-instance v0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$4;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$4;-><init>(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mAutoCropListener:Landroid/view/View$OnClickListener;

    .line 186
    new-instance v0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$5;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$5;-><init>(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mOnItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

    .line 204
    new-instance v0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$6;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$6;-><init>(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mIndicatorCallback:Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$Callback;

    .line 211
    new-instance v0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$7;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$7;-><init>(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 54
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;I)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/crop/CropFragment;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->getDegreeShow(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    .prologue
    .line 35
    iget v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mCurrentProgress:I

    return v0
.end method

.method static synthetic access$1502(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/crop/CropFragment;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mCurrentProgress:I

    return p1
.end method

.method static synthetic access$1600(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;I)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/crop/CropFragment;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->getDegree(I)F

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Lcom/miui/gallery/editor/photo/app/crop/AutoCropData;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mAutoCropData:Lcom/miui/gallery/editor/photo/app/crop/AutoCropData;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;F)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/crop/CropFragment;
    .param p1, "x1"    # F

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->getProgressFromDegree(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->getPreview()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mClearListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->setNormalTitle()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mSeekBar:Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mBubbleIndicator:Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Lcom/miui/gallery/editor/photo/app/crop/CropAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mAdapter:Lcom/miui/gallery/editor/photo/app/crop/CropAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/crop/CropFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->doAutoCrop(Z)V

    return-void
.end method

.method private doAutoCrop(Z)V
    .locals 4
    .param p1, "isManual"    # Z

    .prologue
    .line 271
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mAutoCropData:Lcom/miui/gallery/editor/photo/app/crop/AutoCropData;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/app/crop/AutoCropData;->getDegree()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;->autoCrop(F)V

    .line 273
    if-eqz p1, :cond_0

    .line 274
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0c034f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 275
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mClearListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mTitle:Landroid/widget/TextView;

    new-instance v1, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$8;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$8;-><init>(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;Z)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 289
    return-void
.end method

.method private getDegree(I)F
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 255
    int-to-float v0, p1

    const/high16 v1, 0x42b40000    # 90.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x42340000    # 45.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method private getDegreeShow(I)I
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 238
    if-nez p1, :cond_1

    .line 239
    const/4 v0, 0x0

    .line 250
    :cond_0
    :goto_0
    return v0

    .line 241
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->getDegree(I)F

    move-result v1

    .line 242
    .local v1, "rotation":F
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 243
    .local v0, "degreeShow":I
    if-nez v0, :cond_0

    .line 244
    if-lez p1, :cond_2

    .line 245
    const/4 v0, 0x1

    goto :goto_0

    .line 247
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getProgressFromDegree(F)I
    .locals 3
    .param p1, "degree"    # F

    .prologue
    .line 260
    const/high16 v1, 0x42b40000    # 90.0f

    mul-float/2addr v1, p1

    const/high16 v2, 0x42340000    # 45.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 261
    .local v0, "progress":I
    if-nez v0, :cond_1

    .line 262
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 264
    :goto_0
    return v1

    .line 262
    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 264
    goto :goto_0
.end method

.method private resetBottomBarHeight()V
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 121
    invoke-static {}, Lcom/miui/gallery/util/ScreenUtils;->getScreenWidth()I

    move-result v2

    .line 122
    .local v2, "screenWidth":I
    int-to-float v5, v2

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    mul-float/2addr v6, v8

    sub-float v4, v5, v6

    .line 123
    .local v4, "width":F
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090006

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    div-float v5, v4, v5

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090005

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0006

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    add-float/2addr v5, v6

    float-to-int v3, v5

    .line 124
    .local v3, "topHeight":I
    invoke-static {}, Lcom/miui/gallery/util/ScreenUtils;->getScreenHeight()I

    move-result v5

    sub-int v0, v5, v3

    .line 125
    .local v0, "height":I
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mBottomView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 126
    .local v1, "lps":Landroid/view/ViewGroup$LayoutParams;
    int-to-float v5, v0

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0057

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    sub-float/2addr v5, v6

    div-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 127
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mBottomView:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    return-void
.end method

.method private setNormalTitle()V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mAutoCropData:Lcom/miui/gallery/editor/photo/app/crop/AutoCropData;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/crop/AutoCropData;->canAutoRotation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0c034d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 133
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mAutoCropListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0c034c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 137
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mDataList:Ljava/util/List;

    .line 60
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mDataList:Ljava/util/List;

    sget-object v2, Lcom/miui/gallery/editor/photo/core/common/model/CropData;->MIRROR:Lcom/miui/gallery/editor/photo/core/common/model/CropData;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mDataList:Ljava/util/List;

    sget-object v2, Lcom/miui/gallery/editor/photo/core/common/model/CropData;->ROTATE:Lcom/miui/gallery/editor/photo/core/common/model/CropData;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mSdkProvider:Lcom/miui/gallery/editor/photo/core/SdkProvider;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/SdkProvider;->list()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 63
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/common/model/CropData;>;"
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    new-instance v1, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$AutoCropTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$AutoCropTask;-><init>(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;Lcom/miui/gallery/editor/photo/app/crop/CropFragment$1;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$AutoCropTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 66
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    const v0, 0x7f040062

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->onDestroyView()V

    .line 117
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;->setOnCropChangedListener(Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment$OnCropStateChangedListener;)V

    .line 118
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 75
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mOnCropStateChangedListener:Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment$OnCropStateChangedListener;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;->setOnCropChangedListener(Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment$OnCropStateChangedListener;)V

    .line 78
    const v3, 0x7f120086

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/editor/photo/widgets/TouchTransLinearLayout;

    .line 79
    .local v2, "touchTransLinearLayout":Lcom/miui/gallery/editor/photo/widgets/TouchTransLinearLayout;
    new-instance v3, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$1;

    invoke-direct {v3, p0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$1;-><init>(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)V

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/widgets/TouchTransLinearLayout;->setOnTouchEvent(Lcom/miui/gallery/editor/photo/widgets/TouchTransLinearLayout$OnTouchEvent;)V

    .line 86
    const v3, 0x7f120147

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;

    iput-object v3, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mSeekBar:Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;

    .line 87
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mSeekBar:Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;

    const/16 v4, 0x5a

    invoke-virtual {v3, v4}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;->setMaxValue(I)V

    .line 88
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mSeekBar:Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;

    invoke-virtual {v3, v7}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;->setCurrentValue(I)V

    .line 90
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f04013e

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 91
    .local v0, "content":Landroid/widget/TextView;
    new-instance v3, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;

    .line 93
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b026d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mIndicatorCallback:Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$Callback;

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;-><init>(Landroid/view/View;ILcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$Callback;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iput-object v3, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mBubbleIndicator:Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;

    .line 95
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mSeekBar:Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mBubbleIndicator:Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 97
    const v3, 0x7f120087

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    iput-object v3, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    .line 98
    new-instance v1, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 99
    .local v1, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v1, v7}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 100
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    invoke-virtual {v3, v1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 101
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/widgets/overscroll/HorizontalOverScrollBounceEffectDecorator;->setOverScrollEffect(Landroid/support/v7/widget/RecyclerView;)V

    .line 102
    new-instance v3, Lcom/miui/gallery/editor/photo/app/crop/CropAdapter;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mDataList:Ljava/util/List;

    new-instance v5, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;

    .line 103
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1000a4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;-><init>(I)V

    invoke-direct {v3, v4, v5}, Lcom/miui/gallery/editor/photo/app/crop/CropAdapter;-><init>(Ljava/util/List;Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;)V

    iput-object v3, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mAdapter:Lcom/miui/gallery/editor/photo/app/crop/CropAdapter;

    .line 104
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mAdapter:Lcom/miui/gallery/editor/photo/app/crop/CropAdapter;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 105
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mAdapter:Lcom/miui/gallery/editor/photo/app/crop/CropAdapter;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mOnItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/editor/photo/app/crop/CropAdapter;->setOnItemClickListener(Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;)V

    .line 107
    const v3, 0x7f12002d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mTitle:Landroid/widget/TextView;

    .line 108
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mTitle:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    const v3, 0x7f120148

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->mBottomView:Landroid/view/View;

    .line 111
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->resetBottomBarHeight()V

    .line 112
    return-void
.end method
