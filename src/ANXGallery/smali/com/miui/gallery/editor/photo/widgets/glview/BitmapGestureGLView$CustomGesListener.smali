.class Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$CustomGesListener;
.super Ljava/lang/Object;
.source "BitmapGestureGLView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomGesListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$CustomGesListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;
    .param p2, "x1"    # Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$1;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$CustomGesListener;-><init>(Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 101
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$CustomGesListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->mState:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;

    sget-object v2, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;->BY_CHILD:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;

    if-eq v1, v2, :cond_2

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 103
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$CustomGesListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;

    sget-object v2, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;->SCALE_MOVE:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;

    iput-object v2, v1, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->mState:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;

    .line 114
    :cond_0
    :goto_0
    return v0

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$CustomGesListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->access$200(Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;)Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$FeatureGesListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$CustomGesListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->access$200(Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;)Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$FeatureGesListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$FeatureGesListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 110
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$CustomGesListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->access$200(Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;)Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$FeatureGesListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$CustomGesListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->access$200(Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;)Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$FeatureGesListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$FeatureGesListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 156
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v6, 0x1

    .line 132
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$CustomGesListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->mState:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;

    sget-object v2, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;->SCALE_MOVE:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;

    if-ne v1, v2, :cond_1

    .line 133
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$CustomGesListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    neg-float v2, p3

    neg-float v3, p4

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->performTransition(FF)V

    .line 151
    :cond_0
    :goto_0
    return v6

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$CustomGesListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->mState:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;

    sget-object v2, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;->BY_CHILD:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;

    if-ne v1, v2, :cond_2

    .line 136
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$CustomGesListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->access$200(Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;)Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$FeatureGesListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$CustomGesListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->access$200(Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;)Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$FeatureGesListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$FeatureGesListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v6, :cond_3

    .line 141
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$CustomGesListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;

    sget-object v2, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;->SCALE_MOVE:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;

    iput-object v2, v1, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->mState:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;

    goto :goto_0

    .line 143
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-double v2, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 144
    .local v0, "distance":F
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$CustomGesListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->access$300(Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;)F

    move-result v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_4

    .line 145
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$CustomGesListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;

    sget-object v2, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;->BY_CHILD:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;

    iput-object v2, v1, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->mState:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;

    goto :goto_0

    .line 147
    :cond_4
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$CustomGesListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;

    sget-object v2, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;->NOT_DEFINE:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;

    iput-object v2, v1, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->mState:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 119
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$CustomGesListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->mState:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;

    sget-object v1, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;->SCALE_MOVE:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$CustomGesListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->access$200(Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;)Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$FeatureGesListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$CustomGesListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;

    sget-object v1, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;->BY_CHILD:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;

    iput-object v1, v0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->mState:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;

    .line 125
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$CustomGesListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->access$200(Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;)Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$FeatureGesListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$FeatureGesListener;->onSingleTapUp(Landroid/view/MotionEvent;)V

    .line 127
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
