.class Lcom/miui/gallery/editor/photo/sdk/RenderTask$1;
.super Ljava/lang/Object;
.source "RenderTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/sdk/RenderTask;->performItemFinish(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/sdk/RenderTask;

.field final synthetic val$out:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/sdk/RenderTask;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/sdk/RenderTask;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask$1;->this$0:Lcom/miui/gallery/editor/photo/sdk/RenderTask;

    iput-object p2, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask$1;->val$out:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask$1;->this$0:Lcom/miui/gallery/editor/photo/sdk/RenderTask;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->access$100(Lcom/miui/gallery/editor/photo/sdk/RenderTask;)Lcom/miui/gallery/editor/photo/sdk/RenderTask$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask$1;->this$0:Lcom/miui/gallery/editor/photo/sdk/RenderTask;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->access$100(Lcom/miui/gallery/editor/photo/sdk/RenderTask;)Lcom/miui/gallery/editor/photo/sdk/RenderTask$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask$1;->this$0:Lcom/miui/gallery/editor/photo/sdk/RenderTask;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->access$200(Lcom/miui/gallery/editor/photo/sdk/RenderTask;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask$1;->val$out:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Lcom/miui/gallery/editor/photo/sdk/RenderTask$Callback;->onItemFinish(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask$1;->this$0:Lcom/miui/gallery/editor/photo/sdk/RenderTask;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->access$300(Lcom/miui/gallery/editor/photo/sdk/RenderTask;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    const-string v0, "RenderTask"

    const-string v1, "render cancelled."

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask$1;->this$0:Lcom/miui/gallery/editor/photo/sdk/RenderTask;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->access$100(Lcom/miui/gallery/editor/photo/sdk/RenderTask;)Lcom/miui/gallery/editor/photo/sdk/RenderTask$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask$1;->this$0:Lcom/miui/gallery/editor/photo/sdk/RenderTask;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->access$100(Lcom/miui/gallery/editor/photo/sdk/RenderTask;)Lcom/miui/gallery/editor/photo/sdk/RenderTask$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/sdk/RenderTask$Callback;->onTaskCancelled()V

    .line 125
    :cond_1
    :goto_0
    return-void

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask$1;->this$0:Lcom/miui/gallery/editor/photo/sdk/RenderTask;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->access$400(Lcom/miui/gallery/editor/photo/sdk/RenderTask;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask$1;->this$0:Lcom/miui/gallery/editor/photo/sdk/RenderTask;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->access$100(Lcom/miui/gallery/editor/photo/sdk/RenderTask;)Lcom/miui/gallery/editor/photo/sdk/RenderTask$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask$1;->this$0:Lcom/miui/gallery/editor/photo/sdk/RenderTask;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->access$100(Lcom/miui/gallery/editor/photo/sdk/RenderTask;)Lcom/miui/gallery/editor/photo/sdk/RenderTask$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/sdk/RenderTask$Callback;->onTaskFinish()V

    goto :goto_0
.end method
