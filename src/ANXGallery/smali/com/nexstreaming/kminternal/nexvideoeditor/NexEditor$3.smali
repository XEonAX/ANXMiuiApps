.class Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$3;
.super Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$f;
.source "NexEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(ILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$o;

.field final synthetic d:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;


# direct methods
.method constructor <init>(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;IILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$o;)V
    .locals 0

    .prologue
    .line 1908
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$3;->d:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    iput p2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$3;->a:I

    iput p3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$3;->b:I

    iput-object p4, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$3;->c:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$o;

    invoke-direct {p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V
    .locals 2

    .prologue
    .line 1911
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$3;->d:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->f(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1923
    :cond_0
    :goto_0
    return-void

    .line 1913
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$3;->d:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->c(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;Z)Z

    .line 1914
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$3;->d:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->g(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)I

    move-result v0

    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$3;->a:I

    if-ne v0, v1, :cond_0

    .line 1916
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$3;->d:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->d(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;Z)Z

    .line 1917
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$3;->d:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$3;->b:I

    invoke-static {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;I)I

    move-result v0

    .line 1918
    if-nez v0, :cond_2

    .line 1919
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$3;->d:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->h(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)Ljava/util/Deque;

    move-result-object v0

    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$3;->c:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$o;

    invoke-interface {v0, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1921
    :cond_2
    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$3;->c:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$o;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->fromValue(I)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$o;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V

    goto :goto_0
.end method
