.class Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$1;
.super Ljava/lang/Object;
.source "NexEditor.java"

# interfaces
.implements Lcom/nexstreaming/app/common/task/Task$OnFailListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Landroid/content/Context;)Lcom/nexstreaming/app/common/task/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;


# direct methods
.method constructor <init>(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$1;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/nexstreaming/app/common/task/Task;Lcom/nexstreaming/app/common/task/Task$Event;Lcom/nexstreaming/app/common/task/Task$TaskError;)V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$1;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)Lcom/nexstreaming/app/common/task/Task;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/nexstreaming/app/common/task/Task;->sendFailure(Lcom/nexstreaming/app/common/task/Task$TaskError;)V

    .line 281
    return-void
.end method
