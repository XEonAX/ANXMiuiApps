.class Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$8;
.super Ljava/lang/Object;
.source "RecorderThumbnailWindow.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->quitThumbnailWindow(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

.field final synthetic val$initWindowY:I


# direct methods
.method constructor <init>(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$8;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    iput p2, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$8;->val$initWindowY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 307
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 308
    .local v0, "value":I
    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$8;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    iget v2, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$8;->val$initWindowY:I

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$200(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;I)V

    .line 309
    return-void
.end method
