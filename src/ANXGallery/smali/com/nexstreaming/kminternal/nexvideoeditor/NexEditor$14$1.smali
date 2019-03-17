.class Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$14$1;
.super Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;
.source "NexEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$14;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$14;


# direct methods
.method constructor <init>(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$14;)V
    .locals 0

    .prologue
    .line 1786
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$14$1;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$14;

    invoke-direct {p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1799
    const-string v0, "seekToOriginalTimeAfterCapture"

    return-object v0
.end method

.method public a(II)V
    .locals 2

    .prologue
    .line 1794
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$14$1;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$14;

    iget-object v0, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$14;->b:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->b(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;Z)Z

    .line 1795
    return-void
.end method

.method public a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V
    .locals 2

    .prologue
    .line 1789
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$14$1;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$14;

    iget-object v0, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$14;->b:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->b(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;Z)Z

    .line 1790
    return-void
.end method
