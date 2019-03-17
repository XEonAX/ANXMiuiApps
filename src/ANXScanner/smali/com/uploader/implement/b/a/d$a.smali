.class Lcom/uploader/implement/b/a/d$a;
.super Ljava/lang/Object;
.source "LongLivedConnection.java"

# interfaces
.implements Lcom/uploader/implement/b/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uploader/implement/b/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/uploader/implement/b/a/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/uploader/implement/b/a/d;)V
    .locals 1
    .param p1, "connection"    # Lcom/uploader/implement/b/a/d;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/uploader/implement/b/a/d$a;->a:Ljava/lang/ref/WeakReference;

    .line 87
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 117
    iget-object v2, p0, Lcom/uploader/implement/b/a/d$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uploader/implement/b/a/d;

    .line 118
    .local v0, "connection":Lcom/uploader/implement/b/a/d;
    if-nez v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-virtual {v0}, Lcom/uploader/implement/b/a/d;->e()Lcom/uploader/implement/b/b;

    move-result-object v1

    .line 122
    .local v1, "listener":Lcom/uploader/implement/b/b;
    if-eqz v1, :cond_0

    .line 123
    invoke-interface {v1, v0}, Lcom/uploader/implement/b/b;->a(Lcom/uploader/implement/b/e;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 8
    .param p1, "errorCode"    # I

    .prologue
    const/4 v7, 0x1

    .line 91
    iget-object v3, p0, Lcom/uploader/implement/b/a/d$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uploader/implement/b/a/d;

    .line 92
    .local v0, "connection":Lcom/uploader/implement/b/a/d;
    if-nez v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-virtual {v0}, Lcom/uploader/implement/b/a/d;->e()Lcom/uploader/implement/b/b;

    move-result-object v2

    .line 97
    .local v2, "listener":Lcom/uploader/implement/b/b;
    if-eqz v2, :cond_0

    .line 99
    const/16 v3, -0x7f0

    if-ne p1, v3, :cond_2

    .line 100
    new-instance v1, Lcom/uploader/implement/c/a;

    const-string v3, "300"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5, v7}, Lcom/uploader/implement/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 109
    .local v1, "error":Lcom/uploader/implement/c/a;
    :goto_1
    invoke-interface {v2, v0, v1}, Lcom/uploader/implement/b/b;->a(Lcom/uploader/implement/b/e;Lcom/uploader/implement/c/a;)V

    goto :goto_0

    .line 102
    .end local v1    # "error":Lcom/uploader/implement/c/a;
    :cond_2
    new-instance v1, Lcom/uploader/implement/c/a;

    const-string v4, "100"

    const/16 v3, -0xa29

    if-eq p1, v3, :cond_3

    const/16 v3, -0xa35

    if-eq p1, v3, :cond_3

    const/16 v3, -0x96d

    if-ne p1, v3, :cond_4

    :cond_3
    const-string v3, "-1"

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v3, v5, v7}, Lcom/uploader/implement/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .restart local v1    # "error":Lcom/uploader/implement/c/a;
    goto :goto_1

    .end local v1    # "error":Lcom/uploader/implement/c/a;
    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method public a(II)V
    .locals 7
    .param p1, "sendSequence"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 141
    iget-object v3, p0, Lcom/uploader/implement/b/a/d$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uploader/implement/b/a/d;

    .line 142
    .local v0, "connection":Lcom/uploader/implement/b/a/d;
    if-nez v0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-virtual {v0}, Lcom/uploader/implement/b/a/d;->e()Lcom/uploader/implement/b/b;

    move-result-object v2

    .line 146
    .local v2, "listener":Lcom/uploader/implement/b/b;
    if-eqz v2, :cond_0

    .line 147
    new-instance v1, Lcom/uploader/implement/c/a;

    const-string v3, "100"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSendFailed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/uploader/implement/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 149
    .local v1, "error":Lcom/uploader/implement/c/a;
    invoke-interface {v2, v0, v1}, Lcom/uploader/implement/b/b;->a(Lcom/uploader/implement/b/e;Lcom/uploader/implement/c/a;)V

    goto :goto_0
.end method

.method public a([BI)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "length"    # I

    .prologue
    .line 156
    iget-object v3, p0, Lcom/uploader/implement/b/a/d$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uploader/implement/b/a/d;

    .line 157
    .local v0, "connection":Lcom/uploader/implement/b/a/d;
    if-nez v0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    invoke-virtual {v0}, Lcom/uploader/implement/b/a/d;->e()Lcom/uploader/implement/b/b;

    move-result-object v1

    .line 162
    .local v1, "listener":Lcom/uploader/implement/b/b;
    if-eqz v1, :cond_0

    .line 163
    new-instance v2, Lcom/uploader/implement/b/f;

    invoke-direct {v2}, Lcom/uploader/implement/b/f;-><init>()V

    .line 164
    .local v2, "protocolData":Lcom/uploader/implement/b/f;
    iput-object p1, v2, Lcom/uploader/implement/b/f;->b:[B

    .line 165
    const/4 v3, 0x0

    iput v3, v2, Lcom/uploader/implement/b/f;->c:I

    .line 166
    iput p2, v2, Lcom/uploader/implement/b/f;->d:I

    .line 167
    invoke-interface {v1, v0, v2}, Lcom/uploader/implement/b/b;->a(Lcom/uploader/implement/b/e;Lcom/uploader/implement/b/f;)V

    goto :goto_0
.end method

.method public b(I)V
    .locals 3
    .param p1, "sendSequence"    # I

    .prologue
    .line 129
    iget-object v2, p0, Lcom/uploader/implement/b/a/d$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uploader/implement/b/a/d;

    .line 130
    .local v0, "connection":Lcom/uploader/implement/b/a/d;
    if-nez v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    invoke-virtual {v0}, Lcom/uploader/implement/b/a/d;->e()Lcom/uploader/implement/b/b;

    move-result-object v1

    .line 134
    .local v1, "listener":Lcom/uploader/implement/b/b;
    if-eqz v1, :cond_0

    .line 135
    invoke-interface {v1, v0, p1}, Lcom/uploader/implement/b/b;->b(Lcom/uploader/implement/b/e;I)V

    goto :goto_0
.end method
