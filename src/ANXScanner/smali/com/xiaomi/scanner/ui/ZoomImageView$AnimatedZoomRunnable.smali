.class Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;
.super Ljava/lang/Object;
.source "ZoomImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/ui/ZoomImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatedZoomRunnable"
.end annotation


# static fields
.field static final ANIMATION_SCALE_PER_ITERATION_IN:F = 1.07f

.field static final ANIMATION_SCALE_PER_ITERATION_OUT:F = 0.93f


# instance fields
.field private final deltaScale:F

.field private final focalX:F

.field private final focalY:F

.field private final targetZoom:F

.field final synthetic this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;


# direct methods
.method public constructor <init>(Lcom/xiaomi/scanner/ui/ZoomImageView;FFFF)V
    .locals 1
    .param p2, "currentZoom"    # F
    .param p3, "targetZoom"    # F
    .param p4, "focalX"    # F
    .param p5, "focalY"    # F

    .prologue
    .line 898
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 899
    iput p3, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->targetZoom:F

    .line 900
    iput p4, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->focalX:F

    .line 901
    iput p5, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->focalY:F

    .line 903
    cmpg-float v0, p2, p3

    if-gez v0, :cond_0

    .line 904
    const v0, 0x3f88f5c3    # 1.07f

    iput v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->deltaScale:F

    .line 908
    :goto_0
    return-void

    .line 906
    :cond_0
    const v0, 0x3f6e147b    # 0.93f

    iput v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->deltaScale:F

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 911
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v2}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$000(Lcom/xiaomi/scanner/ui/ZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    iget v3, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->deltaScale:F

    iget v4, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->deltaScale:F

    iget v5, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->focalX:F

    iget v6, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->focalY:F

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 912
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v2}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$100(Lcom/xiaomi/scanner/ui/ZoomImageView;)V

    .line 914
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getScale()F

    move-result v0

    .line 916
    .local v0, "currentScale":F
    iget v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->deltaScale:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_0

    iget v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->targetZoom:F

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_1

    :cond_0
    iget v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->deltaScale:F

    cmpg-float v2, v2, v7

    if-gez v2, :cond_2

    iget v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->targetZoom:F

    cmpg-float v2, v2, v0

    if-gez v2, :cond_2

    .line 920
    :cond_1
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    iget-object v3, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v2, v3, p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$1200(Lcom/xiaomi/scanner/ui/ZoomImageView;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 929
    :goto_0
    return-void

    .line 925
    :cond_2
    iget v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->targetZoom:F

    div-float v1, v2, v0

    .line 926
    .local v1, "delta":F
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v2}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$000(Lcom/xiaomi/scanner/ui/ZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    iget v3, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->focalX:F

    iget v4, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->focalY:F

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 927
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v2}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$100(Lcom/xiaomi/scanner/ui/ZoomImageView;)V

    goto :goto_0
.end method
