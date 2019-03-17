.class final Lcom/uploader/implement/d/c$b;
.super Ljava/lang/Object;
.source "UploaderSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uploader/implement/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/uploader/implement/a/e;

.field final b:Lcom/uploader/implement/a/h;

.field final c:Lcom/uploader/implement/b/e;

.field d:Z

.field e:Z

.field f:I

.field g:I

.field h:I

.field i:I

.field j:Ljava/nio/ByteBuffer;

.field k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field l:Lcom/uploader/implement/b/f;

.field m:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Lcom/uploader/implement/a/e;Lcom/uploader/implement/b/e;)V
    .locals 5
    .param p1, "request"    # Lcom/uploader/implement/a/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "connection"    # Lcom/uploader/implement/b/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/uploader/implement/d/c$b;->a:Lcom/uploader/implement/a/e;

    .line 83
    invoke-interface {p1}, Lcom/uploader/implement/a/e;->b()Lcom/uploader/implement/a/h;

    move-result-object v2

    iput-object v2, p0, Lcom/uploader/implement/d/c$b;->b:Lcom/uploader/implement/a/h;

    .line 84
    iput-object p2, p0, Lcom/uploader/implement/d/c$b;->c:Lcom/uploader/implement/b/e;

    .line 86
    iget-object v2, p0, Lcom/uploader/implement/d/c$b;->b:Lcom/uploader/implement/a/h;

    iget-object v0, v2, Lcom/uploader/implement/a/h;->e:Ljava/util/Map;

    .line 87
    .local v0, "header":Ljava/util/Map;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/uploader/implement/d/c$b;->d:Z

    .line 88
    iget-object v2, p0, Lcom/uploader/implement/d/c$b;->b:Lcom/uploader/implement/a/h;

    iget-object v1, v2, Lcom/uploader/implement/a/h;->g:[B

    .line 89
    .local v1, "tail":[B
    if-eqz v1, :cond_1

    array-length v2, v1

    if-nez v2, :cond_2

    :cond_1
    move v3, v4

    :cond_2
    iput-boolean v3, p0, Lcom/uploader/implement/d/c$b;->e:Z

    .line 91
    return-void

    .end local v1    # "tail":[B
    :cond_3
    move v2, v3

    .line 87
    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 94
    iget-object v2, p0, Lcom/uploader/implement/d/c$b;->b:Lcom/uploader/implement/a/h;

    iget-object v0, v2, Lcom/uploader/implement/a/h;->e:Ljava/util/Map;

    .line 95
    .local v0, "header":Ljava/util/Map;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/uploader/implement/d/c$b;->d:Z

    .line 96
    iget-object v2, p0, Lcom/uploader/implement/d/c$b;->b:Lcom/uploader/implement/a/h;

    iget-object v1, v2, Lcom/uploader/implement/a/h;->g:[B

    .line 97
    .local v1, "tail":[B
    if-eqz v1, :cond_1

    array-length v2, v1

    if-nez v2, :cond_3

    :cond_1
    :goto_1
    iput-boolean v4, p0, Lcom/uploader/implement/d/c$b;->e:Z

    .line 99
    iput v3, p0, Lcom/uploader/implement/d/c$b;->g:I

    .line 100
    iput v3, p0, Lcom/uploader/implement/d/c$b;->f:I

    .line 101
    iput v3, p0, Lcom/uploader/implement/d/c$b;->h:I

    .line 102
    iput-object v5, p0, Lcom/uploader/implement/d/c$b;->j:Ljava/nio/ByteBuffer;

    .line 103
    iput-object v5, p0, Lcom/uploader/implement/d/c$b;->k:Ljava/util/Map;

    .line 105
    return-void

    .end local v1    # "tail":[B
    :cond_2
    move v2, v3

    .line 95
    goto :goto_0

    .restart local v1    # "tail":[B
    :cond_3
    move v4, v3

    .line 97
    goto :goto_1
.end method

.method b()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 108
    const/4 v0, 0x1

    .line 109
    .local v0, "bytesFinish":Z
    iget-object v4, p0, Lcom/uploader/implement/d/c$b;->b:Lcom/uploader/implement/a/h;

    iget-object v4, v4, Lcom/uploader/implement/a/h;->f:[B

    if-eqz v4, :cond_0

    .line 110
    iget v4, p0, Lcom/uploader/implement/d/c$b;->f:I

    iget-object v5, p0, Lcom/uploader/implement/d/c$b;->b:Lcom/uploader/implement/a/h;

    iget-object v5, v5, Lcom/uploader/implement/a/h;->f:[B

    array-length v5, v5

    if-ne v4, v5, :cond_2

    move v0, v2

    .line 113
    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 114
    .local v1, "entityFinish":Z
    iget-object v4, p0, Lcom/uploader/implement/d/c$b;->b:Lcom/uploader/implement/a/h;

    iget-object v4, v4, Lcom/uploader/implement/a/h;->a:Ljava/io/File;

    if-eqz v4, :cond_1

    .line 115
    iget v4, p0, Lcom/uploader/implement/d/c$b;->g:I

    int-to-long v4, v4

    iget-object v6, p0, Lcom/uploader/implement/d/c$b;->b:Lcom/uploader/implement/a/h;

    iget-wide v6, v6, Lcom/uploader/implement/a/h;->d:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    move v1, v2

    .line 118
    :cond_1
    :goto_1
    iget-boolean v4, p0, Lcom/uploader/implement/d/c$b;->e:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/uploader/implement/d/c$b;->d:Z

    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    :goto_2
    return v2

    .end local v1    # "entityFinish":Z
    :cond_2
    move v0, v3

    .line 110
    goto :goto_0

    .restart local v1    # "entityFinish":Z
    :cond_3
    move v1, v3

    .line 115
    goto :goto_1

    :cond_4
    move v2, v3

    .line 118
    goto :goto_2
.end method
