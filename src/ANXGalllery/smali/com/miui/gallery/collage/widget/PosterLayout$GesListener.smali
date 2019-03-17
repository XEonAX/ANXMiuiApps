.class Lcom/miui/gallery/collage/widget/PosterLayout$GesListener;
.super Ljava/lang/Object;
.source "PosterLayout.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/widget/PosterLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GesListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/collage/widget/PosterLayout;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/collage/widget/PosterLayout;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/miui/gallery/collage/widget/PosterLayout$GesListener;->this$0:Lcom/miui/gallery/collage/widget/PosterLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/collage/widget/PosterLayout;Lcom/miui/gallery/collage/widget/PosterLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/collage/widget/PosterLayout;
    .param p2, "x1"    # Lcom/miui/gallery/collage/widget/PosterLayout$1;

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/widget/PosterLayout$GesListener;-><init>(Lcom/miui/gallery/collage/widget/PosterLayout;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 222
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 247
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 228
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 232
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout$GesListener;->this$0:Lcom/miui/gallery/collage/widget/PosterLayout;

    iget-object v2, p0, Lcom/miui/gallery/collage/widget/PosterLayout$GesListener;->this$0:Lcom/miui/gallery/collage/widget/PosterLayout;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/collage/widget/PosterLayout;->findTextHolderByTouchEvent(FF)Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/gallery/collage/widget/PosterLayout;->access$802(Lcom/miui/gallery/collage/widget/PosterLayout;Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;)Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;

    .line 233
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout$GesListener;->this$0:Lcom/miui/gallery/collage/widget/PosterLayout;

    invoke-static {v0}, Lcom/miui/gallery/collage/widget/PosterLayout;->access$800(Lcom/miui/gallery/collage/widget/PosterLayout;)Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v2, p0, Lcom/miui/gallery/collage/widget/PosterLayout$GesListener;->this$0:Lcom/miui/gallery/collage/widget/PosterLayout;

    iget-object v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout$GesListener;->this$0:Lcom/miui/gallery/collage/widget/PosterLayout;

    invoke-static {v0}, Lcom/miui/gallery/collage/widget/PosterLayout;->access$800(Lcom/miui/gallery/collage/widget/PosterLayout;)Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->getCurrentText()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout$GesListener;->this$0:Lcom/miui/gallery/collage/widget/PosterLayout;

    invoke-static {v0}, Lcom/miui/gallery/collage/widget/PosterLayout;->access$800(Lcom/miui/gallery/collage/widget/PosterLayout;)Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->hasModify()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/PosterLayout$GesListener;->this$0:Lcom/miui/gallery/collage/widget/PosterLayout;

    invoke-static {v4}, Lcom/miui/gallery/collage/widget/PosterLayout;->access$800(Lcom/miui/gallery/collage/widget/PosterLayout;)Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->getMaxSize()I

    move-result v4

    invoke-static {v2, v3, v0, v4}, Lcom/miui/gallery/collage/widget/PosterLayout;->access$900(Lcom/miui/gallery/collage/widget/PosterLayout;Ljava/lang/String;ZI)V

    .line 236
    :cond_0
    return v1

    .line 234
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
