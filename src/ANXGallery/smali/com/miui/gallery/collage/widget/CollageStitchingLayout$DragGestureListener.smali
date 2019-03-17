.class Lcom/miui/gallery/collage/widget/CollageStitchingLayout$DragGestureListener;
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
    name = "DragGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$DragGestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;Lcom/miui/gallery/collage/widget/CollageStitchingLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/collage/widget/CollageStitchingLayout;
    .param p2, "x1"    # Lcom/miui/gallery/collage/widget/CollageStitchingLayout$1;

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$DragGestureListener;-><init>(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 244
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 235
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float v0, v1, v2

    .line 236
    .local v0, "difference":F
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$DragGestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-static {v1, v0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$1700(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;F)V

    .line 237
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$DragGestureListener;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-static {v1}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$500(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->onScroll(F)V

    .line 238
    const/4 v1, 0x1

    return v1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 226
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 230
    const/4 v0, 0x0

    return v0
.end method
