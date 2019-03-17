.class Lcom/miui/gallery/collage/widget/CollageStitchingLayout$GestureListener;
.super Ljava/lang/Object;
.source "CollageStitchingLayout.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/widget/CollageStitchingLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$GestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;Lcom/miui/gallery/collage/widget/CollageStitchingLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/collage/widget/CollageStitchingLayout;
    .param p2, "x1"    # Lcom/miui/gallery/collage/widget/CollageStitchingLayout$1;

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$GestureListener;-><init>(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$GestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-static {v0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$700(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 174
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$GestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$602(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;Z)Z

    .line 175
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$GestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$802(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;F)F

    .line 176
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 210
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$GestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-static {v0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$700(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)Landroid/widget/OverScroller;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$GestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-virtual {v1}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$GestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-virtual {v2}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getScrollY()I

    move-result v2

    neg-float v3, p3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    neg-float v4, p4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$GestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-virtual {v5}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getScrollX()I

    move-result v5

    iget-object v6, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$GestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-virtual {v6}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getScrollX()I

    move-result v6

    iget-object v7, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$GestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-static {v7}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$1500(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)I

    move-result v7

    iget-object v8, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$GestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-static {v8}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$1600(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)I

    move-result v8

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 211
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$GestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->invalidate()V

    .line 212
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$GestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->performHapticFeedback(I)Z

    .line 201
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$GestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$602(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;Z)Z

    .line 202
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$GestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$1200(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;F)V

    .line 203
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$GestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-static {v0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$1300(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)V

    .line 204
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$GestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-static {v0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$500(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$GestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$1400(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;F)Lcom/miui/gallery/collage/widget/CollageImageView;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->enableDragMode(Lcom/miui/gallery/collage/widget/CollageImageView;F)V

    .line 205
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$GestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$1000(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;Lcom/miui/gallery/collage/widget/CollageImageView;)V

    .line 206
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 193
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$GestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$1000(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;Lcom/miui/gallery/collage/widget/CollageImageView;)V

    .line 194
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$GestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-static {v0, p4}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$1100(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;F)I

    .line 195
    const/4 v0, 0x1

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 182
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 186
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$GestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$900(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;FF)Lcom/miui/gallery/collage/widget/CollageImageView;

    move-result-object v0

    .line 187
    .local v0, "singleView":Lcom/miui/gallery/collage/widget/CollageImageView;
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$GestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-static {v1, v0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$1000(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;Lcom/miui/gallery/collage/widget/CollageImageView;)V

    .line 188
    const/4 v1, 0x1

    return v1
.end method
