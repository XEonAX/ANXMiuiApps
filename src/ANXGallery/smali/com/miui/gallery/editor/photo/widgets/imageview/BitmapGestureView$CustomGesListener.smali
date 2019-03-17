.class Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomGesListener;
.super Ljava/lang/Object;
.source "BitmapGestureView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomGesListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomGesListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;
    .param p2, "x1"    # Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$1;

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomGesListener;-><init>(Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 167
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomGesListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mState:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;

    sget-object v2, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;->BY_CHILD:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;

    if-eq v1, v2, :cond_2

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 169
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomGesListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;

    sget-object v2, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;->SCALE_MOVE:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;

    iput-object v2, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mState:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;

    .line 180
    :cond_0
    :goto_0
    return v0

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomGesListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->access$200(Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;)Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$FeatureGesListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomGesListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->access$200(Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;)Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$FeatureGesListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$FeatureGesListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 176
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomGesListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->access$200(Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;)Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$FeatureGesListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomGesListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->access$200(Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;)Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$FeatureGesListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$FeatureGesListener;->onDown(Landroid/view/MotionEvent;)Z

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
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 222
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

    .line 198
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomGesListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mState:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;

    sget-object v2, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;->SCALE_MOVE:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;

    if-ne v1, v2, :cond_1

    .line 199
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomGesListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    neg-float v2, p3

    neg-float v3, p4

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->performTransition(FF)V

    .line 217
    :cond_0
    :goto_0
    return v6

    .line 200
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomGesListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mState:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;

    sget-object v2, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;->BY_CHILD:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;

    if-ne v1, v2, :cond_2

    .line 202
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomGesListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->access$200(Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;)Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$FeatureGesListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomGesListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->access$200(Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;)Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$FeatureGesListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$FeatureGesListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    goto :goto_0

    .line 206
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v6, :cond_3

    .line 207
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomGesListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;

    sget-object v2, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;->SCALE_MOVE:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;

    iput-object v2, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mState:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;

    goto :goto_0

    .line 209
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

    .line 210
    .local v0, "distance":F
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomGesListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->access$300(Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;)F

    move-result v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_4

    .line 211
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomGesListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;

    sget-object v2, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;->BY_CHILD:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;

    iput-object v2, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mState:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;

    goto :goto_0

    .line 213
    :cond_4
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomGesListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;

    sget-object v2, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;->NOT_DEFINE:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;

    iput-object v2, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mState:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 185
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomGesListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mState:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;

    sget-object v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;->SCALE_MOVE:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomGesListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->access$200(Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;)Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$FeatureGesListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomGesListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;

    sget-object v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;->BY_CHILD:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;

    iput-object v1, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mState:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;

    .line 191
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomGesListener;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->access$200(Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;)Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$FeatureGesListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$FeatureGesListener;->onSingleTapUp(Landroid/view/MotionEvent;)V

    .line 193
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
