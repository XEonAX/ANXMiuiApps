.class Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$11;
.super Ljava/lang/Object;
.source "RecorderThumbnailWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 428
    iput-object p1, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$11;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 432
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$11;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-static {v0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$1100(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$11;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    iget-object v1, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$11;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-static {v1}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$1200(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$1300(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$11;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-static {v0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$1100(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$11;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-static {v0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$1400(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 438
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$11;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-static {v0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$1400(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->buildLayer()V

    .line 439
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$11;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-static {v0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$1500(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 440
    return-void
.end method
