.class public Lcom/uploader/implement/b/a/g;
.super Lcom/uploader/implement/b/a;
.source "UrlConnectionTarget.java"


# instance fields
.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "host"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 21
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/uploader/implement/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 22
    iput-object p3, p0, Lcom/uploader/implement/b/a/g;->f:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/uploader/implement/b/a/g;->g:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public a(Lcom/uploader/implement/c;)Lcom/uploader/implement/b/e;
    .locals 1
    .param p1, "config"    # Lcom/uploader/implement/c;

    .prologue
    .line 28
    new-instance v0, Lcom/uploader/implement/b/a/e;

    invoke-direct {v0, p1, p0}, Lcom/uploader/implement/b/a/e;-><init>(Lcom/uploader/implement/c;Lcom/uploader/implement/b/a/g;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 33
    if-ne p0, p1, :cond_1

    move v2, v1

    .line 40
    :cond_0
    :goto_0
    return v2

    .line 34
    :cond_1
    instance-of v3, p1, Lcom/uploader/implement/b/a/g;

    if-eqz v3, :cond_0

    .line 35
    invoke-super {p0, p1}, Lcom/uploader/implement/b/a;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 37
    check-cast v0, Lcom/uploader/implement/b/a/g;

    .line 39
    .local v0, "that":Lcom/uploader/implement/b/a/g;
    iget-object v3, p0, Lcom/uploader/implement/b/a/g;->f:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/uploader/implement/b/a/g;->f:Ljava/lang/String;

    iget-object v4, v0, Lcom/uploader/implement/b/a/g;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 40
    :cond_2
    iget-object v3, p0, Lcom/uploader/implement/b/a/g;->g:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v1, p0, Lcom/uploader/implement/b/a/g;->g:Ljava/lang/String;

    iget-object v2, v0, Lcom/uploader/implement/b/a/g;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_3
    :goto_1
    move v2, v1

    goto :goto_0

    .line 39
    :cond_4
    iget-object v3, v0, Lcom/uploader/implement/b/a/g;->f:Ljava/lang/String;

    if-eqz v3, :cond_2

    goto :goto_0

    .line 40
    :cond_5
    iget-object v3, v0, Lcom/uploader/implement/b/a/g;->g:Ljava/lang/String;

    if-eqz v3, :cond_3

    move v1, v2

    goto :goto_1
.end method
