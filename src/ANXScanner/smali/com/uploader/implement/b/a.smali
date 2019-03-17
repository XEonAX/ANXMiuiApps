.class public abstract Lcom/uploader/implement/b/a;
.super Ljava/lang/Object;
.source "ConnectionTarget.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;IZ)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "proxyIp"    # Ljava/lang/String;
    .param p4, "proxyPort"    # I
    .param p5, "isLongLived"    # Z

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/uploader/implement/b/a;->a:Ljava/lang/String;

    .line 25
    iput p2, p0, Lcom/uploader/implement/b/a;->b:I

    .line 26
    iput-object p3, p0, Lcom/uploader/implement/b/a;->c:Ljava/lang/String;

    .line 27
    iput p4, p0, Lcom/uploader/implement/b/a;->d:I

    .line 28
    iput-boolean p5, p0, Lcom/uploader/implement/b/a;->e:Z

    .line 29
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/uploader/implement/c;)Lcom/uploader/implement/b/e;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 35
    if-ne p0, p1, :cond_1

    move v2, v1

    .line 45
    :cond_0
    :goto_0
    return v2

    .line 36
    :cond_1
    instance-of v3, p1, Lcom/uploader/implement/b/a;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 38
    check-cast v0, Lcom/uploader/implement/b/a;

    .line 40
    .local v0, "target":Lcom/uploader/implement/b/a;
    iget v3, p0, Lcom/uploader/implement/b/a;->b:I

    iget v4, v0, Lcom/uploader/implement/b/a;->b:I

    if-ne v3, v4, :cond_0

    .line 41
    iget v3, p0, Lcom/uploader/implement/b/a;->d:I

    iget v4, v0, Lcom/uploader/implement/b/a;->d:I

    if-ne v3, v4, :cond_0

    .line 42
    iget-boolean v3, p0, Lcom/uploader/implement/b/a;->e:Z

    iget-boolean v4, v0, Lcom/uploader/implement/b/a;->e:Z

    if-ne v3, v4, :cond_0

    .line 43
    iget-object v3, p0, Lcom/uploader/implement/b/a;->a:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/uploader/implement/b/a;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/uploader/implement/b/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    :cond_2
    iget-object v3, p0, Lcom/uploader/implement/b/a;->c:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/uploader/implement/b/a;->c:Ljava/lang/String;

    iget-object v4, v0, Lcom/uploader/implement/b/a;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    move v2, v1

    goto :goto_0

    .line 43
    :cond_5
    iget-object v3, v0, Lcom/uploader/implement/b/a;->a:Ljava/lang/String;

    if-eqz v3, :cond_2

    goto :goto_0

    .line 45
    :cond_6
    iget-object v3, v0, Lcom/uploader/implement/b/a;->c:Ljava/lang/String;

    if-nez v3, :cond_3

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectionTarget{address=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/uploader/implement/b/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/uploader/implement/b/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", proxyIp=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/uploader/implement/b/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", proxyPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/uploader/implement/b/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isLongLived="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/uploader/implement/b/a;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
