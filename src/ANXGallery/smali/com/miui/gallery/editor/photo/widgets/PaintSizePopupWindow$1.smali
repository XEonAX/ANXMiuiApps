.class Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow$1;
.super Ljava/lang/Object;
.source "PaintSizePopupWindow.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow$1;->this$0:Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    .line 48
    .local v0, "animatedValue":Ljava/lang/Object;
    check-cast v0, Ljava/lang/Float;

    .end local v0    # "animatedValue":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 49
    .local v1, "current":F
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow$1;->this$0:Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 50
    return-void
.end method
