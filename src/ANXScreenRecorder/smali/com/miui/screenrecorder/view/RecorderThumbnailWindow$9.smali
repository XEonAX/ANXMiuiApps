.class Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecorderThumbnailWindow.java"


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


# direct methods
.method constructor <init>(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$9;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$9;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-static {v0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$300(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 317
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$9;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-static {v0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$600(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$9;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-static {v1}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$300(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 316
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$9;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$702(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;Z)Z

    goto :goto_0
.end method
