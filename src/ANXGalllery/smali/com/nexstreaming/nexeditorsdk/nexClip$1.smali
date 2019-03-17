.class Lcom/nexstreaming/nexeditorsdk/nexClip$1;
.super Ljava/lang/Object;
.source "nexClip.java"

# interfaces
.implements Lcom/nexstreaming/app/common/task/Task$OnFailListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/nexeditorsdk/nexClip;->loadVideoClipThumbnails(Lcom/nexstreaming/nexeditorsdk/nexClip$OnLoadVideoClipThumbnailListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/nexeditorsdk/nexClip$OnLoadVideoClipThumbnailListener;

.field final synthetic b:Lcom/nexstreaming/nexeditorsdk/nexClip;


# direct methods
.method constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexClip;Lcom/nexstreaming/nexeditorsdk/nexClip$OnLoadVideoClipThumbnailListener;)V
    .locals 0

    .prologue
    .line 2211
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexClip$1;->b:Lcom/nexstreaming/nexeditorsdk/nexClip;

    iput-object p2, p0, Lcom/nexstreaming/nexeditorsdk/nexClip$1;->a:Lcom/nexstreaming/nexeditorsdk/nexClip$OnLoadVideoClipThumbnailListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/nexstreaming/app/common/task/Task;Lcom/nexstreaming/app/common/task/Task$Event;Lcom/nexstreaming/app/common/task/Task$TaskError;)V
    .locals 2

    .prologue
    .line 2215
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClip$1;->b:Lcom/nexstreaming/nexeditorsdk/nexClip;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->access$002(Lcom/nexstreaming/nexeditorsdk/nexClip;Z)Z

    .line 2216
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->INPROGRESS_GETCLIPINFO:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    if-eq p3, v0, :cond_0

    .line 2217
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClip$1;->b:Lcom/nexstreaming/nexeditorsdk/nexClip;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->access$102(Lcom/nexstreaming/nexeditorsdk/nexClip;Z)Z

    .line 2218
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClip$1;->a:Lcom/nexstreaming/nexeditorsdk/nexClip$OnLoadVideoClipThumbnailListener;

    if-eqz v0, :cond_1

    .line 2219
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClip$1;->b:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->access$100(Lcom/nexstreaming/nexeditorsdk/nexClip;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2220
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClip$1;->a:Lcom/nexstreaming/nexeditorsdk/nexClip$OnLoadVideoClipThumbnailListener;

    sget v1, Lcom/nexstreaming/nexeditorsdk/nexClip$OnLoadVideoClipThumbnailListener;->kEvent_loadFail:I

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexClip$OnLoadVideoClipThumbnailListener;->onLoadThumbnailResult(I)V

    .line 2224
    :cond_1
    :goto_0
    return-void

    .line 2222
    :cond_2
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClip$1;->a:Lcom/nexstreaming/nexeditorsdk/nexClip$OnLoadVideoClipThumbnailListener;

    sget v1, Lcom/nexstreaming/nexeditorsdk/nexClip$OnLoadVideoClipThumbnailListener;->kEvent_mustRetry:I

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexClip$OnLoadVideoClipThumbnailListener;->onLoadThumbnailResult(I)V

    goto :goto_0
.end method
