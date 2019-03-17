.class Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$12;
.super Ljava/lang/Object;
.source "MediaInfo.java"

# interfaces
.implements Lcom/nexstreaming/app/common/task/ResultTask$OnResultAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->b()Lcom/nexstreaming/app/common/task/ResultTask;
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
.field final synthetic a:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;


# direct methods
.method constructor <init>(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)V
    .locals 0

    .prologue
    .line 745
    iput-object p1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$12;->a:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

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
    .line 748
    if-eqz p3, :cond_1

    iget-object v0, p3, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$a;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget v0, p3, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$a;->a:I

    if-lez v0, :cond_1

    iget v0, p3, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$a;->b:I

    if-lez v0, :cond_1

    iget-object v0, p3, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$a;->c:[I

    if-eqz v0, :cond_1

    .line 749
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$12;->a:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->c(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;

    move-result-object v0

    new-instance v1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/i;

    iget-object v2, p3, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$a;->d:Landroid/graphics/Bitmap;

    iget v3, p3, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$a;->a:I

    iget v4, p3, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$a;->b:I

    iget-object v5, p3, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$a;->c:[I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/i;-><init>(Landroid/graphics/Bitmap;II[I)V

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->sendResult(Ljava/lang/Object;)V

    .line 768
    :cond_0
    :goto_0
    return-void

    .line 751
    :cond_1
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->H()Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v0

    .line 752
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->F()Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 753
    :goto_1
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->F()Ljava/util/Deque;

    move-result-object v1

    iget-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$12;->a:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

    invoke-static {v2}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->c(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 754
    if-eqz v0, :cond_0

    .line 755
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->E()V

    goto :goto_0

    .line 752
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public synthetic onResultAvailable(Lcom/nexstreaming/app/common/task/ResultTask;Lcom/nexstreaming/app/common/task/Task$Event;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 745
    check-cast p3, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$12;->a(Lcom/nexstreaming/app/common/task/ResultTask;Lcom/nexstreaming/app/common/task/Task$Event;Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$a;)V

    return-void
.end method
