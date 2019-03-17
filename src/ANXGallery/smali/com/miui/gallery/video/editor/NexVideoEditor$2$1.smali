.class Lcom/miui/gallery/video/editor/NexVideoEditor$2$1;
.super Landroid/os/AsyncTask;
.source "NexVideoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/NexVideoEditor$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/video/editor/NexVideoEditor$2;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/NexVideoEditor$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/video/editor/NexVideoEditor$2;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$2$1;->this$1:Lcom/miui/gallery/video/editor/NexVideoEditor$2;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 207
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 208
    .local v2, "startTime":J
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$2$1;->this$1:Lcom/miui/gallery/video/editor/NexVideoEditor$2;

    iget-object v1, v1, Lcom/miui/gallery/video/editor/NexVideoEditor$2;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    iget-object v4, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$2$1;->this$1:Lcom/miui/gallery/video/editor/NexVideoEditor$2;

    iget-object v4, v4, Lcom/miui/gallery/video/editor/NexVideoEditor$2;->val$path:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$500(Lcom/miui/gallery/video/editor/NexVideoEditor;Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$2$1;->this$1:Lcom/miui/gallery/video/editor/NexVideoEditor$2;

    iget-object v1, v1, Lcom/miui/gallery/video/editor/NexVideoEditor$2;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$600(Lcom/miui/gallery/video/editor/NexVideoEditor;)V

    .line 210
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$2$1;->this$1:Lcom/miui/gallery/video/editor/NexVideoEditor$2;

    iget-object v1, v1, Lcom/miui/gallery/video/editor/NexVideoEditor$2;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$700(Lcom/miui/gallery/video/editor/NexVideoEditor;)V

    .line 211
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$2$1;->this$1:Lcom/miui/gallery/video/editor/NexVideoEditor$2;

    iget-object v1, v1, Lcom/miui/gallery/video/editor/NexVideoEditor$2;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$800(Lcom/miui/gallery/video/editor/NexVideoEditor;)V

    .line 212
    const-string v1, "NexVideoEditor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load project using :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 216
    .end local v2    # "startTime":J
    :goto_0
    return-object v1

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NexVideoEditor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doInBackground: e"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 202
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor$2$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 222
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 223
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$2$1;->this$1:Lcom/miui/gallery/video/editor/NexVideoEditor$2;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/NexVideoEditor$2;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$900(Lcom/miui/gallery/video/editor/NexVideoEditor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$2$1;->this$1:Lcom/miui/gallery/video/editor/NexVideoEditor$2;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/NexVideoEditor$2;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mDisplayWrapper:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->getDisplayView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 225
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$2$1;->this$1:Lcom/miui/gallery/video/editor/NexVideoEditor$2;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/NexVideoEditor$2;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/NexVideoEditor;->mDisplayWrapper:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$2$1;->this$1:Lcom/miui/gallery/video/editor/NexVideoEditor$2;

    iget-object v1, v1, Lcom/miui/gallery/video/editor/NexVideoEditor$2;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1000(Lcom/miui/gallery/video/editor/NexVideoEditor;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->setAspectRatio(F)V

    .line 226
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$2$1;->this$1:Lcom/miui/gallery/video/editor/NexVideoEditor$2;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/NexVideoEditor$2;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$2$1;->this$1:Lcom/miui/gallery/video/editor/NexVideoEditor$2;

    iget-object v1, v1, Lcom/miui/gallery/video/editor/NexVideoEditor$2;->val$listener:Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1100(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V

    .line 228
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$2$1;->this$1:Lcom/miui/gallery/video/editor/NexVideoEditor$2;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/NexVideoEditor$2;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$200(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->updateScreenMode()V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$2$1;->this$1:Lcom/miui/gallery/video/editor/NexVideoEditor$2;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/NexVideoEditor$2;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$400(Lcom/miui/gallery/video/editor/NexVideoEditor;I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 202
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor$2$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
