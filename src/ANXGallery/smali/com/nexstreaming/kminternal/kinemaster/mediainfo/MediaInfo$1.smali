.class Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$1;
.super Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;
.source "MediaInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->O()Lcom/nexstreaming/app/common/task/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/app/common/task/Task;

.field final synthetic b:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;


# direct methods
.method constructor <init>(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Lcom/nexstreaming/app/common/task/Task;)V
    .locals 0

    .prologue
    .line 479
    iput-object p1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$1;->b:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

    iput-object p6, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$1;->a:Lcom/nexstreaming/app/common/task/Task;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/f;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    .line 483
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$1;->b:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->a(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 484
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$1;->a:Lcom/nexstreaming/app/common/task/Task;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/nexstreaming/app/common/task/Task$Event;

    const/4 v2, 0x0

    sget-object v3, Lcom/nexstreaming/app/common/task/Task$Event;->SUCCESS:Lcom/nexstreaming/app/common/task/Task$Event;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/nexstreaming/app/common/task/Task$Event;->COMPLETE:Lcom/nexstreaming/app/common/task/Task$Event;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/task/Task;->signalEvent([Lcom/nexstreaming/app/common/task/Task$Event;)V

    .line 485
    return-void
.end method

.method protected a(Lcom/nexstreaming/app/common/task/Task$TaskError;)V
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$1;->b:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->a(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 490
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$1;->a:Lcom/nexstreaming/app/common/task/Task;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/app/common/task/Task;->sendFailure(Lcom/nexstreaming/app/common/task/Task$TaskError;)V

    .line 492
    return-void
.end method
