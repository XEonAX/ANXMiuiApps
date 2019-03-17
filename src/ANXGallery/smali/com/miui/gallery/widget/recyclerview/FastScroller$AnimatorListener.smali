.class Lcom/miui/gallery/widget/recyclerview/FastScroller$AnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/recyclerview/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lcom/miui/gallery/widget/recyclerview/FastScroller;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/widget/recyclerview/FastScroller;)V
    .locals 1

    .prologue
    .line 737
    iput-object p1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller$AnimatorListener;->this$0:Lcom/miui/gallery/widget/recyclerview/FastScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 739
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller$AnimatorListener;->mCanceled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/widget/recyclerview/FastScroller;Lcom/miui/gallery/widget/recyclerview/FastScroller$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/widget/recyclerview/FastScroller;
    .param p2, "x1"    # Lcom/miui/gallery/widget/recyclerview/FastScroller$1;

    .prologue
    .line 737
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/recyclerview/FastScroller$AnimatorListener;-><init>(Lcom/miui/gallery/widget/recyclerview/FastScroller;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 759
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller$AnimatorListener;->mCanceled:Z

    .line 760
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 744
    iget-boolean v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller$AnimatorListener;->mCanceled:Z

    if-eqz v0, :cond_0

    .line 745
    iput-boolean v2, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller$AnimatorListener;->mCanceled:Z

    .line 755
    :goto_0
    return-void

    .line 748
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller$AnimatorListener;->this$0:Lcom/miui/gallery/widget/recyclerview/FastScroller;

    invoke-static {v0}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->access$200(Lcom/miui/gallery/widget/recyclerview/FastScroller;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 749
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller$AnimatorListener;->this$0:Lcom/miui/gallery/widget/recyclerview/FastScroller;

    invoke-static {v0, v2}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->access$302(Lcom/miui/gallery/widget/recyclerview/FastScroller;I)I

    .line 750
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller$AnimatorListener;->this$0:Lcom/miui/gallery/widget/recyclerview/FastScroller;

    invoke-static {v0, v2}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->access$400(Lcom/miui/gallery/widget/recyclerview/FastScroller;I)V

    goto :goto_0

    .line 752
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller$AnimatorListener;->this$0:Lcom/miui/gallery/widget/recyclerview/FastScroller;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->access$302(Lcom/miui/gallery/widget/recyclerview/FastScroller;I)I

    .line 753
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller$AnimatorListener;->this$0:Lcom/miui/gallery/widget/recyclerview/FastScroller;

    invoke-static {v0}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->access$500(Lcom/miui/gallery/widget/recyclerview/FastScroller;)V

    goto :goto_0
.end method
