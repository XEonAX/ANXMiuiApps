.class Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$14;
.super Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$e;
.source "NexEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(ILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$e;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$e;

.field final synthetic b:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;


# direct methods
.method constructor <init>(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$e;)V
    .locals 0

    .prologue
    .line 1769
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$14;->b:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    iput-object p2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$14;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$e;

    invoke-direct {p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 1817
    const-string v0, "NexEditor.java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Capture onCapture="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->NONE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {p0, v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$14;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;Landroid/graphics/Bitmap;)V

    .line 1819
    return-void
.end method

.method public a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V
    .locals 3

    .prologue
    .line 1810
    const-string v0, "NexEditor.java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Capture onCaptureFail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$14;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;Landroid/graphics/Bitmap;)V

    .line 1812
    return-void
.end method

.method a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;Landroid/graphics/Bitmap;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1772
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$14;->b:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v0, v4}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;Z)Z

    .line 1773
    if-nez p2, :cond_0

    .line 1774
    const-string v0, "NexEditor.java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Capture failed; error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$14;->b:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v0, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->b(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;Z)Z

    .line 1776
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$14;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$e;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$e;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V

    .line 1782
    :goto_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$14;->b:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v0, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;Z)Z

    .line 1783
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$14;->b:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->d(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1784
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$14;->b:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v0, v4}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->b(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;Z)Z

    .line 1785
    const-string v0, "NexEditor.java"

    const-string v1, "  Capture done; seek to original location"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$14;->b:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$14;->b:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->e(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)I

    move-result v1

    new-instance v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$14$1;

    invoke-direct {v2, p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$14$1;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$14;)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(IZLcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;)V

    .line 1805
    :goto_1
    return-void

    .line 1778
    :cond_0
    const-string v0, "NexEditor.java"

    const-string v1, "  Capture success; notify listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$14;->b:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v0, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->b(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;Z)Z

    .line 1780
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$14;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$e;

    invoke-virtual {v0, p2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$e;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1803
    :cond_1
    const-string v0, "NexEditor.java"

    const-string v1, "  Capture done; SKIP SEEK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
