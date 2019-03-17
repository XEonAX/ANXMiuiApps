.class public Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;
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
    name = "IdleState"
.end annotation


# instance fields
.field final mMoveAttr:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

.field final synthetic this$0:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;)V
    .locals 1
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->this$0:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;->createMotionAttributes()Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->mMoveAttr:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    .line 116
    return-void
.end method


# virtual methods
.method public handleEntryTransition(Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;)V
    .locals 0
    .param p1, "fromState"    # Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;

    .prologue
    .line 154
    return-void
.end method

.method public handleMoveTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 126
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->this$0:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v2, v2, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/miui/gallery/editor/photo/widgets/overscroll/IOverScrollInterface$IOverScrollDecoratorAdapter;

    invoke-interface {v2}, Lcom/miui/gallery/editor/photo/widgets/overscroll/IOverScrollInterface$IOverScrollDecoratorAdapter;->getView()Landroid/view/View;

    move-result-object v0

    .line 127
    .local v0, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->mMoveAttr:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    invoke-virtual {v2, v0, p1}, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;->init(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v1

    .line 132
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->this$0:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v2, v2, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/miui/gallery/editor/photo/widgets/overscroll/IOverScrollInterface$IOverScrollDecoratorAdapter;

    invoke-interface {v2}, Lcom/miui/gallery/editor/photo/widgets/overscroll/IOverScrollInterface$IOverScrollDecoratorAdapter;->isInAbsoluteStart()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->mMoveAttr:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    iget-boolean v2, v2, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;->mDir:Z

    if-nez v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->this$0:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v2, v2, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/miui/gallery/editor/photo/widgets/overscroll/IOverScrollInterface$IOverScrollDecoratorAdapter;

    .line 133
    invoke-interface {v2}, Lcom/miui/gallery/editor/photo/widgets/overscroll/IOverScrollInterface$IOverScrollDecoratorAdapter;->isInAbsoluteEnd()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->mMoveAttr:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    iget-boolean v2, v2, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;->mDir:Z

    if-nez v2, :cond_0

    .line 136
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->this$0:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v2, v2, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v2, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mPointerId:I

    .line 137
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->this$0:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->mMoveAttr:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    iget v2, v2, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;->mAbsOffset:F

    iput v2, v1, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mAbsOffset:F

    .line 138
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->this$0:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->mMoveAttr:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;

    iget-boolean v2, v2, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;->mDir:Z

    iput-boolean v2, v1, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollStartAttributes;->mDir:Z

    .line 140
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->this$0:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->this$0:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v2, v2, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;->mOverScrollingState:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;->issueStateTransition(Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$IDecoratorState;)V

    .line 141
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$IdleState;->this$0:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase;->mOverScrollingState:Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$OverScrollingState;->handleMoveTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public handleUpOrCancelTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method
