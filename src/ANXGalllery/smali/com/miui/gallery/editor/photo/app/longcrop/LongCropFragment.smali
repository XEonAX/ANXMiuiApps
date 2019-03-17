.class public Lcom/miui/gallery/editor/photo/app/longcrop/LongCropFragment;
.super Lcom/miui/gallery/editor/photo/app/MenuFragment;
.source "LongCropFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/editor/photo/app/MenuFragment",
        "<",
        "Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractLongCropFragment;",
        "Lcom/miui/gallery/editor/photo/core/SdkProvider",
        "<",
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractLongCropFragment;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mDecodeTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/miui/gallery/editor/photo/core/Effect;->LONG_CROP:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/app/MenuFragment;-><init>(Lcom/miui/gallery/editor/photo/core/Effect;)V

    .line 44
    new-instance v0, Lcom/miui/gallery/editor/photo/app/longcrop/LongCropFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/longcrop/LongCropFragment$1;-><init>(Lcom/miui/gallery/editor/photo/app/longcrop/LongCropFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/longcrop/LongCropFragment;->mDecodeTask:Landroid/os/AsyncTask;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/editor/photo/app/longcrop/LongCropFragment;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/longcrop/LongCropFragment;

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/longcrop/LongCropFragment;->decodeOrigin()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/app/longcrop/LongCropFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/longcrop/LongCropFragment;

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/longcrop/LongCropFragment;->getPreRenderData()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/app/longcrop/LongCropFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/longcrop/LongCropFragment;

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/longcrop/LongCropFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/longcrop/LongCropFragment;->mDecodeTask:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 30
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    const v0, 0x7f04005c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f12002d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/longcrop/LongCropFragment;->mTitle:Landroid/widget/TextView;

    .line 41
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/longcrop/LongCropFragment;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0c0356

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 42
    return-void
.end method
