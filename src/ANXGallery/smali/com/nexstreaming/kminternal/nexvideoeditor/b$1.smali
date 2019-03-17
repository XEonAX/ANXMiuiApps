.class Lcom/nexstreaming/kminternal/nexvideoeditor/b$1;
.super Landroid/util/LruCache;
.source "NexCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/kminternal/nexvideoeditor/b;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/Object;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/kminternal/nexvideoeditor/b;


# direct methods
.method constructor <init>(Lcom/nexstreaming/kminternal/nexvideoeditor/b;I)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/b$1;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/b;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;Landroid/graphics/Bitmap;)I
    .locals 3

    .prologue
    .line 53
    const-string v0, "NexCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "returns the size of the entry: <key, value>:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    div-int/lit16 v2, v2, 0x400

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    div-int/lit16 v0, v0, 0x400

    return v0
.end method

.method protected a(ZLjava/lang/Object;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 41
    if-eqz p1, :cond_1

    .line 42
    const-string v0, "NexCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the entry is being removed to make space / key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :goto_0
    if-eqz p3, :cond_0

    .line 47
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 49
    :cond_0
    return-void

    .line 44
    :cond_1
    const-string v0, "NexCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the removal was caused by a put(K, V) or remove(K) / key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 38
    check-cast p3, Landroid/graphics/Bitmap;

    check-cast p4, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nexstreaming/kminternal/nexvideoeditor/b$1;->a(ZLjava/lang/Object;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 38
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/nexstreaming/kminternal/nexvideoeditor/b$1;->a(Ljava/lang/Object;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method
