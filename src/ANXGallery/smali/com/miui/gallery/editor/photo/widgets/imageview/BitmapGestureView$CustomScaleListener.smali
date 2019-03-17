.class Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomScaleListener;
.super Ljava/lang/Object;
.source "BitmapGestureView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomScaleListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;
    .param p2, "x1"    # Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$1;

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomScaleListener;-><init>(Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 300
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomScaleListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mState:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;

    sget-object v2, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;->BY_CHILD:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;

    if-ne v1, v2, :cond_1

    .line 301
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomScaleListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->access$200(Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;)Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$FeatureGesListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomScaleListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->access$200(Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;)Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$FeatureGesListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$FeatureGesListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    .line 314
    :cond_0
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 305
    :cond_1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 306
    .local v0, "scale":F
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomScaleListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;

    sget-object v2, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;->SCALE_MOVE:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;

    iput-object v2, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mState:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;

    .line 307
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 308
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomScaleListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomScaleListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;

    iget-object v2, v2, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget v2, v2, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mMaxWidthScale:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 309
    const/4 v1, 0x0

    goto :goto_1

    .line 312
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomScaleListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->performScale(FFF)V

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomScaleListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mState:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;

    sget-object v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;->BY_CHILD:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;

    if-ne v0, v1, :cond_1

    .line 320
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomScaleListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->access$200(Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;)Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$FeatureGesListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomScaleListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->access$200(Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;)Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$FeatureGesListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$FeatureGesListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    .line 326
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomScaleListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;

    sget-object v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;->SCALE_MOVE:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;

    iput-object v1, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mState:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomScaleListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mState:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;

    sget-object v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;->BY_CHILD:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;

    if-ne v0, v1, :cond_0

    .line 332
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomScaleListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->access$200(Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;)Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$FeatureGesListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomScaleListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->access$200(Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;)Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$FeatureGesListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$FeatureGesListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 336
    :cond_0
    return-void
.end method
