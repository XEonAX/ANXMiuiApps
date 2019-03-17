.class Luk/co/senab/photoview/gestures/FroyoGestureDetector$1;
.super Ljava/lang/Object;
.source "FroyoGestureDetector.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luk/co/senab/photoview/gestures/FroyoGestureDetector;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luk/co/senab/photoview/gestures/FroyoGestureDetector;


# direct methods
.method constructor <init>(Luk/co/senab/photoview/gestures/FroyoGestureDetector;)V
    .locals 0
    .param p1, "this$0"    # Luk/co/senab/photoview/gestures/FroyoGestureDetector;

    .prologue
    .line 39
    iput-object p1, p0, Luk/co/senab/photoview/gestures/FroyoGestureDetector$1;->this$0:Luk/co/senab/photoview/gestures/FroyoGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 45
    .local v0, "scaleFactor":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    :cond_0
    const/4 v1, 0x0

    .line 50
    :goto_0
    return v1

    .line 48
    :cond_1
    iget-object v1, p0, Luk/co/senab/photoview/gestures/FroyoGestureDetector$1;->this$0:Luk/co/senab/photoview/gestures/FroyoGestureDetector;

    iget-object v1, v1, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mListener:Luk/co/senab/photoview/gestures/OnGestureListener;

    .line 49
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    .line 48
    invoke-interface {v1, v0, v2, v3}, Luk/co/senab/photoview/gestures/OnGestureListener;->onScale(FFF)V

    .line 50
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 61
    return-void
.end method
