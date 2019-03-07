.class Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$4;
.super Ljava/lang/Object;
.source "RecorderThumbnailWindow.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->onThumbnailViewTouch(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;


# direct methods
.method constructor <init>(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$4;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 235
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 236
    .local v0, "value":I
    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$4;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-static {v1, v0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$200(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;I)V

    .line 237
    return-void
.end method
