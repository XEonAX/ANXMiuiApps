.class Lcom/miui/gallery/widget/recyclerview/FastScroller$AnimatorUpdater;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/recyclerview/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/widget/recyclerview/FastScroller;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/widget/recyclerview/FastScroller;)V
    .locals 0

    .prologue
    .line 763
    iput-object p1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller$AnimatorUpdater;->this$0:Lcom/miui/gallery/widget/recyclerview/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/widget/recyclerview/FastScroller;Lcom/miui/gallery/widget/recyclerview/FastScroller$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/widget/recyclerview/FastScroller;
    .param p2, "x1"    # Lcom/miui/gallery/widget/recyclerview/FastScroller$1;

    .prologue
    .line 763
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/recyclerview/FastScroller$AnimatorUpdater;-><init>(Lcom/miui/gallery/widget/recyclerview/FastScroller;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 767
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 768
    .local v1, "animatedValue":F
    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 769
    .local v0, "alpha":I
    iget-object v2, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller$AnimatorUpdater;->this$0:Lcom/miui/gallery/widget/recyclerview/FastScroller;

    invoke-static {v2}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->access$600(Lcom/miui/gallery/widget/recyclerview/FastScroller;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 770
    iget-object v2, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller$AnimatorUpdater;->this$0:Lcom/miui/gallery/widget/recyclerview/FastScroller;

    invoke-static {v2}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->access$700(Lcom/miui/gallery/widget/recyclerview/FastScroller;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 771
    iget-object v2, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller$AnimatorUpdater;->this$0:Lcom/miui/gallery/widget/recyclerview/FastScroller;

    invoke-static {v2}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->access$700(Lcom/miui/gallery/widget/recyclerview/FastScroller;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    .line 773
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller$AnimatorUpdater;->this$0:Lcom/miui/gallery/widget/recyclerview/FastScroller;

    invoke-static {v2}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->access$800(Lcom/miui/gallery/widget/recyclerview/FastScroller;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 774
    iget-object v2, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller$AnimatorUpdater;->this$0:Lcom/miui/gallery/widget/recyclerview/FastScroller;

    invoke-static {v2}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->access$800(Lcom/miui/gallery/widget/recyclerview/FastScroller;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 776
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller$AnimatorUpdater;->this$0:Lcom/miui/gallery/widget/recyclerview/FastScroller;

    sub-float v3, v5, v1

    iget-object v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller$AnimatorUpdater;->this$0:Lcom/miui/gallery/widget/recyclerview/FastScroller;

    invoke-static {v4}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->access$1000(Lcom/miui/gallery/widget/recyclerview/FastScroller;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->access$902(Lcom/miui/gallery/widget/recyclerview/FastScroller;I)I

    .line 777
    iget-object v2, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller$AnimatorUpdater;->this$0:Lcom/miui/gallery/widget/recyclerview/FastScroller;

    invoke-static {v2}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->access$1100(Lcom/miui/gallery/widget/recyclerview/FastScroller;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 778
    iget-object v2, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller$AnimatorUpdater;->this$0:Lcom/miui/gallery/widget/recyclerview/FastScroller;

    iget-object v3, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller$AnimatorUpdater;->this$0:Lcom/miui/gallery/widget/recyclerview/FastScroller;

    invoke-static {v3}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->access$900(Lcom/miui/gallery/widget/recyclerview/FastScroller;)I

    move-result v3

    neg-int v3, v3

    invoke-static {v2, v3}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->access$902(Lcom/miui/gallery/widget/recyclerview/FastScroller;I)I

    .line 781
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller$AnimatorUpdater;->this$0:Lcom/miui/gallery/widget/recyclerview/FastScroller;

    invoke-static {v2}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->access$1200(Lcom/miui/gallery/widget/recyclerview/FastScroller;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 782
    iget-object v2, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller$AnimatorUpdater;->this$0:Lcom/miui/gallery/widget/recyclerview/FastScroller;

    invoke-static {v2}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->access$1300(Lcom/miui/gallery/widget/recyclerview/FastScroller;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 783
    iget-object v2, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller$AnimatorUpdater;->this$0:Lcom/miui/gallery/widget/recyclerview/FastScroller;

    invoke-static {v2}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->access$1300(Lcom/miui/gallery/widget/recyclerview/FastScroller;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    .line 785
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller$AnimatorUpdater;->this$0:Lcom/miui/gallery/widget/recyclerview/FastScroller;

    invoke-static {v2}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->access$1400(Lcom/miui/gallery/widget/recyclerview/FastScroller;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 786
    iget-object v2, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller$AnimatorUpdater;->this$0:Lcom/miui/gallery/widget/recyclerview/FastScroller;

    invoke-static {v2}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->access$1400(Lcom/miui/gallery/widget/recyclerview/FastScroller;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 788
    :cond_4
    iget-object v2, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller$AnimatorUpdater;->this$0:Lcom/miui/gallery/widget/recyclerview/FastScroller;

    sub-float v3, v5, v1

    iget-object v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller$AnimatorUpdater;->this$0:Lcom/miui/gallery/widget/recyclerview/FastScroller;

    invoke-static {v4}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->access$1600(Lcom/miui/gallery/widget/recyclerview/FastScroller;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->access$1502(Lcom/miui/gallery/widget/recyclerview/FastScroller;I)I

    .line 790
    :cond_5
    iget-object v2, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller$AnimatorUpdater;->this$0:Lcom/miui/gallery/widget/recyclerview/FastScroller;

    invoke-static {v2}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->access$500(Lcom/miui/gallery/widget/recyclerview/FastScroller;)V

    .line 791
    return-void
.end method
