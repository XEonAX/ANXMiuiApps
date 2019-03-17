.class Lcom/nexstreaming/nexeditorsdk/nexEngine$14;
.super Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$f;
.source "nexEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/nexeditorsdk/nexEngine;->exportSaveStop(Lcom/nexstreaming/nexeditorsdk/nexEngine$OnCompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/nexeditorsdk/nexEngine$OnCompletionListener;

.field final synthetic b:Lcom/nexstreaming/nexeditorsdk/nexEngine;


# direct methods
.method constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexEngine;Lcom/nexstreaming/nexeditorsdk/nexEngine$OnCompletionListener;)V
    .locals 0

    .prologue
    .line 1103
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$14;->b:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    iput-object p2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$14;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine$OnCompletionListener;

    invoke-direct {p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V
    .locals 2

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$14;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine$OnCompletionListener;

    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine$OnCompletionListener;->onComplete(I)V

    .line 1107
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$14;->b:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$102(Lcom/nexstreaming/nexeditorsdk/nexEngine;I)I

    .line 1108
    return-void
.end method
