.class Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;
.super Ljava/lang/Object;
.source "DoodleEditorView.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$FeatureGesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GesListener"
.end annotation


# instance fields
.field private mActivationNode:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

.field private mCurrentNode:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

.field private mDownIndex:I

.field private mDownNode:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

.field private mDownX:F

.field private mDownY:F

.field private mPointTemp1:[F

.field private mPointTemp2:[F

.field private mPointTemp3:[F

.field private mScaleMode:Z

.field private mScrollX:F

.field private mScrollY:F

.field private mTouchAction:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$TouchAction;

.field final synthetic this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 112
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$TouchAction;->NONE:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$TouchAction;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mTouchAction:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$TouchAction;

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mDownIndex:I

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mScaleMode:Z

    .line 125
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mPointTemp1:[F

    .line 126
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mPointTemp2:[F

    .line 127
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mPointTemp3:[F

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;
    .param p2, "x1"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$1;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;-><init>(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)V

    return-void
.end method

.method private findItemByEvent(FF)I
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v3, -0x1

    .line 347
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$300(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 348
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$400(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v4}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$300(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    invoke-virtual {v2, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 349
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$300(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)I

    move-result v1

    .line 358
    :cond_0
    :goto_0
    return v1

    .line 352
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$400(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 353
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$400(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    .line 354
    .local v0, "doodleNode":Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;
    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_0

    .line 352
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v0    # "doodleNode":Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;
    :cond_2
    move v1, v3

    .line 358
    goto :goto_0
.end method

.method private findTouchActionWithAction(FF)Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$TouchAction;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 331
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$1200(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->DELETE:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$1100(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->getDecorationRect(Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Landroid/graphics/RectF;)V

    .line 332
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$1100(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$TouchAction;->DELETE:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$TouchAction;

    .line 343
    :goto_0
    return-object v0

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$1200(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->ROTATE:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$1100(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->getDecorationRect(Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Landroid/graphics/RectF;)V

    .line 336
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$1100(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$TouchAction;->ROTATE:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$TouchAction;

    goto :goto_0

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$1200(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->SCALE:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$1100(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->getDecorationRect(Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Landroid/graphics/RectF;)V

    .line 340
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$1100(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 341
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$TouchAction;->SCALE:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$TouchAction;

    goto :goto_0

    .line 343
    :cond_2
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$TouchAction;->NONE:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$TouchAction;

    goto :goto_0
.end method

.method private generateDoodle(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 291
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mCurrentNode:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    if-nez v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$2000(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;->getDoodleDrawable(Landroid/content/res/Resources;)Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mCurrentNode:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    .line 293
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mCurrentNode:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$2100(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;)V

    .line 294
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$202(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;Z)Z

    .line 295
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$2200(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$DoodleCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$2200(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$DoodleCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mCurrentNode:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->getDoodleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$DoodleCallback;->onDoodleGenerate(Ljava/lang/String;)V

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mCurrentNode:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->receivePosition(FF)V

    .line 300
    return-void
.end method

.method private moveDoodle(FFLcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;)V
    .locals 6
    .param p1, "distanceX"    # F
    .param p2, "distanceY"    # F
    .param p3, "doodleNode"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    .prologue
    const/4 v5, 0x0

    .line 303
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$1100(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->getStrokeRectF(Landroid/graphics/RectF;)V

    .line 304
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$2300(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 305
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$2300(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p3}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->getRotateDegrees()F

    move-result v2

    invoke-virtual {p3}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->getRotateX()F

    move-result v3

    invoke-virtual {p3}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->getRotateY()F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 306
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$2300(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p3}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->getUserLocationX()F

    move-result v2

    invoke-virtual {p3}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->getUserLocationY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 307
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$2300(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$2400(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mCanvasMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 308
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$2300(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$1100(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 309
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$1100(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$2500(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;Landroid/graphics/RectF;)I

    move-result v0

    .line 311
    .local v0, "flag":I
    const-string v1, "DoodleEditorView"

    const-string v2, "scroll rect : %s"

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$1100(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 313
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    .line 314
    cmpl-float v1, p1, v5

    if-lez v1, :cond_0

    const/4 p1, 0x0

    .line 319
    :cond_0
    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_3

    .line 320
    cmpl-float v1, p2, v5

    if-lez v1, :cond_1

    const/4 p2, 0x0

    .line 325
    :cond_1
    :goto_1
    neg-float v1, p1

    invoke-virtual {p3, v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->appendUserLocationX(F)V

    .line 326
    neg-float v1, p2

    invoke-virtual {p3, v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->appendUserLocationY(F)V

    .line 327
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$1200(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->setDrawDecoration(Z)V

    .line 328
    return-void

    .line 315
    :cond_2
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 316
    cmpg-float v1, p1, v5

    if-gez v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 321
    :cond_3
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 322
    cmpg-float v1, p2, v5

    if-gez v1, :cond_1

    const/4 p2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onActionUp(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 247
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$200(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 248
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$400(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$400(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    .line 249
    .local v0, "doodleNode":Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->countSize()V

    .line 250
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->getDoodleType()Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode$DoodleDrawableType;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode$DoodleDrawableType;->PATH:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode$DoodleDrawableType;

    if-eq v1, v2, :cond_0

    .line 251
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$400(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$600(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;I)V

    .line 252
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->invalidate()V

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$1800(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 255
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$1900(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)V

    .line 261
    .end local v0    # "doodleNode":Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$1200(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->setDrawDecoration(Z)V

    .line 262
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->invalidate()V

    .line 263
    return-void

    .line 256
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mActivationNode:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    if-eqz v1, :cond_1

    .line 257
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mActivationNode:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->processOnUp()V

    .line 258
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->invalidate()V

    .line 259
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$1900(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)V

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 131
    const-string v0, "DoodleEditorView"

    const-string v1, "onDown"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mPointTemp1:[F

    invoke-static {v0, p1, v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$100(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;Landroid/view/MotionEvent;[F)V

    .line 134
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mPointTemp1:[F

    aget v0, v0, v2

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mDownX:F

    .line 135
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mPointTemp1:[F

    aget v0, v0, v5

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mDownY:F

    .line 137
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mDownX:F

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mScrollX:F

    .line 138
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mDownY:F

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mScrollY:F

    .line 140
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$TouchAction;->NONE:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$TouchAction;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mTouchAction:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$TouchAction;

    .line 141
    iput-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mCurrentNode:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    .line 142
    iput-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mDownNode:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    .line 143
    iput-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mActivationNode:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    .line 144
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v0, v2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$202(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;Z)Z

    .line 145
    iput-boolean v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mScaleMode:Z

    .line 147
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$300(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 148
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$400(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$300(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mActivationNode:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    .line 151
    :cond_0
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mDownX:F

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mDownY:F

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->findItemByEvent(FF)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mDownIndex:I

    .line 152
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mDownIndex:I

    if-eq v0, v4, :cond_1

    .line 153
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$400(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mDownIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mDownNode:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mActivationNode:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    if-eqz v0, :cond_2

    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->findTouchActionWithAction(FF)Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$TouchAction;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mTouchAction:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$TouchAction;

    .line 158
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mActivationNode:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mDownX:F

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mDownY:F

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->processOnDownEvent(FF)V

    .line 163
    :goto_0
    const-string v0, "DoodleEditorView"

    const-string v1, "mTouchAction %s"

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mTouchAction:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$TouchAction;

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    return v5

    .line 160
    :cond_2
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$TouchAction;->NONE:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$TouchAction;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mTouchAction:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$TouchAction;

    goto :goto_0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 267
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 268
    .local v0, "scale":F
    const-string v1, "DoodleEditorView"

    const-string v2, "onScale : %f"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 269
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mActivationNode:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mActivationNode:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->appendScale(F)V

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->invalidate()V

    .line 273
    const/4 v1, 0x0

    return v1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$300(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$400(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$300(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mActivationNode:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mScaleMode:Z

    .line 282
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 288
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 15
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 189
    iget-object v11, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mPointTemp1:[F

    .line 190
    .local v11, "event1":[F
    iget-object v12, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mPointTemp2:[F

    .line 192
    .local v12, "event2":[F
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    move/from16 v0, p3

    invoke-static {v2, v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$700(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;F)F

    move-result p3

    .line 193
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    move/from16 v0, p4

    invoke-static {v2, v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$800(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;F)F

    move-result p4

    .line 195
    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mScrollX:F

    sub-float v2, v2, p3

    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mScrollX:F

    .line 196
    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mScrollY:F

    sub-float v2, v2, p4

    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mScrollY:F

    .line 198
    sget-object v2, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$1;->$SwitchMap$com$miui$gallery$editor$photo$core$imports$doodle$DoodleEditorView$TouchAction:[I

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mTouchAction:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$TouchAction;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$TouchAction;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 241
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mActivationNode:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mActivationNode:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    invoke-static {v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$1700(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;)V

    .line 242
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->invalidate()V

    .line 243
    return-void

    .line 200
    :pswitch_0
    iget-boolean v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mScaleMode:Z

    if-eqz v2, :cond_2

    .line 201
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mActivationNode:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    if-eqz v2, :cond_0

    .line 202
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mActivationNode:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->moveDoodle(FFLcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;)V

    goto :goto_0

    .line 205
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mActivationNode:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    if-eqz v2, :cond_4

    .line 206
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mDownNode:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mDownNode:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mActivationNode:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    if-ne v2, v3, :cond_3

    .line 207
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mActivationNode:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->moveDoodle(FFLcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;)V

    goto :goto_0

    .line 209
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mScrollX:F

    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mScrollY:F

    invoke-direct {p0, v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->generateDoodle(FF)V

    goto :goto_0

    .line 212
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mScrollX:F

    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mScrollY:F

    invoke-direct {p0, v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->generateDoodle(FF)V

    goto :goto_0

    .line 217
    :pswitch_1
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    move-object/from16 v0, p1

    invoke-static {v2, v0, v11}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$900(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;Landroid/view/MotionEvent;[F)V

    .line 218
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    move-object/from16 v0, p2

    invoke-static {v2, v0, v12}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$1000(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;Landroid/view/MotionEvent;[F)V

    .line 220
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$1200(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->ROTATE:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v4}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$1100(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->getDecorationRect(Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Landroid/graphics/RectF;)V

    .line 221
    iget-object v13, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mPointTemp3:[F

    .line 222
    .local v13, "rotateCenter":[F
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$1100(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    aput v3, v13, v2

    .line 223
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$1100(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    aput v3, v13, v2

    .line 224
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v2, v13}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$1300(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;[F)V

    .line 225
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mActivationNode:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    const/4 v3, 0x0

    aget v3, v11, v3

    const/4 v4, 0x1

    aget v4, v11, v4

    const/4 v5, 0x0

    aget v5, v12, v5

    const/4 v6, 0x1

    aget v6, v12, v6

    const/4 v7, 0x0

    aget v9, v13, v7

    const/4 v7, 0x1

    aget v10, v13, v7

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-virtual/range {v2 .. v10}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->processRotateEvent(FFFFFFFF)V

    .line 226
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$1200(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->setDrawDecoration(Z)V

    goto/16 :goto_0

    .line 229
    .end local v13    # "rotateCenter":[F
    :pswitch_2
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    move-object/from16 v0, p1

    invoke-static {v2, v0, v11}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$1400(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;Landroid/view/MotionEvent;[F)V

    .line 230
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    move-object/from16 v0, p2

    invoke-static {v2, v0, v12}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$1500(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;Landroid/view/MotionEvent;[F)V

    .line 232
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$1200(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->SCALE:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v4}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$1100(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->getDecorationRect(Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Landroid/graphics/RectF;)V

    .line 233
    iget-object v14, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mPointTemp3:[F

    .line 234
    .local v14, "scaleCenter":[F
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$1100(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    aput v3, v14, v2

    .line 235
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$1100(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    aput v3, v14, v2

    .line 236
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v2, v14}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$1600(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;[F)V

    .line 237
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mActivationNode:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    const/4 v3, 0x0

    aget v3, v11, v3

    const/4 v4, 0x1

    aget v4, v11, v4

    const/4 v5, 0x0

    aget v5, v12, v5

    const/4 v6, 0x1

    aget v6, v12, v6

    const/4 v7, 0x0

    aget v9, v14, v7

    const/4 v7, 0x1

    aget v10, v14, v7

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-virtual/range {v2 .. v10}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->processScaleEvent(FFFFFFFF)V

    .line 238
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$1200(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->setDrawDecoration(Z)V

    goto/16 :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mTouchAction:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$TouchAction;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$TouchAction;->NONE:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$TouchAction;

    if-eq v0, v1, :cond_1

    .line 170
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$1;->$SwitchMap$com$miui$gallery$editor$photo$core$imports$doodle$DoodleEditorView$TouchAction:[I

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mTouchAction:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$TouchAction;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$TouchAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 172
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mActivationNode:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$500(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;)V

    goto :goto_0

    .line 176
    :cond_1
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mDownIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 177
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->clearActivation()V

    goto :goto_0

    .line 179
    :cond_2
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mDownIndex:I

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$300(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;->mDownIndex:I

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->access$600(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;I)V

    goto :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
