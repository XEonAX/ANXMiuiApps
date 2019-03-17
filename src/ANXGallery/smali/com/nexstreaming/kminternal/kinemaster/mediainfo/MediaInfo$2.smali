.class Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$2;
.super Ljava/lang/Object;
.source "MediaInfo.java"

# interfaces
.implements Lcom/nexstreaming/app/common/task/ResultTask$OnResultAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->c()Lcom/nexstreaming/app/common/task/ResultTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nexstreaming/app/common/task/ResultTask$OnResultAvailableListener",
        "<",
        "Lcom/nexstreaming/kminternal/kinemaster/mediainfo/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;


# direct methods
.method constructor <init>(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)V
    .locals 0

    .prologue
    .line 939
    iput-object p1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$2;->a:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/nexstreaming/app/common/task/ResultTask;Lcom/nexstreaming/app/common/task/Task$Event;Lcom/nexstreaming/kminternal/kinemaster/mediainfo/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nexstreaming/app/common/task/ResultTask",
            "<",
            "Lcom/nexstreaming/kminternal/kinemaster/mediainfo/b;",
            ">;",
            "Lcom/nexstreaming/app/common/task/Task$Event;",
            "Lcom/nexstreaming/kminternal/kinemaster/mediainfo/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 942
    if-eqz p3, :cond_0

    .line 943
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$2;->a:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->h(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->sendResult(Ljava/lang/Object;)V

    .line 952
    :goto_0
    return-void

    .line 945
    :cond_0
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->H()Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v0

    .line 946
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->I()Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 947
    :cond_1
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->I()Ljava/util/Deque;

    move-result-object v0

    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$2;->a:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

    invoke-static {v1}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->h(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 949
    :cond_2
    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$2;->a:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

    invoke-static {v1}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->b(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$2;->a:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

    invoke-static {v2}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->f(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$2;->a:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

    invoke-static {v3}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->h(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->getTaskId()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Ljava/lang/String;Ljava/io/File;I)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    goto :goto_0
.end method

.method public synthetic onResultAvailable(Lcom/nexstreaming/app/common/task/ResultTask;Lcom/nexstreaming/app/common/task/Task$Event;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 939
    check-cast p3, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/b;

    invoke-virtual {p0, p1, p2, p3}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$2;->a(Lcom/nexstreaming/app/common/task/ResultTask;Lcom/nexstreaming/app/common/task/Task$Event;Lcom/nexstreaming/kminternal/kinemaster/mediainfo/b;)V

    return-void
.end method
