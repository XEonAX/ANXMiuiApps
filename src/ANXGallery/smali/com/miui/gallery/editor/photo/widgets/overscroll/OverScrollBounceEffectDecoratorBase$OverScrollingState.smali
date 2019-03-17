.class public Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;
.super Ljava/lang/Object;
.source "OverScrollBounceEffectDecoratorBase.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OverScrollingState"
.end annotation


# instance fields
.field mCurrDragState:I

.field final mMoveAttr:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

.field protected final mTouchDragRatioBck:F

.field protected final mTouchDragRatioFwd:F

.field final synthetic this$0:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;FF)V
    .locals 1
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;
    .param p2, "touchDragRatioFwd"    # F
    .param p3, "touchDragRatioBck"    # F

    .prologue
    .line 176
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;->createMotionAttributes()Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mMoveAttr:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    .line 178
    iput p2, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mTouchDragRatioFwd:F

    .line 179
    iput p3, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mTouchDragRatioBck:F

    .line 180
    return-void
.end method


# virtual methods
.method public handleEntryTransition(Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;)V
    .locals 1
    .param p1, "fromState"    # Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    iget-boolean v0, v0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mDir:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mCurrDragState:I

    .line 242
    return-void

    .line 241
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public handleMoveTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 194
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v5, v5, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    iget v5, v5, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mPointerId:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 195
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v6, v6, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;->mBounceBackState:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;

    invoke-virtual {v5, v6}, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;->issueStateTransition(Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;)V

    .line 230
    :cond_0
    :goto_0
    return v10

    .line 199
    :cond_1
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v5, v5, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/miui/gallery/editor/photo/widgets/overscroll/IOverScrollInterface$IOverScrollDecoratorAdapter;

    invoke-interface {v5}, Lcom/miui/gallery/editor/photo/widgets/overscroll/IOverScrollInterface$IOverScrollDecoratorAdapter;->getView()Landroid/view/View;

    move-result-object v4

    .line 200
    .local v4, "view":Landroid/view/View;
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mMoveAttr:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    invoke-virtual {v5, v4, p1}, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;->init(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 205
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mMoveAttr:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    iget v6, v5, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;->mDeltaOffset:F

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mMoveAttr:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    iget-boolean v5, v5, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;->mDir:Z

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v7, v7, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    iget-boolean v7, v7, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mDir:Z

    if-ne v5, v7, :cond_4

    iget v5, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mTouchDragRatioFwd:F

    :goto_1
    div-float v0, v6, v5

    .line 206
    .local v0, "deltaOffset":F
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mMoveAttr:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    iget v5, v5, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;->mAbsOffset:F

    add-float v1, v5, v0

    .line 211
    .local v1, "newOffset":F
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v5, v5, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    iget-boolean v5, v5, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mDir:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mMoveAttr:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    iget-boolean v5, v5, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;->mDir:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v5, v5, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    iget v5, v5, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mAbsOffset:F

    cmpg-float v5, v1, v5

    if-lez v5, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v5, v5, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    iget-boolean v5, v5, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mDir:Z

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mMoveAttr:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    iget-boolean v5, v5, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;->mDir:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v5, v5, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    iget v5, v5, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mAbsOffset:F

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_5

    .line 213
    :cond_3
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v6, v6, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    iget v6, v6, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mAbsOffset:F

    invoke-virtual {v5, v4, v6, p1}, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;->translateViewAndEvent(Landroid/view/View;FLandroid/view/MotionEvent;)V

    .line 215
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v6, v6, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;->mIdleState:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;

    invoke-virtual {v5, v6}, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;->issueStateTransition(Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;)V

    goto :goto_0

    .line 205
    .end local v0    # "deltaOffset":F
    .end local v1    # "newOffset":F
    :cond_4
    iget v5, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->mTouchDragRatioBck:F

    goto :goto_1

    .line 219
    .restart local v0    # "deltaOffset":F
    .restart local v1    # "newOffset":F
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 220
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v10}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 223
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v8

    sub-long v2, v6, v8

    .line 224
    .local v2, "dt":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-lez v5, :cond_7

    .line 225
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;

    long-to-float v6, v2

    div-float v6, v0, v6

    iput v6, v5, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;->mVelocity:F

    .line 228
    :cond_7
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;

    invoke-virtual {v5, v4, v1}, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;->translateView(Landroid/view/View;F)V

    goto/16 :goto_0
.end method

.method public handleUpOrCancelTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->this$0:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;->mBounceBackState:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$BounceBackState;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;->issueStateTransition(Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;)V

    .line 236
    const/4 v0, 0x0

    return v0
.end method
