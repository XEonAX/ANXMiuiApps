.class Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12$1$1;
.super Ljava/lang/Object;
.source "RecorderThumbnailWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12$1;


# direct methods
.method constructor <init>(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12$1;

    .prologue
    .line 484
    iput-object p1, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12$1$1;->this$2:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12$1$1;->this$2:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12$1;

    iget-object v0, v0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12$1;->this$1:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12;

    iget-object v0, v0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-static {v0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$600(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12$1$1;->this$2:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12$1;

    iget-object v1, v1, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12$1;->this$1:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12;

    iget-object v1, v1, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-static {v1}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$1000(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 488
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12$1$1;->this$2:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12$1;

    iget-object v0, v0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12$1;->this$1:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12;

    iget-object v0, v0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-static {v0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$400(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 489
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12$1$1;->this$2:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12$1;

    iget-object v0, v0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12$1;->this$1:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12;

    iget-object v0, v0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$702(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;Z)Z

    .line 490
    return-void
.end method
