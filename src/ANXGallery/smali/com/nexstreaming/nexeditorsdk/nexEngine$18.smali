.class Lcom/nexstreaming/nexeditorsdk/nexEngine$18;
.super Ljava/lang/Object;
.source "nexEngine.java"

# interfaces
.implements Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/nexeditorsdk/nexEngine;->export(Ljava/lang/String;IIIJIIIIII)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:Lcom/nexstreaming/nexeditorsdk/nexEngine;


# direct methods
.method constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexEngine;IIIIII)V
    .locals 0

    .prologue
    .line 1612
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$18;->g:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    iput p2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$18;->a:I

    iput p3, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$18;->b:I

    iput p4, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$18;->c:I

    iput p5, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$18;->d:I

    iput p6, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$18;->e:I

    iput p7, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$18;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskEvent(Lcom/nexstreaming/app/common/task/Task;Lcom/nexstreaming/app/common/task/Task$Event;)V
    .locals 18

    .prologue
    .line 1616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$18;->g:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$1500(Lcom/nexstreaming/nexeditorsdk/nexEngine;Z)V

    .line 1617
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$18;->g:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$1600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)V

    .line 1619
    const/4 v2, 0x0

    .line 1620
    move-object/from16 v0, p0

    iget v3, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$18;->a:I

    sparse-switch v3, :sswitch_data_0

    .line 1631
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$18;->g:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    iget-boolean v3, v3, Lcom/nexstreaming/nexeditorsdk/nexEngine;->bNeedScaling:Z

    if-eqz v3, :cond_0

    .line 1632
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$18;->g:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/nexstreaming/nexeditorsdk/nexEngine;->bNeedScaling:Z

    .line 1633
    const/high16 v3, 0x100000

    or-int v17, v2, v3

    .line 1635
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$18;->g:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$1700(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$i;)V

    .line 1636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$18;->g:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$1700(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v2

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$1800()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(I[B)V

    .line 1637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$18;->g:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$1700(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$18;->g:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$1900(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$18;->g:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$2000(Lcom/nexstreaming/nexeditorsdk/nexEngine;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$18;->g:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$2100(Lcom/nexstreaming/nexeditorsdk/nexEngine;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$18;->g:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$2200(Lcom/nexstreaming/nexeditorsdk/nexEngine;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$18;->g:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$2300(Lcom/nexstreaming/nexeditorsdk/nexEngine;)J

    move-result-wide v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$18;->b:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$18;->c:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$18;->d:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$18;->e:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$18;->f:I

    move/from16 v16, v0

    invoke-virtual/range {v3 .. v17}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Ljava/lang/String;IIIJIZIIIIII)Lcom/nexstreaming/app/common/task/Task;

    move-result-object v2

    new-instance v3, Lcom/nexstreaming/nexeditorsdk/nexEngine$18$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine$18$1;-><init>(Lcom/nexstreaming/nexeditorsdk/nexEngine$18;)V

    invoke-virtual {v2, v3}, Lcom/nexstreaming/app/common/task/Task;->onFailure(Lcom/nexstreaming/app/common/task/Task$OnFailListener;)Lcom/nexstreaming/app/common/task/Task;

    .line 1644
    return-void

    .line 1622
    :sswitch_0
    const/16 v2, 0x10

    .line 1623
    goto/16 :goto_0

    .line 1625
    :sswitch_1
    const/16 v2, 0x20

    .line 1626
    goto/16 :goto_0

    .line 1628
    :sswitch_2
    const/16 v2, 0x40

    goto/16 :goto_0

    :cond_0
    move/from16 v17, v2

    goto/16 :goto_1

    .line 1620
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method
