.class Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$GesListener;
.super Ljava/lang/Object;
.source "PaintSelectView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GesListener"
.end annotation


# instance fields
.field private mIndex:I

.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;)V
    .locals 1

    .prologue
    .line 105
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$GesListener;->mIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;
    .param p2, "x1"    # Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$1;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$GesListener;-><init>(Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 111
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->access$200(Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;FF)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$GesListener;->mIndex:I

    .line 112
    iget v1, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$GesListener;->mIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 113
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->expansionPaint(Z)V

    .line 116
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 146
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 123
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 127
    iget v1, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$GesListener;->mIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 128
    const/4 v0, 0x0

    .line 135
    :goto_0
    return v0

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->access$300(Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;

    iget v2, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$GesListener;->mIndex:I

    invoke-static {v1, v2}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->access$400(Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;I)V

    goto :goto_0

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/editor/photo/app/doodle/PaintSelectView;->expansionPaint(Z)V

    goto :goto_0
.end method
