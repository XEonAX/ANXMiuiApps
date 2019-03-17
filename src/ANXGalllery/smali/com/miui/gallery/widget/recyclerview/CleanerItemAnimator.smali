.class public Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;
.super Landroid/support/v7/widget/SimpleItemAnimator;
.source "CleanerItemAnimator.java"


# instance fields
.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingMoveHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingRemoveHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v7/widget/SimpleItemAnimator;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;->mPendingRemoveHolders:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;->mPendingMoveHolders:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Lmiui/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseInOutInterpolator;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method private animateMoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$1;-><init>(Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/CompatHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    return-void
.end method

.method private animateRemoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$2;-><init>(Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/CompatHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 106
    return-void
.end method


# virtual methods
.method public animateAdd(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 6
    .param p1, "oldHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "newHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "fromX"    # I
    .param p4, "fromY"    # I
    .param p5, "toX"    # I
    .param p6, "toY"    # I

    .prologue
    .line 140
    if-ne p1, p2, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 143
    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;->animateMove(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    .line 145
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public animateMove(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 4
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .prologue
    .line 116
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 117
    .local v1, "view":Landroid/view/View;
    int-to-float v2, p3

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    add-float/2addr v2, v3

    float-to-int p3, v2

    .line 118
    sub-int v0, p5, p3

    .line 119
    .local v0, "delta":I
    neg-int v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 120
    iget-object v2, p0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;->mPendingMoveHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    const/4 v2, 0x1

    return v2
.end method

.method public animateRemove(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;->mPendingRemoveHolders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public endAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 150
    return-void
.end method

.method public endAnimations()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;->mPendingMoveHolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;->mPendingRemoveHolders:Ljava/util/ArrayList;

    .line 127
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 128
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 129
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public runPendingAnimations()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 34
    iget-object v5, p0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;->mPendingRemoveHolders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    move v2, v3

    .line 35
    .local v2, "isRemove":Z
    :goto_0
    iget-object v5, p0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;->mPendingMoveHolders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    move v1, v3

    .line 37
    .local v1, "isMove":Z
    :goto_1
    if-eqz v2, :cond_3

    .line 38
    iget-object v3, p0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;->mPendingRemoveHolders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 39
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-direct {p0, v0}, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;->animateRemoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_2

    .end local v0    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v1    # "isMove":Z
    .end local v2    # "isRemove":Z
    :cond_0
    move v2, v4

    .line 34
    goto :goto_0

    .restart local v2    # "isRemove":Z
    :cond_1
    move v1, v4

    .line 35
    goto :goto_1

    .line 41
    .restart local v1    # "isMove":Z
    :cond_2
    iget-object v3, p0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;->mPendingRemoveHolders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 44
    :cond_3
    if-eqz v1, :cond_5

    .line 45
    iget-object v3, p0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;->mPendingMoveHolders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 46
    .restart local v0    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-direct {p0, v0}, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;->animateMoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_3

    .line 48
    .end local v0    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_4
    iget-object v3, p0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;->mPendingMoveHolders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 50
    :cond_5
    return-void
.end method
