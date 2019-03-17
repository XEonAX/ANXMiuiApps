.class Lcom/nexstreaming/nexeditorsdk/nexEngine$16;
.super Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;
.source "nexEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/nexeditorsdk/nexEngine;->seekIDROnly(ILcom/nexstreaming/nexeditorsdk/nexEngine$OnSeekCompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/nexeditorsdk/nexEngine$OnSeekCompletionListener;

.field final synthetic b:Lcom/nexstreaming/nexeditorsdk/nexEngine;


# direct methods
.method constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexEngine;Lcom/nexstreaming/nexeditorsdk/nexEngine$OnSeekCompletionListener;)V
    .locals 0

    .prologue
    .line 1370
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$16;->b:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    iput-object p2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$16;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine$OnSeekCompletionListener;

    invoke-direct {p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1387
    const-string v0, "seekIDROnly"

    return-object v0
.end method

.method public a(II)V
    .locals 2

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$16;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine$OnSeekCompletionListener;

    if-eqz v0, :cond_0

    .line 1374
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$16;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine$OnSeekCompletionListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/nexstreaming/nexeditorsdk/nexEngine$OnSeekCompletionListener;->onSeekComplete(III)V

    .line 1376
    :cond_0
    return-void
.end method

.method public a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1380
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$16;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine$OnSeekCompletionListener;

    if-eqz v0, :cond_0

    .line 1381
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$16;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine$OnSeekCompletionListener;

    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->getValue()I

    move-result v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine$OnSeekCompletionListener;->onSeekComplete(III)V

    .line 1383
    :cond_0
    return-void
.end method
