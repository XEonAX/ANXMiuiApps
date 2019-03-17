.class Lcom/miui/gallery/video/editor/NexVideoEditor$10;
.super Lcom/nexstreaming/nexeditorsdk/nexEngine$OnAutoTrimResultListener;
.source "NexVideoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/NexVideoEditor;->autoTrim(ILcom/miui/gallery/video/editor/VideoEditor$TrimStateInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

.field final synthetic val$time:I


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/NexVideoEditor;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 904
    iput-object p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$10;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    iput p2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$10;->val$time:I

    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine$OnAutoTrimResultListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoTrimResult(I[I)V
    .locals 9
    .param p1, "k"    # I
    .param p2, "arrayData"    # [I

    .prologue
    const/4 v8, 0x1

    .line 907
    if-eqz p2, :cond_0

    array-length v6, p2

    if-nez v6, :cond_1

    .line 961
    :cond_0
    :goto_0
    return-void

    .line 910
    :cond_1
    iget-object v6, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$10;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v6}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1500(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/nexstreaming/nexeditorsdk/nexProject;->allClear(Z)V

    .line 911
    iget-object v6, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$10;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v6}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1400(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTotalTime()I

    move-result v5

    .line 912
    .local v5, "totalTime":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, p2

    if-ge v2, v6, :cond_3

    .line 914
    iget-object v6, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$10;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v6}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1400(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v6

    invoke-static {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->dup(Lcom/nexstreaming/nexeditorsdk/nexClip;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    .line 915
    .local v0, "clip":Lcom/nexstreaming/nexeditorsdk/nexClip;
    iget-object v6, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$10;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v6}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1500(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 916
    aget v4, p2, v2

    .line 917
    .local v4, "startTime":I
    if-lt v4, v5, :cond_2

    .line 918
    aget v6, p2, v2

    iget v7, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$10;->val$time:I

    div-int/lit8 v7, v7, 0x5

    add-int v1, v6, v7

    .line 922
    .local v1, "endTime":I
    :goto_2
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v6

    invoke-virtual {v6, v4, v1}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->setTrim(II)V

    .line 923
    iget-object v6, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$10;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v6}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$100(Lcom/miui/gallery/video/editor/NexVideoEditor;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setRotateDegree(I)V

    .line 924
    iget-object v6, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$10;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v6}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$200(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexEngine;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$10;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v7}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1500(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setProject(Lcom/nexstreaming/nexeditorsdk/nexProject;)V

    .line 912
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 920
    .end local v1    # "endTime":I
    :cond_2
    aget v6, p2, v2

    iget v7, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$10;->val$time:I

    div-int/lit8 v7, v7, 0x5

    add-int/2addr v6, v7

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .restart local v1    # "endTime":I
    goto :goto_2

    .line 926
    .end local v0    # "clip":Lcom/nexstreaming/nexeditorsdk/nexClip;
    .end local v1    # "endTime":I
    .end local v4    # "startTime":I
    :cond_3
    iget-object v6, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$10;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v6}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1400(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, Lcom/miui/gallery/video/editor/util/FileHelper;->generateOutputFilePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 927
    .local v3, "outPutFilePath":Ljava/lang/String;
    iget-object v6, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$10;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v6}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$2100(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/miui/gallery/video/editor/VideoEditor$TrimStateInterface;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 928
    iget-object v6, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$10;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v6}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$2100(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/miui/gallery/video/editor/VideoEditor$TrimStateInterface;

    move-result-object v6

    invoke-interface {v6, v3}, Lcom/miui/gallery/video/editor/VideoEditor$TrimStateInterface;->onTrimEnd(Ljava/lang/String;)V

    .line 930
    :cond_4
    iget-object v6, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$10;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$400(Lcom/miui/gallery/video/editor/NexVideoEditor;I)V

    .line 931
    iget-object v6, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$10;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v6}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$2300(Lcom/miui/gallery/video/editor/NexVideoEditor;)Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/miui/gallery/video/editor/NexVideoEditor$10$1;

    invoke-direct {v7, p0, v3}, Lcom/miui/gallery/video/editor/NexVideoEditor$10$1;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor$10;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
