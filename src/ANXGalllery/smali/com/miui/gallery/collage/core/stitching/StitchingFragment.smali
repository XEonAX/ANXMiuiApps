.class public Lcom/miui/gallery/collage/core/stitching/StitchingFragment;
.super Lcom/miui/gallery/collage/app/common/AbstractStitchingFragment;
.source "StitchingFragment.java"


# instance fields
.field private mInit:Z

.field private mModelReady:Z

.field private mStitchingLayout:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

.field private mStitchingModel:Lcom/miui/gallery/collage/core/stitching/StitchingModel;

.field private mViewReady:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Lcom/miui/gallery/collage/app/common/AbstractStitchingFragment;-><init>()V

    .line 26
    iput-boolean v0, p0, Lcom/miui/gallery/collage/core/stitching/StitchingFragment;->mModelReady:Z

    .line 27
    iput-boolean v0, p0, Lcom/miui/gallery/collage/core/stitching/StitchingFragment;->mViewReady:Z

    .line 28
    iput-boolean v0, p0, Lcom/miui/gallery/collage/core/stitching/StitchingFragment;->mInit:Z

    return-void
.end method

.method private generateStitchingLayout(Lcom/miui/gallery/collage/core/stitching/StitchingModel;)V
    .locals 3
    .param p1, "stitchingModel"    # Lcom/miui/gallery/collage/core/stitching/StitchingModel;

    .prologue
    .line 56
    iget-object v1, p0, Lcom/miui/gallery/collage/core/stitching/StitchingFragment;->mStitchingLayout:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    iget-object v0, p0, Lcom/miui/gallery/collage/core/stitching/StitchingFragment;->mBitmaps:[Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/miui/gallery/collage/core/stitching/StitchingFragment;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v2, v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->setBitmaps([Landroid/graphics/Bitmap;)V

    .line 57
    iget-object v0, p0, Lcom/miui/gallery/collage/core/stitching/StitchingFragment;->mStitchingLayout:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->setStitchingModel(Lcom/miui/gallery/collage/core/stitching/StitchingModel;)V

    .line 58
    return-void
.end method

.method private refreshLayout()V
    .locals 2

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/miui/gallery/collage/core/stitching/StitchingFragment;->mInit:Z

    if-nez v0, :cond_1

    .line 45
    iget-boolean v0, p0, Lcom/miui/gallery/collage/core/stitching/StitchingFragment;->mModelReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/collage/core/stitching/StitchingFragment;->mBitmapReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/collage/core/stitching/StitchingFragment;->mViewReady:Z

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/miui/gallery/collage/core/stitching/StitchingFragment;->mStitchingModel:Lcom/miui/gallery/collage/core/stitching/StitchingModel;

    invoke-direct {p0, v0}, Lcom/miui/gallery/collage/core/stitching/StitchingFragment;->generateStitchingLayout(Lcom/miui/gallery/collage/core/stitching/StitchingModel;)V

    .line 47
    iget-object v0, p0, Lcom/miui/gallery/collage/core/stitching/StitchingFragment;->mStitchingLayout:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    iget-object v1, p0, Lcom/miui/gallery/collage/core/stitching/StitchingFragment;->mReplaceImageListener:Lcom/miui/gallery/collage/CollageActivity$ReplaceImageListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->setReplaceImageListener(Lcom/miui/gallery/collage/CollageActivity$ReplaceImageListener;)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/collage/core/stitching/StitchingFragment;->mInit:Z

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/collage/core/stitching/StitchingFragment;->mStitchingModel:Lcom/miui/gallery/collage/core/stitching/StitchingModel;

    invoke-direct {p0, v0}, Lcom/miui/gallery/collage/core/stitching/StitchingFragment;->refreshStitchingLayout(Lcom/miui/gallery/collage/core/stitching/StitchingModel;)V

    goto :goto_0
.end method

.method private refreshStitchingLayout(Lcom/miui/gallery/collage/core/stitching/StitchingModel;)V
    .locals 1
    .param p1, "stitchingModel"    # Lcom/miui/gallery/collage/core/stitching/StitchingModel;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/miui/gallery/collage/core/stitching/StitchingFragment;->mStitchingLayout:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->setStitchingModel(Lcom/miui/gallery/collage/core/stitching/StitchingModel;)V

    .line 62
    return-void
.end method


# virtual methods
.method public dismissControlWindow()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/miui/gallery/collage/core/stitching/StitchingFragment;->mStitchingLayout:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/miui/gallery/collage/core/stitching/StitchingFragment;->mStitchingLayout:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->dismissControlWindow()V

    .line 74
    :cond_0
    return-void
.end method

.method public export()Lcom/miui/gallery/collage/core/RenderData;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lcom/miui/gallery/collage/core/stitching/StitchingRenderData;

    iget-object v1, p0, Lcom/miui/gallery/collage/core/stitching/StitchingFragment;->mStitchingLayout:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-virtual {v1}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->generateRenderData()Lcom/miui/gallery/collage/widget/CollageStitchingLayout$RenderData;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/collage/core/stitching/StitchingRenderData;-><init>(Lcom/miui/gallery/collage/widget/CollageStitchingLayout$RenderData;)V

    .line 79
    .local v0, "stitchingRenderData":Lcom/miui/gallery/collage/core/stitching/StitchingRenderData;
    const/16 v1, 0x438

    iput v1, v0, Lcom/miui/gallery/collage/core/stitching/StitchingRenderData;->mWidth:I

    .line 80
    return-object v0
.end method

.method public onBitmapReplace(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "from"    # Landroid/graphics/Bitmap;
    .param p2, "to"    # Landroid/graphics/Bitmap;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/miui/gallery/collage/core/stitching/StitchingFragment;->mStitchingLayout:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->notifyBitmapReplace(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 95
    return-void
.end method

.method protected onBitmapsReceive()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/miui/gallery/collage/core/stitching/StitchingFragment;->refreshLayout()V

    .line 67
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    const v0, 0x7f04005a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onSelectModel(Lcom/miui/gallery/collage/core/stitching/StitchingModel;)V
    .locals 1
    .param p1, "stitchingModel"    # Lcom/miui/gallery/collage/core/stitching/StitchingModel;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/miui/gallery/collage/core/stitching/StitchingFragment;->mStitchingModel:Lcom/miui/gallery/collage/core/stitching/StitchingModel;

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/collage/core/stitching/StitchingFragment;->mModelReady:Z

    .line 101
    invoke-direct {p0}, Lcom/miui/gallery/collage/core/stitching/StitchingFragment;->refreshLayout()V

    .line 102
    return-void
.end method

.method public onSimple()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 86
    .local v0, "simple":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "collage_save_type"

    const-string v2, "Stitching"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v2, "collage_image_size"

    iget-object v1, p0, Lcom/miui/gallery/collage/core/stitching/StitchingFragment;->mBitmaps:[Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v2, "Stitching"

    iget-object v1, p0, Lcom/miui/gallery/collage/core/stitching/StitchingFragment;->mStitchingModel:Lcom/miui/gallery/collage/core/stitching/StitchingModel;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-object v0

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/collage/core/stitching/StitchingFragment;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v1, v1

    goto :goto_0

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/collage/core/stitching/StitchingFragment;->mStitchingModel:Lcom/miui/gallery/collage/core/stitching/StitchingModel;

    iget-object v1, v1, Lcom/miui/gallery/collage/core/stitching/StitchingModel;->name:Ljava/lang/String;

    goto :goto_1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    const v0, 0x7f120138

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    iput-object v0, p0, Lcom/miui/gallery/collage/core/stitching/StitchingFragment;->mStitchingLayout:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/collage/core/stitching/StitchingFragment;->mViewReady:Z

    .line 40
    invoke-direct {p0}, Lcom/miui/gallery/collage/core/stitching/StitchingFragment;->refreshLayout()V

    .line 41
    return-void
.end method
