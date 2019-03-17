.class Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$11$2$1;
.super Ljava/lang/Object;
.source "MediaInfo.java"

# interfaces
.implements Lcom/nexstreaming/app/common/task/ResultTask$OnResultAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$11$2;->onTaskEvent(Lcom/nexstreaming/app/common/task/Task;Lcom/nexstreaming/app/common/task/Task$Event;)V
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
        "Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$11$2;


# direct methods
.method constructor <init>(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$11$2;)V
    .locals 0

    .prologue
    .line 715
    iput-object p1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$11$2$1;->a:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$11$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/nexstreaming/app/common/task/ResultTask;Lcom/nexstreaming/app/common/task/Task$Event;Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nexstreaming/app/common/task/ResultTask",
            "<",
            "Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$a;",
            ">;",
            "Lcom/nexstreaming/app/common/task/Task$Event;",
            "Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 720
    if-eqz p3, :cond_0

    .line 721
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$11$2$1;->a:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$11$2;

    iget-object v0, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$11$2;->a:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$11;

    iget-object v0, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$11;->a:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->c(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;

    move-result-object v0

    new-instance v1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/i;

    iget-object v2, p3, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$a;->d:Landroid/graphics/Bitmap;

    iget v3, p3, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$a;->a:I

    iget v4, p3, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$a;->b:I

    iget-object v5, p3, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$a;->c:[I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/i;-><init>(Landroid/graphics/Bitmap;II[I)V

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->sendResult(Ljava/lang/Object;)V

    .line 725
    :goto_0
    return-void

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$11$2$1;->a:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$11$2;

    iget-object v0, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$11$2;->a:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$11;

    iget-object v0, v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$11;->a:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->c(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->sendFailure(Lcom/nexstreaming/app/common/task/Task$TaskError;)V

    goto :goto_0
.end method

.method public synthetic onResultAvailable(Lcom/nexstreaming/app/common/task/ResultTask;Lcom/nexstreaming/app/common/task/Task$Event;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 715
    check-cast p3, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$11$2$1;->a(Lcom/nexstreaming/app/common/task/ResultTask;Lcom/nexstreaming/app/common/task/Task$Event;Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$a;)V

    return-void
.end method
