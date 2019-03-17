.class final Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$6;
.super Ljava/lang/Object;
.source "MediaInfo.java"

# interfaces
.implements Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1788
    const-string v0, "MediaInfo"

    const-string v1, "sOnEditorDestroyedListener onEditorDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1789
    :goto_0
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->K()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1790
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->K()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;

    sget-object v3, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->EDITOR_INSTANCE_DESTROYED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {v0, v3}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->sendFailure(Lcom/nexstreaming/app/common/task/Task$TaskError;)V

    .line 1789
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1792
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-static {v0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->a(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    .line 1793
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    invoke-static {v0}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->a(Ljava/util/Deque;)Ljava/util/Deque;

    .line 1794
    invoke-static {v2}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->a(I)I

    .line 1795
    return-void
.end method
