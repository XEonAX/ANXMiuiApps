.class Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$14;
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

.field final synthetic c:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;


# direct methods
.method constructor <init>(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;II)V
    .locals 0

    .prologue
    .line 648
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$14;->c:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;

    iput p2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$14;->a:I

    iput p3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$14;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 650
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$14;->c:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 651
    const-string v0, "NexEditorEventHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VIDEOEDITOR_EVENT_GETCLIPINFO_STOP_DONE deliver to editor p1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$14;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", p2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$14;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$14;->c:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v0

    sget-object v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->GETCLIPINFO_USER_CANCEL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$14;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->c(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;I)V

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$14;->c:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;->c(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;)Lcom/nexstreaming/kminternal/nexvideoeditor/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 655
    const-string v0, "NexEditorEventHandler"

    const-string v1, "VIDEOEDITOR_EVENT_GETCLIPINFO_STOP_DONE deliver to UI listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$14;->c:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;->c(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;)Lcom/nexstreaming/kminternal/nexvideoeditor/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/c;->d()V

    .line 660
    :cond_1
    return-void
.end method
