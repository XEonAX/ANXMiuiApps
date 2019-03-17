.class Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;
.super Ljava/lang/Object;
.source "StickerEditorView.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$FeatureGesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomGestureListener"
.end annotation


# instance fields
.field private mDownX:F

.field private mDownY:F

.field private mFirstSpan:F

.field private mPoint:[F

.field private mPreScale:F

.field final synthetic this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)V
    .locals 1

    .prologue
    .line 85
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->mPoint:[F

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;
    .param p2, "x1"    # Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$1;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;-><init>(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)V

    return-void
.end method

.method private bindItem(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 303
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    sget-object v2, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;->PENDING:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    invoke-static {v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$302(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    .line 304
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$500(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->remove(I)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    move-result-object v0

    .line 305
    .local v0, "node":Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$500(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$200(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->unbind()Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->append(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;)V

    .line 306
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$200(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->bind(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;)V

    .line 307
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$1500(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)V

    .line 308
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->invalidate()V

    .line 309
    return-void
.end method

.method private moveItem(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 6
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v5, 0x0

    .line 278
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$200(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->getDrawBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 279
    .local v0, "drawBounds":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$1200(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 280
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-static {v4}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$1200(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$1300(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;Landroid/graphics/RectF;)I

    move-result v1

    .line 282
    .local v1, "flag":I
    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_2

    .line 283
    cmpl-float v3, p3, v5

    if-lez v3, :cond_0

    const/4 p3, 0x0

    .line 288
    :cond_0
    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_3

    .line 289
    cmpl-float v3, p4, v5

    if-lez v3, :cond_1

    const/4 p4, 0x0

    .line 294
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$800(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Landroid/graphics/PointF;

    move-result-object v2

    .line 295
    .local v2, "pt":Landroid/graphics/PointF;
    neg-float v3, p3

    neg-float v4, p4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 296
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-static {v3, v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$1400(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;Landroid/graphics/PointF;)V

    .line 297
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$200(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    move-result-object v3

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v5}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->translate(FF)V

    .line 298
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$400(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 299
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->invalidate()V

    .line 300
    return-void

    .line 284
    .end local v2    # "pt":Landroid/graphics/PointF;
    :cond_2
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_0

    .line 285
    cmpg-float v3, p3, v5

    if-gez v3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 290
    :cond_3
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_1

    .line 291
    cmpg-float v3, p4, v5

    if-gez v3, :cond_1

    const/4 p4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onActionUp(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 233
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;->IDLE:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$302(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    .line 234
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->invalidate()V

    .line 235
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->mDownX:F

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->mDownY:F

    .line 97
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->mPoint:[F

    invoke-static {v0, p1, v1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$100(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;Landroid/view/MotionEvent;[F)V

    .line 99
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$200(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->isIdle()Z

    move-result v0

    if-nez v0, :cond_4

    .line 100
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$200(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->mDownX:F

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->mDownY:F

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->isScale(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;->SCALE:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$302(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    .line 115
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->invalidate()V

    .line 116
    const/4 v0, 0x1

    return v0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$200(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->mDownX:F

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->mDownY:F

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->isDelete(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;->DELETE:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$302(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$200(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->mDownX:F

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->mDownY:F

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->isMirror(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;->MIRROR:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$302(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    goto :goto_0

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$200(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->mDownX:F

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->mDownY:F

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$400(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Landroid/graphics/PointF;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->mDownX:F

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->mDownY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 108
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;->PENDING:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$302(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    goto :goto_0

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;->IDLE:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$302(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    goto :goto_0

    .line 113
    :cond_4
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;->IDLE:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$302(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    goto :goto_0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 10
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    .line 239
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v2

    .line 240
    .local v2, "currentSpan":F
    iget v7, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->mFirstSpan:F

    div-float v1, v2, v7

    .line 241
    .local v1, "currentScale":F
    iget v7, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->mPreScale:F

    div-float v6, v1, v7

    .line 242
    .local v6, "scaleFactor":F
    iget v7, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->mPreScale:F

    mul-float/2addr v7, v6

    iput v7, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->mPreScale:F

    .line 243
    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-static {v7}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$200(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->isIdle()Z

    move-result v7

    if-nez v7, :cond_0

    .line 244
    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-static {v7}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$200(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->getRadius()F

    move-result v5

    .line 246
    .local v5, "radius":F
    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-static {v7}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$900(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)F

    move-result v0

    .line 247
    .local v0, "canvasScale":F
    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-static {v7}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$1000(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)F

    move-result v7

    mul-float v4, v7, v0

    .line 248
    .local v4, "minRadius":F
    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-static {v7}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$1100(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)F

    move-result v7

    mul-float v3, v7, v0

    .line 250
    .local v3, "maxRadius":F
    cmpg-float v7, v6, v8

    if-gtz v7, :cond_1

    cmpg-float v7, v5, v4

    if-gez v7, :cond_1

    .line 262
    .end local v0    # "canvasScale":F
    .end local v3    # "maxRadius":F
    .end local v4    # "minRadius":F
    .end local v5    # "radius":F
    :cond_0
    :goto_0
    return v9

    .line 254
    .restart local v0    # "canvasScale":F
    .restart local v3    # "maxRadius":F
    .restart local v4    # "minRadius":F
    .restart local v5    # "radius":F
    :cond_1
    cmpl-float v7, v6, v8

    if-lez v7, :cond_2

    cmpl-float v7, v5, v3

    if-gtz v7, :cond_0

    .line 258
    :cond_2
    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-static {v7}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$200(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->scale(F)V

    .line 259
    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    sget-object v8, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;->MOVE:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    invoke-static {v7, v8}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$302(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    .line 260
    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-virtual {v7}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->invalidate()V

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 267
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->mFirstSpan:F

    .line 268
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->mPreScale:F

    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 275
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 40
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v27

    .line 157
    .local v27, "x":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v32

    .line 159
    .local v32, "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$300(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    move-result-object v33

    sget-object v36, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;->IDLE:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$200(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->isIdle()Z

    move-result v33

    if-nez v33, :cond_2

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$500(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;

    move-result-object v33

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v36

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v37

    move-object/from16 v0, v33

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->find(FF)I

    move-result v10

    .line 161
    .local v10, "index":I
    const/16 v33, -0x1

    move/from16 v0, v33

    if-eq v10, v0, :cond_0

    .line 162
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->bindItem(I)V

    .line 164
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    move-object/from16 v33, v0

    sget-object v36, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;->MOVE:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$302(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    .line 229
    .end local v10    # "index":I
    :cond_1
    :goto_0
    return-void

    .line 165
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$300(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    move-result-object v33

    sget-object v36, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;->MOVE:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_3

    .line 166
    invoke-direct/range {p0 .. p4}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->moveItem(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    goto :goto_0

    .line 167
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$300(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    move-result-object v33

    sget-object v36, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;->PENDING:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_4

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    move-object/from16 v33, v0

    sget-object v36, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;->MOVE:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$302(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    goto :goto_0

    .line 169
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$300(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    move-result-object v33

    sget-object v36, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;->SCALE:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_7

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$800(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Landroid/graphics/PointF;

    move-result-object v13

    .line 173
    .local v13, "pt":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$200(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    move-result-object v33

    const/16 v36, 0x3

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->getVertex(I)[F

    move-result-object v33

    const/16 v36, 0x0

    aget v33, v33, v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    move-object/from16 v36, v0

    .line 174
    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$200(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    move-result-object v36

    const/16 v37, 0x3

    invoke-virtual/range {v36 .. v37}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->getVertex(I)[F

    move-result-object v36

    const/16 v37, 0x1

    aget v36, v36, v37

    .line 173
    move/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v13, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$200(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->getDrawBounds()Landroid/graphics/Rect;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->centerX()I

    move-result v33

    move/from16 v0, v33

    int-to-float v5, v0

    .line 177
    .local v5, "centerX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$200(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->getDrawBounds()Landroid/graphics/Rect;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->centerY()I

    move-result v33

    move/from16 v0, v33

    int-to-float v6, v0

    .line 178
    .local v6, "centerY":F
    sub-float v33, v27, v5

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v36, v0

    sub-float v33, v32, v6

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v38, v0

    invoke-static/range {v36 .. v39}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v16

    .line 179
    .local v16, "postRadius":D
    iget v0, v13, Landroid/graphics/PointF;->x:F

    move/from16 v33, v0

    sub-float v33, v33, v5

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v36, v0

    iget v0, v13, Landroid/graphics/PointF;->y:F

    move/from16 v33, v0

    sub-float v33, v33, v6

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v38, v0

    invoke-static/range {v36 .. v39}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v20

    .line 181
    .local v20, "preRadius":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$900(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)F

    move-result v4

    .line 182
    .local v4, "canvasScale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$1000(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)F

    move-result v33

    mul-float v12, v33, v4

    .line 183
    .local v12, "minRadius":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$1100(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)F

    move-result v33

    mul-float v11, v33, v4

    .line 186
    .local v11, "maxRadius":F
    float-to-double v0, v12

    move-wide/from16 v36, v0

    cmpg-double v33, v16, v36

    if-gez v33, :cond_5

    .line 187
    float-to-double v0, v12

    move-wide/from16 v36, v0

    div-double v36, v36, v16

    move-wide/from16 v0, v36

    double-to-float v7, v0

    .line 188
    .local v7, "delta":F
    float-to-double v0, v12

    move-wide/from16 v16, v0

    .line 189
    sub-float v33, v27, v5

    mul-float v33, v33, v7

    add-float v27, v33, v5

    .line 190
    sub-float v33, v32, v6

    mul-float v33, v33, v7

    add-float v32, v33, v6

    .line 193
    .end local v7    # "delta":F
    :cond_5
    float-to-double v0, v11

    move-wide/from16 v36, v0

    cmpl-double v33, v16, v36

    if-lez v33, :cond_6

    .line 194
    float-to-double v0, v11

    move-wide/from16 v36, v0

    div-double v36, v36, v16

    move-wide/from16 v0, v36

    double-to-float v7, v0

    .line 195
    .restart local v7    # "delta":F
    float-to-double v0, v11

    move-wide/from16 v16, v0

    .line 196
    sub-float v33, v27, v5

    mul-float v33, v33, v7

    add-float v27, v33, v5

    .line 197
    sub-float v33, v32, v6

    mul-float v33, v33, v7

    add-float v32, v33, v6

    .line 200
    .end local v7    # "delta":F
    :cond_6
    div-double v36, v16, v20

    move-wide/from16 v0, v36

    double-to-float v0, v0

    move/from16 v26, v0

    .line 201
    .local v26, "scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$200(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->scale(F)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$200(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    move-result-object v33

    const/16 v36, 0x3

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->getVertex(I)[F

    move-result-object v33

    const/16 v36, 0x0

    aget v33, v33, v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    move-object/from16 v36, v0

    .line 205
    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$200(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    move-result-object v36

    const/16 v37, 0x3

    invoke-virtual/range {v36 .. v37}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->getVertex(I)[F

    move-result-object v36

    const/16 v37, 0x1

    aget v36, v36, v37

    .line 204
    move/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v13, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 207
    iget v0, v13, Landroid/graphics/PointF;->x:F

    move/from16 v33, v0

    sub-float v33, v27, v33

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v30, v0

    .line 208
    .local v30, "xOffset":D
    iget v0, v13, Landroid/graphics/PointF;->y:F

    move/from16 v33, v0

    sub-float v33, v32, v33

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v34, v0

    .line 209
    .local v34, "yOffset":D
    move-wide/from16 v0, v30

    move-wide/from16 v2, v34

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v14

    .line 210
    .local v14, "offset":D
    mul-double v36, v16, v16

    const-wide/high16 v38, 0x4000000000000000L    # 2.0

    mul-double v36, v36, v38

    mul-double v38, v14, v14

    sub-double v36, v36, v38

    const-wide/high16 v38, 0x4000000000000000L    # 2.0

    mul-double v38, v38, v16

    mul-double v38, v38, v16

    div-double v8, v36, v38

    .line 212
    .local v8, "cos":D
    sub-float v33, v27, v5

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v18, v0

    .line 213
    .local v18, "postXDelta":D
    iget v0, v13, Landroid/graphics/PointF;->x:F

    move/from16 v33, v0

    sub-float v33, v33, v5

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v22, v0

    .line 214
    .local v22, "preXDelta":D
    iget v0, v13, Landroid/graphics/PointF;->y:F

    move/from16 v33, v0

    sub-float v33, v33, v6

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v24, v0

    .line 217
    .local v24, "preYDelta":D
    mul-double v36, v22, v8

    sub-double v36, v36, v18

    div-double v28, v36, v24

    .line 219
    .local v28, "sin":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$200(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    move-result-object v33

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v36, v0

    double-to-float v0, v8

    move/from16 v37, v0

    move-object/from16 v0, v33

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->rotate(FF)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->invalidate()V

    goto/16 :goto_0

    .line 221
    .end local v4    # "canvasScale":F
    .end local v5    # "centerX":F
    .end local v6    # "centerY":F
    .end local v8    # "cos":D
    .end local v11    # "maxRadius":F
    .end local v12    # "minRadius":F
    .end local v13    # "pt":Landroid/graphics/PointF;
    .end local v14    # "offset":D
    .end local v16    # "postRadius":D
    .end local v18    # "postXDelta":D
    .end local v20    # "preRadius":D
    .end local v22    # "preXDelta":D
    .end local v24    # "preYDelta":D
    .end local v26    # "scale":F
    .end local v28    # "sin":D
    .end local v30    # "xOffset":D
    .end local v34    # "yOffset":D
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$200(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->isIdle()Z

    move-result v33

    if-eqz v33, :cond_1

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$500(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;

    move-result-object v33

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v36

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v37

    move-object/from16 v0, v33

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->find(FF)I

    move-result v10

    .line 224
    .restart local v10    # "index":I
    const/16 v33, -0x1

    move/from16 v0, v33

    if-eq v10, v0, :cond_8

    .line 225
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->bindItem(I)V

    .line 227
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->invalidate()V

    goto/16 :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, -0x1

    .line 121
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$200(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->isIdle()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$300(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;->IDLE:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    if-ne v2, v3, :cond_2

    .line 122
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$500(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->find(FF)I

    move-result v0

    .line 123
    .local v0, "index":I
    if-ne v0, v5, :cond_1

    .line 124
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$200(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->unbind()Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    move-result-object v1

    .line 125
    .local v1, "node":Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$500(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->append(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;)V

    .line 126
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$600(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)V

    .line 127
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->invalidate()V

    .line 152
    .end local v0    # "index":I
    .end local v1    # "node":Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;
    :cond_0
    :goto_0
    return-void

    .line 129
    .restart local v0    # "index":I
    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->bindItem(I)V

    goto :goto_0

    .line 134
    .end local v0    # "index":I
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$300(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;->MIRROR:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$200(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->isMirror(FF)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 135
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$200(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mirror()V

    .line 136
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    sget-object v3, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;->IDLE:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    invoke-static {v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$302(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    .line 137
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->invalidate()V

    goto :goto_0

    .line 139
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$300(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;->DELETE:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$200(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->isDelete(FF)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 140
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$200(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->unbind()Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    .line 141
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$700(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)V

    .line 142
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    sget-object v3, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;->IDLE:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    invoke-static {v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$302(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    .line 143
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->invalidate()V

    goto :goto_0

    .line 147
    :cond_4
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->access$500(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->find(FF)I

    move-result v0

    .line 149
    .restart local v0    # "index":I
    if-eq v0, v5, :cond_0

    .line 150
    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;->bindItem(I)V

    goto/16 :goto_0
.end method
