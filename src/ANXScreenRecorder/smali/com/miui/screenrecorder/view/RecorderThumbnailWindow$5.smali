.class Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecorderThumbnailWindow.java"


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
    .line 239
    iput-object p1, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$5;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$5;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-static {v0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$300(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 244
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$5;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-static {v0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$400(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method
