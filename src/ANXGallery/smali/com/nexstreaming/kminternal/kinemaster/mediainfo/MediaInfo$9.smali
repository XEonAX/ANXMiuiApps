.class Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$9;
.super Ljava/lang/Object;
.source "MediaInfo.java"

# interfaces
.implements Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->a(IIIIII[ILcom/nexstreaming/kminternal/kinemaster/mediainfo/c;)Lcom/nexstreaming/app/common/task/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$d",
        "<",
        "Lcom/nexstreaming/kminternal/kinemaster/mediainfo/h;",
        "Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/c;

.field final synthetic c:I

.field final synthetic d:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;


# direct methods
.method constructor <init>(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;Ljava/io/File;Lcom/nexstreaming/kminternal/kinemaster/mediainfo/c;I)V
    .locals 0

    .prologue
    .line 553
    iput-object p1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$9;->d:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

    iput-object p2, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$9;->a:Ljava/io/File;

    iput-object p3, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$9;->b:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/c;

    iput p4, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$9;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c",
            "<",
            "Lcom/nexstreaming/kminternal/kinemaster/mediainfo/h;",
            "Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$f;",
            ">;",
            "Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;",
            ")V"
        }
    .end annotation

    .prologue
    const/high16 v1, 0x40000

    const/4 v3, 0x0

    .line 557
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->NONE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    if-eq p2, v0, :cond_8

    .line 559
    iget-boolean v0, p1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->b:Z

    if-eqz v0, :cond_1

    .line 561
    const-string v0, "MediaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDetailThumbnails::onEditorAsyncDone : User Cancel ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->getTaskId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iput v3, p1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->a:I

    .line 563
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$9;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 564
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->GETCLIPINFO_USER_CANCEL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {p1, v0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->sendFailure(Lcom/nexstreaming/app/common/task/Task$TaskError;)V

    .line 565
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->E()V

    .line 643
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    iget v0, p1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->a:I

    .line 571
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$9;->b:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/c;

    instance-of v0, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/e;

    if-eqz v0, :cond_2

    .line 572
    iput v3, p1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->a:I

    .line 573
    const-string v0, "MediaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDetailThumbnails::Raw File. No RETRYING="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->getTaskId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_2
    iget v0, p1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->a:I

    if-lez v0, :cond_5

    .line 578
    const-string v0, "MediaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDetailThumbnails::onEditorAsyncDone : RETRYING="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->getTaskId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$9;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 580
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->GETCLIPINFO_USER_CANCEL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    if-eq p2, v0, :cond_3

    iget-boolean v0, p1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->b:Z

    if-eqz v0, :cond_4

    .line 581
    :cond_3
    iput v3, p1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->a:I

    .line 582
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->GETCLIPINFO_USER_CANCEL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {p1, v0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->sendFailure(Lcom/nexstreaming/app/common/task/Task$TaskError;)V

    .line 583
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->E()V

    goto :goto_0

    .line 585
    :cond_4
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->F()Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 586
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->INPROGRESS_GETCLIPINFO:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    if-eq p2, v0, :cond_0

    .line 587
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->E()V

    goto/16 :goto_0

    .line 597
    :cond_5
    const-string v0, "MediaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDetailThumbnails::onEditorAsyncDone : SEND FAILURE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cancel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->GETCLIPINFO_USER_CANCEL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    if-eq p2, v0, :cond_6

    iget-boolean v0, p1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->b:Z

    if-eqz v0, :cond_7

    .line 599
    :cond_6
    iput v3, p1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->a:I

    .line 602
    :cond_7
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$9;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 603
    invoke-virtual {p1, p2}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->sendFailure(Lcom/nexstreaming/app/common/task/Task$TaskError;)V

    .line 604
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->E()V

    goto/16 :goto_0

    .line 608
    :cond_8
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->E()V

    .line 609
    invoke-static {p1}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->a(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$f;

    iget v0, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$f;->h:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    .line 610
    const-string v0, "MediaInfo"

    const-string v1, "getDetailThumbnails::onEditorAsyncDone() no cache mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nexstreaming/app/common/task/Task$Event;

    sget-object v1, Lcom/nexstreaming/app/common/task/Task$Event;->SUCCESS:Lcom/nexstreaming/app/common/task/Task$Event;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    sget-object v2, Lcom/nexstreaming/app/common/task/Task$Event;->COMPLETE:Lcom/nexstreaming/app/common/task/Task$Event;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->signalEvent([Lcom/nexstreaming/app/common/task/Task$Event;)V

    .line 612
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/a;->a()Lcom/nexstreaming/kminternal/kinemaster/mediainfo/h;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->sendResult(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 615
    :cond_9
    const-string v0, "MediaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDetailThumbnails::onEditorAsyncDone("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$9;->d:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

    invoke-static {v2}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->b(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$9;->a:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$9$1;

    invoke-direct {v0, p0, p1}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$9$1;-><init>(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$9;Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;)V

    .line 641
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->G()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$9$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method
