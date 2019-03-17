.class Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$15;
.super Ljava/lang/Object;
.source "MediaInfo.java"

# interfaces
.implements Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$d;


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
        "Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$d",
        "<",
        "Lcom/nexstreaming/kminternal/kinemaster/mediainfo/b;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;


# direct methods
.method constructor <init>(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)V
    .locals 0

    .prologue
    .line 918
    iput-object p1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$15;->a:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c",
            "<",
            "Lcom/nexstreaming/kminternal/kinemaster/mediainfo/b;",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 921
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->INVALID_STATE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    if-ne p2, v0, :cond_0

    .line 922
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->I()Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 936
    :goto_0
    return-void

    .line 925
    :cond_0
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->J()V

    .line 926
    invoke-static {p1}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->b(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;)Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->g(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)Lcom/nexstreaming/app/common/task/ResultTask;

    move-result-object v0

    new-instance v1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$15$1;

    invoke-direct {v1, p0, p1}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$15$1;-><init>(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$15;Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;)V

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/task/ResultTask;->onResultAvailable(Lcom/nexstreaming/app/common/task/ResultTask$OnResultAvailableListener;)Lcom/nexstreaming/app/common/task/ResultTask;

    goto :goto_0
.end method
