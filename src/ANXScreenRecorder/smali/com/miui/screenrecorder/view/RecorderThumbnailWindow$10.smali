.class Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecorderThumbnailWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->startAnimation()V
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
    .line 418
    iput-object p1, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$10;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 421
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$10;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-static {v0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$800(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$10;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-static {v0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$900(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)V

    .line 426
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$10;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-static {v0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$600(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$10;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-static {v1}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$1000(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method
