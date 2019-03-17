.class Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$1;
.super Landroid/util/LruCache;
.source "LookUpTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;


# direct methods
.method constructor <init>(Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;I)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$1;->a:Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 429
    const-string v1, "LookUpTable"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The entry is being removed / key:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    check-cast p3, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$b;

    .line 431
    invoke-virtual {p3}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$b;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 432
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$1;->a:Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->a(Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;Ljava/lang/String;)I

    move-result v1

    .line 433
    if-gez v1, :cond_0

    .line 434
    const-string v0, "LookUpTable"

    const-string v1, "The entry is not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :goto_0
    return-void

    .line 436
    :cond_0
    const-string v2, "LookUpTable"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The entry index ="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$1;->a:Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->a(Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;->b(Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->a()Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v2

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$1;->a:Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;->a(Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;->b(Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->m(I)I

    goto :goto_0
.end method
