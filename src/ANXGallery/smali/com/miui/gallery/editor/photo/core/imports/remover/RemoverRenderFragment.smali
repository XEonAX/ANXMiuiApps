.class public Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;
.super Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractRemoverFragment;
.source "RemoverRenderFragment.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/app/RenderRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment$ProgressRunnable;,
        Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment$CustomCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$RemoverCallback;

.field private mCanBackToOrigin:Z

.field private mCompareButton:Landroid/widget/Button;

.field private mCurrIterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mMenuUpdateListener:Lcom/miui/gallery/editor/photo/widgets/MenuUpdateListener;

.field private mPaintSize:F

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressRunnable:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment$ProgressRunnable;

.field private mRecordCurr:I

.field private mRecordHead:I

.field private mRecordListTail:I

.field private mRecordTail:I

.field private mRemoverGestureView:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;

.field private mRemoverPaintData:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;

.field private mRemoverPaintDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractRemoverFragment;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRemoverPaintDataList:Ljava/util/List;

    .line 40
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRemoverPaintDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mCurrIterator:Ljava/util/ListIterator;

    .line 44
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRecordHead:I

    .line 46
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRecordCurr:I

    .line 52
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment$CustomCallback;

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment$CustomCallback;-><init>(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment$1;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mHandler:Landroid/os/Handler;

    .line 53
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment$ProgressRunnable;

    invoke-direct {v0, p0, v2}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment$ProgressRunnable;-><init>(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment$1;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mProgressRunnable:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment$ProgressRunnable;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mCanBackToOrigin:Z

    .line 151
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment$2;-><init>(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mCallback:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$RemoverCallback;

    .line 268
    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;

    .prologue
    .line 27
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRecordHead:I

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;)Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRemoverGestureView:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mCompareButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;)Lcom/miui/gallery/editor/photo/widgets/MenuUpdateListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mMenuUpdateListener:Lcom/miui/gallery/editor/photo/widgets/MenuUpdateListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;)Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment$ProgressRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mProgressRunnable:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment$ProgressRunnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$802(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;)Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRemoverPaintData:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;

    return-object p1
.end method

.method static synthetic access$900(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;

    .prologue
    .line 27
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRecordCurr:I

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRemoverGestureView:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->onClear()V

    .line 123
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRemoverPaintDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRemoverPaintDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextRecord()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 240
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRecordCurr:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRecordCurr:I

    .line 242
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mCurrIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mCurrIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 244
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mCurrIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRecordListTail:I

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRemoverGestureView:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->renderNextBuffer()V

    .line 249
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mMenuUpdateListener:Lcom/miui/gallery/editor/photo/widgets/MenuUpdateListener;

    if-eqz v0, :cond_1

    .line 250
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mMenuUpdateListener:Lcom/miui/gallery/editor/photo/widgets/MenuUpdateListener;

    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRecordCurr:I

    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRecordHead:I

    if-eq v0, v4, :cond_2

    move v0, v1

    :goto_0
    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRecordCurr:I

    iget v5, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRecordTail:I

    if-eq v4, v5, :cond_3

    :goto_1
    invoke-interface {v3, v0, v1}, Lcom/miui/gallery/editor/photo/widgets/MenuUpdateListener;->onMenuUpdated(ZZ)V

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mCompareButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 253
    return-void

    :cond_2
    move v0, v2

    .line 250
    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractRemoverFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-static {}, Lcom/miui/gallery/editor/photo/app/remover/Inpaint;->initialize()Z

    .line 61
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 65
    const v3, 0x7f04011b

    invoke-virtual {p1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 66
    .local v0, "layout":Landroid/widget/FrameLayout;
    const v3, 0x7f120267

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;

    iput-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRemoverGestureView:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;

    .line 67
    const v3, 0x7f120017

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 68
    const v3, 0x7f120154

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mCompareButton:Landroid/widget/Button;

    .line 69
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRemoverGestureView:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 70
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRemoverGestureView:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mCallback:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$RemoverCallback;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->setRemoverCallback(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$RemoverCallback;)V

    .line 71
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRemoverGestureView:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;

    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mPaintSize:F

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->setStrokeSize(I)Z

    .line 73
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 74
    .local v1, "paddingLeft":I
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 75
    .local v2, "paddingTop":I
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRemoverGestureView:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;

    invoke-virtual {v3, v1, v2, v1, v5}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->setPadding(IIII)V

    .line 77
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mCompareButton:Landroid/widget/Button;

    new-instance v4, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment$1;

    invoke-direct {v4, p0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment$1;-><init>(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 90
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mCanBackToOrigin:Z

    .line 91
    return-object v0
.end method

.method protected onExport()Lcom/miui/gallery/editor/photo/core/RenderData;
    .locals 3

    .prologue
    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v1, "removerPaintDataList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;>;"
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRemoverPaintDataList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRemoverPaintDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRecordListTail:I

    if-gt v0, v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRemoverPaintDataList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "i":I
    :cond_0
    new-instance v2, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderData;

    invoke-direct {v2, v1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderData;-><init>(Ljava/util/List;)V

    return-object v2
.end method

.method protected onSample()Ljava/util/List;
    .locals 2
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
    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v0, "sampleValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRecordListTail:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    return-object v0
.end method

.method public previousRecord()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 216
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRecordCurr:I

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRecordCurr:I

    .line 217
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRecordCurr:I

    if-gez v0, :cond_0

    .line 219
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRecordCurr:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRecordCurr:I

    .line 221
    :cond_0
    const-string v0, "RemoverRenderFragment"

    const-string v3, "previousRecord  mRecordCurr : %d"

    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRecordCurr:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 223
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mCurrIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mCurrIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mCurrIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRecordListTail:I

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRemoverGestureView:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->renderPreviousBuffer()V

    .line 230
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mMenuUpdateListener:Lcom/miui/gallery/editor/photo/widgets/MenuUpdateListener;

    if-eqz v0, :cond_2

    .line 231
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mMenuUpdateListener:Lcom/miui/gallery/editor/photo/widgets/MenuUpdateListener;

    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRecordCurr:I

    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRecordHead:I

    if-eq v0, v4, :cond_4

    move v0, v1

    :goto_0
    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRecordCurr:I

    iget v5, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRecordTail:I

    if-eq v4, v5, :cond_5

    :goto_1
    invoke-interface {v3, v0, v1}, Lcom/miui/gallery/editor/photo/widgets/MenuUpdateListener;->onMenuUpdated(ZZ)V

    .line 233
    :cond_2
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRecordCurr:I

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mCanBackToOrigin:Z

    if-eqz v0, :cond_3

    .line 234
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mCompareButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 236
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 231
    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_1
.end method

.method public recordCurrent()V
    .locals 3

    .prologue
    .line 189
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRecordCurr:I

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mCanBackToOrigin:Z

    .line 192
    :cond_0
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRecordCurr:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRecordCurr:I

    .line 193
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRecordCurr:I

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRecordTail:I

    .line 194
    const-string v0, "RemoverRenderFragment"

    const-string v1, "recordCurrent  mRecordCurr : %d"

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRecordCurr:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRecordCurr:I

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRecordHead:I

    if-ne v0, v1, :cond_1

    .line 198
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRecordCurr:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRecordHead:I

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mCurrIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mCurrIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 204
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mCurrIterator:Ljava/util/ListIterator;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRemoverPaintData:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 205
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mCurrIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRecordListTail:I

    .line 211
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRemoverGestureView:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->writeRecordFile()V

    .line 212
    return-void

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mCurrIterator:Ljava/util/ListIterator;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRemoverPaintData:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mCurrIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRecordListTail:I

    goto :goto_0
.end method

.method public setMenuUpdateListener(Lcom/miui/gallery/editor/photo/widgets/MenuUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/editor/photo/widgets/MenuUpdateListener;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mMenuUpdateListener:Lcom/miui/gallery/editor/photo/widgets/MenuUpdateListener;

    .line 185
    return-void
.end method

.method public setPaintSize(F)V
    .locals 2
    .param p1, "paintSize"    # F

    .prologue
    .line 132
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mPaintSize:F

    .line 133
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRemoverGestureView:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRemoverGestureView:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->setStrokeSize(I)Z

    .line 136
    :cond_0
    return-void
.end method

.method public setRemoverData(Lcom/miui/gallery/editor/photo/core/common/model/RemoverData;)V
    .locals 2
    .param p1, "removerData"    # Lcom/miui/gallery/editor/photo/core/common/model/RemoverData;

    .prologue
    .line 140
    if-nez p1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget v0, p1, Lcom/miui/gallery/editor/photo/core/common/model/RemoverData;->mType:I

    if-nez v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRemoverGestureView:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;->FREE:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->setElementType(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;)Z

    goto :goto_0

    .line 146
    :cond_2
    iget v0, p1, Lcom/miui/gallery/editor/photo/core/common/model/RemoverData;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->mRemoverGestureView:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;->LINE:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->setElementType(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$ElementType;)Z

    goto :goto_0
.end method
