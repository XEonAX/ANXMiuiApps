.class public Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;
.super Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;
.source "MiuiBeautyRenderFragment.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/app/RenderRecord;
.implements Lcom/miui/gallery/editor/photo/core/GLFragment;
.implements Lcom/miui/gallery/editor/photo/widgets/BeautyImageView$InitRenderCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment$OnBeautyProcessListener;,
        Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment$RenderTask;,
        Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment$BeautyContext;
    }
.end annotation


# instance fields
.field private mBeautyParameterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/miui/filtersdk/beauty/BeautyParameterType;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private mBeautyParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/miui/filtersdk/beauty/BeautyParameterType;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mBeautyProgressBar:Landroid/widget/ProgressBar;

.field private mCompareBtn:Landroid/widget/Button;

.field private mCompareOrigin:Z

.field private mCurrIterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/miui/filtersdk/beauty/BeautyParameterType;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private mGLContext:Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment$BeautyContext;

.field private mOnBeautyProcessListener:Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment$OnBeautyProcessListener;

.field private mOriginalImageView:Landroid/widget/ImageView;

.field private mPreProcessBitmap:Landroid/graphics/Bitmap;

.field private mPreviewContainer:Landroid/widget/FrameLayout;

.field private mRecordHead:I

.field private mRecordTail:I

.field mRenderView:Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;

.field private mShowProgressDelay:Z

.field private mStrokeBoardView:Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;

.field private mToBeCompared:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;-><init>()V

    .line 36
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment$BeautyContext;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment$BeautyContext;-><init>(Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment$1;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mGLContext:Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment$BeautyContext;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mShowProgressDelay:Z

    .line 316
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;)Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment$BeautyContext;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mGLContext:Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment$BeautyContext;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mShowProgressDelay:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mBeautyProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mOriginalImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mOriginalImageView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mCompareOrigin:Z

    return v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mPreProcessBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mToBeCompared:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mPreviewContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mCompareBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mBeautyParameters:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;)Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment$OnBeautyProcessListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mOnBeautyProcessListener:Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment$OnBeautyProcessListener;

    return-object v0
.end method


# virtual methods
.method public add(Lcom/miui/gallery/editor/photo/core/Metadata;Ljava/lang/Object;)V
    .locals 3
    .param p1, "effect"    # Lcom/miui/gallery/editor/photo/core/Metadata;
    .param p2, "param"    # Ljava/lang/Object;

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "beauayParam":Ljava/util/Map;, "Ljava/util/Map<Lcom/miui/filtersdk/beauty/BeautyParameterType;Ljava/lang/Float;>;"
    instance-of v1, p2, Ljava/util/Map;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 91
    check-cast v0, Ljava/util/Map;

    .line 93
    :cond_0
    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mBeautyParameters:Ljava/util/Map;

    .line 94
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mRenderView:Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mBeautyParameters:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->updateBeautyProcessor(Ljava/util/Map;)V

    .line 95
    return-void
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->clearAllRecords()V

    .line 134
    return-void
.end method

.method public clearAllRecords()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mRenderView:Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->clearAllRecords()Z

    .line 235
    return-void
.end method

.method public enableComparison(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 178
    if-eqz p1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mCompareBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mCompareBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->bringToFront()V

    .line 181
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mCompareBtn:Landroid/widget/Button;

    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment$2;-><init>(Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mCompareBtn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public getGLContext()Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mGLContext:Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment$BeautyContext;

    return-object v0
.end method

.method public isBeautyParamWorked()Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mBeautyParameters:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isComparisonEnable()Z
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mCompareBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mBeautyParameterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public nextRecord()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mCurrIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mCurrIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 227
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mCurrIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mRecordTail:I

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mRenderView:Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->renderNextBuffer()V

    .line 230
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, -0x1

    .line 58
    invoke-super {p0, p1}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mBeautyParameterList:Ljava/util/List;

    .line 60
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mBeautyParameterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mCurrIterator:Ljava/util/ListIterator;

    .line 61
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mRecordHead:I

    .line 62
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mRecordTail:I

    .line 63
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 67
    const v1, 0x7f0400af

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 68
    .local v0, "layout":Landroid/view/ViewGroup;
    const v1, 0x7f1201b0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mRenderView:Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;

    .line 69
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mRenderView:Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;

    invoke-virtual {v1, p0}, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->setInitRenderCallback(Lcom/miui/gallery/editor/photo/widgets/BeautyImageView$InitRenderCallback;)V

    .line 70
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEngine;->preProcessBitmapForPreview(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mPreProcessBitmap:Landroid/graphics/Bitmap;

    .line 71
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mPreProcessBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mPreProcessBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mToBeCompared:Landroid/graphics/Bitmap;

    .line 72
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mRenderView:Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mPreProcessBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->setPicData(Landroid/graphics/Bitmap;)V

    .line 73
    iput-boolean v3, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mCompareOrigin:Z

    .line 74
    const v1, 0x7f120139

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mPreviewContainer:Landroid/widget/FrameLayout;

    .line 75
    const v1, 0x7f120154

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mCompareBtn:Landroid/widget/Button;

    .line 76
    const v1, 0x7f1201b1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mBeautyProgressBar:Landroid/widget/ProgressBar;

    .line 77
    const v1, 0x7f1201b2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mStrokeBoardView:Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;

    .line 78
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mStrokeBoardView:Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mPreProcessBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 79
    return-object v0
.end method

.method protected onExport()Lcom/miui/gallery/editor/photo/core/RenderData;
    .locals 4

    .prologue
    .line 120
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mBeautyParameterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData;-><init>(Ljava/util/Map;)V

    .line 128
    :cond_0
    return-object v1

    .line 124
    :cond_1
    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mBeautyParameterList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-direct {v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData;-><init>(Ljava/util/Map;)V

    .line 125
    .local v1, "miuiBeautyRenderData":Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mRecordTail:I

    if-gt v0, v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mBeautyParameterList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData;->addParams(Ljava/util/Map;)V

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onRenderFinish()V
    .locals 4

    .prologue
    .line 143
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mRenderView:Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;

    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment$1;-><init>(Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;)V

    const-wide/16 v2, 0x384

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 149
    return-void
.end method

.method protected onSample()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public previousRecord()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mCurrIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mCurrIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 218
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mCurrIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mRecordTail:I

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mRenderView:Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->renderPreviousBuffer()V

    .line 221
    return-void
.end method

.method public recordCurrent()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mCurrIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mCurrIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 242
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mCurrIterator:Ljava/util/ListIterator;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mBeautyParameters:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 243
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mCurrIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mRecordTail:I

    .line 249
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mRenderView:Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->writeRecordFile()V

    .line 250
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mRenderView:Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mToBeCompared:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->getBmpFromCurrBuffer(Landroid/graphics/Bitmap;)V

    .line 251
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mCurrIterator:Ljava/util/ListIterator;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mBeautyParameters:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 246
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mCurrIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mRecordTail:I

    goto :goto_0
.end method

.method public remove(Lcom/miui/gallery/editor/photo/core/Metadata;)V
    .locals 0
    .param p1, "effect"    # Lcom/miui/gallery/editor/photo/core/Metadata;

    .prologue
    .line 99
    return-void
.end method

.method public render()V
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment$RenderTask;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment$RenderTask;-><init>(Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment$RenderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 106
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 85
    return-void
.end method

.method public setCompareOrigin(Z)V
    .locals 0
    .param p1, "compareOrigin"    # Z

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mCompareOrigin:Z

    .line 175
    return-void
.end method

.method public setOnBeautyProcessListener(Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment$OnBeautyProcessListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment$OnBeautyProcessListener;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mOnBeautyProcessListener:Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment$OnBeautyProcessListener;

    .line 314
    return-void
.end method

.method public setShowProgressDelay(Z)V
    .locals 0
    .param p1, "showProgressDelay"    # Z

    .prologue
    .line 323
    iput-boolean p1, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->mShowProgressDelay:Z

    .line 324
    return-void
.end method
