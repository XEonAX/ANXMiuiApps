.class Lcom/nexstreaming/nexeditorsdk/nexEngine$4;
.super Ljava/lang/Object;
.source "nexEngine.java"

# interfaces
.implements Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/nexeditorsdk/nexEngine;->transcode(Ljava/lang/String;IIIJII)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/nexstreaming/nexeditorsdk/nexEngine;


# direct methods
.method constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexEngine;II)V
    .locals 0

    .prologue
    .line 2099
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$4;->c:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    iput p2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$4;->a:I

    iput p3, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskEvent(Lcom/nexstreaming/app/common/task/Task;Lcom/nexstreaming/app/common/task/Task$Event;)V
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 2103
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$4;->c:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$1500(Lcom/nexstreaming/nexeditorsdk/nexEngine;Z)V

    .line 2104
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$4;->c:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$1600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)V

    .line 2107
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$4;->a:I

    sparse-switch v0, :sswitch_data_0

    move v0, v8

    .line 2118
    :goto_0
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$4;->c:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    iget-boolean v1, v1, Lcom/nexstreaming/nexeditorsdk/nexEngine;->bNeedScaling:Z

    if-eqz v1, :cond_0

    .line 2119
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$4;->c:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    iput-boolean v8, v1, Lcom/nexstreaming/nexeditorsdk/nexEngine;->bNeedScaling:Z

    .line 2120
    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    .line 2123
    :cond_0
    or-int/lit16 v11, v0, 0x1000

    .line 2124
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$4;->c:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$1700(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v0

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$1800()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(I[B)V

    .line 2125
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$4;->c:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$1700(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v1

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$4;->c:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$1900(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$4;->c:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$2000(Lcom/nexstreaming/nexeditorsdk/nexEngine;)I

    move-result v3

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$4;->c:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$2100(Lcom/nexstreaming/nexeditorsdk/nexEngine;)I

    move-result v4

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$4;->c:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$2200(Lcom/nexstreaming/nexeditorsdk/nexEngine;)I

    move-result v5

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$4;->c:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$2300(Lcom/nexstreaming/nexeditorsdk/nexEngine;)J

    move-result-wide v6

    iget v10, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$4;->b:I

    move v9, v8

    invoke-virtual/range {v1 .. v11}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Ljava/lang/String;IIIJIZII)Lcom/nexstreaming/app/common/task/Task;

    move-result-object v0

    new-instance v1, Lcom/nexstreaming/nexeditorsdk/nexEngine$4$1;

    invoke-direct {v1, p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine$4$1;-><init>(Lcom/nexstreaming/nexeditorsdk/nexEngine$4;)V

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/task/Task;->onFailure(Lcom/nexstreaming/app/common/task/Task$OnFailListener;)Lcom/nexstreaming/app/common/task/Task;

    .line 2132
    return-void

    .line 2109
    :sswitch_0
    const/16 v0, 0x10

    .line 2110
    goto :goto_0

    .line 2112
    :sswitch_1
    const/16 v0, 0x20

    .line 2113
    goto :goto_0

    .line 2115
    :sswitch_2
    const/16 v0, 0x40

    goto :goto_0

    .line 2107
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method
