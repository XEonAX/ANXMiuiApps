.class public Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;
.super Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;
.source "CropFragment.java"


# instance fields
.field private mAspectRatio:Lcom/miui/gallery/editor/photo/core/common/model/CropData$AspectRatio;

.field private mAutoCropDegree:F

.field private mCanvasRotateTimes:I

.field private mCrop:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

.field private mCropTips:Landroid/view/View;

.field private mCropTipsHandler:Landroid/os/Handler;

.field private mEditorView:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;

.field private mMirrored:Z

.field private mOnCropChangedListener:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$OnCropChangedListener;

.field private mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mTuningDegree:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;-><init>()V

    .line 227
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment$3;-><init>(Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mOnCropChangedListener:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$OnCropChangedListener;

    .line 239
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment$4;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment$4;-><init>(Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->showAnimator(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mCropTips:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;)Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mCrop:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    return-object v0
.end method

.method private showAnimator(Z)V
    .locals 8
    .param p1, "isShow"    # Z

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 203
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mCropTips:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v6, v1, [F

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    aput v1, v6, v7

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    :goto_1
    aput v3, v6, v1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 204
    .local v0, "objectAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 205
    new-instance v1, Lmiui/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 206
    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment$2;-><init>(Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 224
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 225
    return-void

    .end local v0    # "objectAnimator":Landroid/animation/ObjectAnimator;
    :cond_0
    move v1, v3

    .line 203
    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mCrop:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->reset()V

    .line 117
    return-void
.end method

.method public doTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mEditorView:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 59
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mEditorView:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public finishTuning()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mCrop:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->finishRotate()V

    .line 174
    return-void
.end method

.method public isEmpty()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 141
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mCrop:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-virtual {v5}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getSampleSize()Landroid/graphics/RectF;

    move-result-object v2

    .line 142
    .local v2, "sampleSize":Landroid/graphics/RectF;
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mCrop:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-virtual {v5}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getCroppedSize()Landroid/graphics/RectF;

    move-result-object v0

    .line 143
    .local v0, "cropSize":Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 144
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    if-eq v5, v6, :cond_1

    :cond_0
    move v1, v4

    .line 145
    .local v1, "cropped":Z
    :goto_0
    iget-boolean v5, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mMirrored:Z

    if-nez v5, :cond_2

    iget v5, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mTuningDegree:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_2

    iget v5, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mCanvasRotateTimes:I

    rem-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_2

    if-nez v1, :cond_2

    :goto_1
    return v4

    .end local v1    # "cropped":Z
    :cond_1
    move v1, v3

    .line 144
    goto :goto_0

    .restart local v1    # "cropped":Z
    :cond_2
    move v4, v3

    .line 145
    goto :goto_1
.end method

.method protected onAutoCrop(F)V
    .locals 4
    .param p1, "degree"    # F

    .prologue
    .line 184
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mCrop:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->setRotateDegreeWithAnimation(F)V

    .line 185
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mTuningDegree:F

    .line 186
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mAutoCropDegree:F

    .line 188
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$PhotoEditor;->isCropTipsShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$PhotoEditor;->addCropTipsShowTimes()V

    .line 190
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->showAnimator(Z)V

    .line 191
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment$1;-><init>(Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mCropTipsHandler:Landroid/os/Handler;

    .line 198
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mCropTipsHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 200
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 44
    const v1, 0x7f040064

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 45
    .local v0, "layout":Landroid/view/ViewGroup;
    const v1, 0x7f120149

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mEditorView:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;

    .line 46
    const v1, 0x7f12014a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mCropTips:Landroid/view/View;

    .line 47
    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mCrop:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    .line 48
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mEditorView:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mCrop:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->install(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;)V

    .line 49
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mEditorView:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;

    invoke-virtual {v1, v3}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->setDrawBoundLine(Z)V

    .line 50
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mEditorView:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 51
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mEditorView:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 52
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mCrop:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mOnCropChangedListener:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$OnCropChangedListener;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->setOnCropChangedListener(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$OnCropChangedListener;)V

    .line 53
    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;->onDestroyView()V

    .line 65
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mEditorView:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 66
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mCropTipsHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mCropTipsHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 69
    :cond_0
    return-void
.end method

.method protected onDoMirror()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mCrop:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mirror()V

    .line 157
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mMirrored:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mMirrored:Z

    .line 158
    return-void

    .line 157
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDoRotate()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mCrop:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->rotate()V

    .line 163
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mCanvasRotateTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mCanvasRotateTimes:I

    .line 164
    return-void
.end method

.method public onExport()Lcom/miui/gallery/editor/photo/core/RenderData;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropStateData;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mCrop:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->export()Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/crop/CropStateData;-><init>(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;)V

    return-object v0
.end method

.method protected onSample()Ljava/util/List;
    .locals 9
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
    .line 78
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v2, "sample":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v4, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mMirrored:Z

    if-eqz v4, :cond_0

    .line 80
    const-string v4, "mirror"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_0
    const/4 v1, 0x0

    .line 84
    .local v1, "rotated":Z
    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mTuningDegree:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    .line 85
    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mAutoCropDegree:F

    iget v5, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mTuningDegree:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_6

    .line 86
    const-string v4, "rotate_auto"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :goto_0
    const/4 v1, 0x1

    .line 93
    :cond_1
    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mCanvasRotateTimes:I

    rem-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    .line 94
    const-string v4, "rotate_canvas"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    const/4 v1, 0x1

    .line 98
    :cond_2
    if-eqz v1, :cond_3

    .line 99
    const-string v4, "rotate"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_3
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mCrop:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getSampleSize()Landroid/graphics/RectF;

    move-result-object v3

    .line 103
    .local v3, "sampleSize":Landroid/graphics/RectF;
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mCrop:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getCroppedSize()Landroid/graphics/RectF;

    move-result-object v0

    .line 104
    .local v0, "cropSize":Landroid/graphics/RectF;
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 105
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    if-eq v4, v5, :cond_5

    .line 106
    :cond_4
    const-string v4, "crop"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_5
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "aspect_ratio: %s"

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mAspectRatio:Lcom/miui/gallery/editor/photo/core/common/model/CropData$AspectRatio;

    if-nez v4, :cond_7

    const-string v4, "free"

    :goto_1
    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    return-object v2

    .line 88
    .end local v0    # "cropSize":Landroid/graphics/RectF;
    .end local v3    # "sampleSize":Landroid/graphics/RectF;
    :cond_6
    const-string v4, "rotate_manual"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    .restart local v0    # "cropSize":Landroid/graphics/RectF;
    .restart local v3    # "sampleSize":Landroid/graphics/RectF;
    :cond_7
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mAspectRatio:Lcom/miui/gallery/editor/photo/core/common/model/CropData$AspectRatio;

    iget-object v4, v4, Lcom/miui/gallery/editor/photo/core/common/model/CropData$AspectRatio;->name:Ljava/lang/String;

    goto :goto_1
.end method

.method protected onSetAspectRatio(Lcom/miui/gallery/editor/photo/core/common/model/CropData$AspectRatio;)V
    .locals 3
    .param p1, "ratio"    # Lcom/miui/gallery/editor/photo/core/common/model/CropData$AspectRatio;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mCrop:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    iget v1, p1, Lcom/miui/gallery/editor/photo/core/common/model/CropData$AspectRatio;->width:I

    iget v2, p1, Lcom/miui/gallery/editor/photo/core/common/model/CropData$AspectRatio;->height:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->setFixedAspectRatio(II)V

    .line 151
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mAspectRatio:Lcom/miui/gallery/editor/photo/core/common/model/CropData$AspectRatio;

    .line 152
    return-void
.end method

.method protected onTurning(F)V
    .locals 1
    .param p1, "degree"    # F

    .prologue
    .line 178
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mCrop:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->setRotateDegree(F)V

    .line 179
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mTuningDegree:F

    .line 180
    return-void
.end method

.method public prepareTuning()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mCrop:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->beginRotate()V

    .line 169
    return-void
.end method

.method public restore()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 121
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;->restore()V

    .line 122
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mEditorView:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 123
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mCrop:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->reset()V

    .line 125
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mCropTipsHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mCropTipsHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 127
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mCropTipsHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 129
    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 134
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mEditorView:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->mEditorView:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 137
    :cond_0
    return-void
.end method
