.class public Lcom/uploader/implement/b/a/f;
.super Lcom/uploader/implement/b/a;
.source "SocketConnectionTarget.java"


# instance fields
.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZZ)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "isLongLived"    # Z
    .param p4, "encrypt"    # Z

    .prologue
    .line 15
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/uploader/implement/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 16
    iput-boolean p4, p0, Lcom/uploader/implement/b/a/f;->f:Z

    .line 17
    return-void
.end method


# virtual methods
.method public a(Lcom/uploader/implement/c;)Lcom/uploader/implement/b/e;
    .locals 1
    .param p1, "config"    # Lcom/uploader/implement/c;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/uploader/implement/b/a/f;->e:Z

    if-eqz v0, :cond_0

    .line 22
    new-instance v0, Lcom/uploader/implement/b/a/d;

    invoke-direct {v0, p1, p0}, Lcom/uploader/implement/b/a/d;-><init>(Lcom/uploader/implement/c;Lcom/uploader/implement/b/a/f;)V

    .line 24
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/uploader/implement/b/a/d;

    invoke-direct {v0, p1, p0}, Lcom/uploader/implement/b/a/d;-><init>(Lcom/uploader/implement/c;Lcom/uploader/implement/b/a/f;)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 30
    if-ne p0, p1, :cond_1

    .line 36
    :cond_0
    :goto_0
    return v1

    .line 31
    :cond_1
    instance-of v3, p1, Lcom/uploader/implement/b/a/f;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 32
    :cond_2
    invoke-super {p0, p1}, Lcom/uploader/implement/b/a;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 34
    check-cast v0, Lcom/uploader/implement/b/a/f;

    .line 36
    .local v0, "that":Lcom/uploader/implement/b/a/f;
    iget-boolean v3, p0, Lcom/uploader/implement/b/a/f;->f:Z

    iget-boolean v4, v0, Lcom/uploader/implement/b/a/f;->f:Z

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method
