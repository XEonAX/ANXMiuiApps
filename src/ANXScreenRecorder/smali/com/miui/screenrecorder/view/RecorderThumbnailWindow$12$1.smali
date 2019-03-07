.class Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12$1;
.super Ljava/lang/Object;
.source "RecorderThumbnailWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12;


# direct methods
.method constructor <init>(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12;

    .prologue
    .line 480
    iput-object p1, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12$1;->this$1:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12$1;->this$1:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12;

    iget-object v0, v0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-static {v0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$1400(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12$1$1;

    invoke-direct {v1, p0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12$1$1;-><init>(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 492
    return-void
.end method
