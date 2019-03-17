.class public Lcom/uploader/implement/b/a/d;
.super Lcom/uploader/implement/b/a/a;
.source "LongLivedConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uploader/implement/b/a/d$a;
    }
.end annotation


# instance fields
.field final e:Lcom/uploader/implement/b/a/c;


# direct methods
.method constructor <init>(Lcom/uploader/implement/c;Lcom/uploader/implement/b/a/f;)V
    .locals 2
    .param p1, "config"    # Lcom/uploader/implement/c;
    .param p2, "target"    # Lcom/uploader/implement/b/a/f;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/uploader/implement/b/a/a;-><init>(Lcom/uploader/implement/c;Lcom/uploader/implement/b/a;)V

    .line 26
    new-instance v0, Lcom/uploader/implement/b/a/c;

    invoke-direct {v0, p1, p2}, Lcom/uploader/implement/b/a/c;-><init>(Lcom/uploader/implement/c;Lcom/uploader/implement/b/a/f;)V

    iput-object v0, p0, Lcom/uploader/implement/b/a/d;->e:Lcom/uploader/implement/b/a/c;

    .line 27
    iget-object v0, p0, Lcom/uploader/implement/b/a/d;->e:Lcom/uploader/implement/b/a/c;

    new-instance v1, Lcom/uploader/implement/b/a/d$a;

    invoke-direct {v1, p0}, Lcom/uploader/implement/b/a/d$a;-><init>(Lcom/uploader/implement/b/a/d;)V

    invoke-virtual {v0, v1}, Lcom/uploader/implement/b/a/c;->a(Lcom/uploader/implement/b/a/c$a;)V

    .line 28
    return-void
.end method


# virtual methods
.method public a(Lcom/uploader/implement/b/f;I)V
    .locals 6
    .param p1, "data"    # Lcom/uploader/implement/b/f;
    .param p2, "sendSequence"    # I

    .prologue
    .line 52
    iget v1, p1, Lcom/uploader/implement/b/f;->d:I

    .line 54
    .local v1, "length":I
    iget v3, p1, Lcom/uploader/implement/b/f;->c:I

    if-eqz v3, :cond_1

    .line 55
    new-array v0, v1, [B

    .line 56
    .local v0, "dest":[B
    iget-object v3, p1, Lcom/uploader/implement/b/f;->b:[B

    iget v4, p1, Lcom/uploader/implement/b/f;->c:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    :goto_0
    invoke-virtual {p0}, Lcom/uploader/implement/b/a/d;->e()Lcom/uploader/implement/b/b;

    move-result-object v2

    .line 61
    .local v2, "listener":Lcom/uploader/implement/b/b;
    if-eqz v2, :cond_0

    .line 62
    invoke-interface {v2, p0, p2}, Lcom/uploader/implement/b/b;->a(Lcom/uploader/implement/b/e;I)V

    .line 64
    :cond_0
    iget-object v3, p0, Lcom/uploader/implement/b/a/d;->e:Lcom/uploader/implement/b/a/c;

    invoke-virtual {v3, p2, v0, v1}, Lcom/uploader/implement/b/a/c;->a(I[BI)V

    .line 66
    return-void

    .line 58
    .end local v0    # "dest":[B
    .end local v2    # "listener":Lcom/uploader/implement/b/b;
    :cond_1
    iget-object v0, p1, Lcom/uploader/implement/b/f;->b:[B

    .restart local v0    # "dest":[B
    goto :goto_0
.end method

.method public b()Z
    .locals 4

    .prologue
    .line 32
    const/4 v0, 0x2

    .line 33
    .local v0, "p":I
    invoke-static {v0}, Lcom/uploader/implement/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    const-string v1, "LongLivedConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/uploader/implement/b/a/d;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " connectAsync"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/uploader/implement/b/a/d;->e:Lcom/uploader/implement/b/a/c;

    invoke-virtual {v1}, Lcom/uploader/implement/b/a/c;->a()V

    .line 37
    const/4 v1, 0x1

    return v1
.end method

.method public c()Z
    .locals 4

    .prologue
    .line 42
    const/4 v0, 0x2

    .line 43
    .local v0, "p":I
    invoke-static {v0}, Lcom/uploader/implement/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    const-string v1, "LongLivedConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/uploader/implement/b/a/d;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " closeAsync"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/uploader/implement/b/a/d;->e:Lcom/uploader/implement/b/a/c;

    invoke-virtual {v1}, Lcom/uploader/implement/b/a/c;->b()V

    .line 47
    const/4 v1, 0x1

    return v1
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/uploader/implement/b/a/d;->e:Lcom/uploader/implement/b/a/c;

    invoke-virtual {v0}, Lcom/uploader/implement/b/a/c;->c()Z

    move-result v0

    return v0
.end method
