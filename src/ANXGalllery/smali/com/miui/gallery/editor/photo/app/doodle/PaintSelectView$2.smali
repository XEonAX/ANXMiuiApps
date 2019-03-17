.class Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$2;
.super Ljava/lang/Object;
.source "PaintSelectView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->getDoodlePaintItemSizeAnim(Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;[F)Landroid/animation/ValueAnimator;
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
    .line 199
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$2;->this$0:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;

    iput-object p2, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$2;->val$doodlePaintItem:Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 202
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$2;->val$doodlePaintItem:Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->setScale(F)V

    .line 203
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$2;->this$0:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->invalidate()V

    .line 204
    return-void
.end method
