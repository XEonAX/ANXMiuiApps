.class Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$1;
.super Ljava/lang/Object;
.source "PaintSelectView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->doSelectAnimator(Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;

.field final synthetic val$doodlePaintItem:Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$1;->this$0:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;

    iput-object p2, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$1;->val$doodlePaintItem:Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 185
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 178
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$1;->this$0:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$1;->val$doodlePaintItem:Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->access$500(Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;[F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 179
    .local v0, "valueAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 180
    return-void

    .line 178
    :array_0
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 190
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 174
    return-void
.end method
