.class Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$5;
.super Ljava/lang/Object;
.source "NexEditorEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;->notifyEvent(IIIII)I
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

.field final synthetic e:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;


# direct methods
.method constructor <init>(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;IIII)V
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$5;->e:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;

    iput p2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$5;->a:I

    iput p3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$5;->b:I

    iput p4, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$5;->c:I

    iput p5, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$5;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 521
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$5;->e:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 522
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$5;->a:I

    if-ne v0, v3, :cond_2

    .line 523
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$5;->e:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->v()V

    .line 528
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$5;->e:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;->c(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;)Lcom/nexstreaming/kminternal/nexvideoeditor/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 529
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$5;->a:I

    if-ne v0, v3, :cond_3

    .line 530
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$5;->e:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;->c(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;)Lcom/nexstreaming/kminternal/nexvideoeditor/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/c;->a()V

    .line 539
    :cond_1
    :goto_1
    return-void

    .line 525
    :cond_2
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$5;->e:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v0

    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$5;->b:I

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$5;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->d(II)V

    goto :goto_0

    .line 532
    :cond_3
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$5;->d:I

    if-eqz v0, :cond_4

    .line 533
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$5;->e:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;->c(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;)Lcom/nexstreaming/kminternal/nexvideoeditor/c;

    move-result-object v0

    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$5;->d:I

    invoke-static {v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->fromValue(I)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/c;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V

    goto :goto_1

    .line 535
    :cond_4
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$5;->e:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;->c(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;)Lcom/nexstreaming/kminternal/nexvideoeditor/c;

    move-result-object v0

    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$5;->b:I

    invoke-interface {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/c;->b(I)V

    goto :goto_1
.end method
