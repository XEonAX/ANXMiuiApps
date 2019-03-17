.class Lcom/miui/gallery/video/editor/ui/MenuFragment$2$1;
.super Ljava/lang/Object;
.source "MenuFragment.java"

# interfaces
.implements Lcom/miui/gallery/net/download/Request$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/ui/MenuFragment$2;->downloadResource(Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/video/editor/ui/MenuFragment$2;

.field final synthetic val$data:Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;

.field final synthetic val$position:I

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/ui/MenuFragment$2;JILcom/miui/gallery/video/editor/model/VideoEditorBaseModel;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/video/editor/ui/MenuFragment$2;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2$1;->this$1:Lcom/miui/gallery/video/editor/ui/MenuFragment$2;

    iput-wide p2, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2$1;->val$startTime:J

    iput p4, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2$1;->val$position:I

    iput-object p5, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2$1;->val$data:Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 3
    .param p1, "resultCode"    # I

    .prologue
    .line 168
    if-nez p1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2$1;->this$1:Lcom/miui/gallery/video/editor/ui/MenuFragment$2;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2$1;->val$data:Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;

    iget v2, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2$1;->val$position:I

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/video/editor/ui/MenuFragment$2;->access$000(Lcom/miui/gallery/video/editor/ui/MenuFragment$2;Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;I)V

    .line 181
    :goto_0
    return-void

    .line 171
    :cond_0
    new-instance v0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2$1$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment$2$1$1;-><init>(Lcom/miui/gallery/video/editor/ui/MenuFragment$2$1;)V

    invoke-static {v0}, Lcom/miui/gallery/threadpool/ThreadManager;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onProgressUpdate(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 163
    const-string v0, "MenuFragment"

    const-string v1, "downloadResource onProgressUpdate:  %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    .line 157
    const-string v0, "MenuFragment"

    const-string v1, "downloadResource receive  download callback : %d ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2$1;->val$startTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2$1;->this$1:Lcom/miui/gallery/video/editor/ui/MenuFragment$2;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2;->this$0:Lcom/miui/gallery/video/editor/ui/MenuFragment;

    iget v1, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->notifyDateSetChanged(I)V

    .line 159
    return-void
.end method
