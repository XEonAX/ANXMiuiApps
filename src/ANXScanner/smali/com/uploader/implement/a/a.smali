.class public abstract Lcom/uploader/implement/a/a;
.super Ljava/lang/Object;
.source "AbstractUploaderAction.java"

# interfaces
.implements Lcom/uploader/implement/a/g;
.implements Lcom/uploader/implement/d/a;


# instance fields
.field final a:I

.field final b:Landroid/content/Context;

.field c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/uploader/implement/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private volatile d:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/uploader/implement/a/a;->d:I

    .line 125
    iput-object p1, p0, Lcom/uploader/implement/a/a;->b:Landroid/content/Context;

    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/uploader/implement/a/a;->a:I

    .line 127
    return-void
.end method

.method private a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/c/a;I)V
    .locals 8
    .param p1, "session"    # Lcom/uploader/implement/d/b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "error"    # Lcom/uploader/implement/c/a;
    .param p3, "reason"    # I

    .prologue
    const/4 v7, 0x2

    .line 383
    iget v2, p0, Lcom/uploader/implement/a/a;->d:I

    .line 384
    .local v2, "oldState":I
    const/16 v3, 0x8

    .line 385
    .local v3, "p":I
    invoke-static {v3}, Lcom/uploader/implement/a;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 386
    const-string v5, "AbstractUploaderAction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/uploader/implement/a/a;->a:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " stop, session:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p1, :cond_2

    const-string v4, "null"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " oldState:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " error:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " reason:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v5, v4}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_0
    if-eqz p1, :cond_1

    .line 391
    invoke-virtual {p0}, Lcom/uploader/implement/a/a;->a()V

    .line 392
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Lcom/uploader/implement/d/b;->a(Lcom/uploader/implement/d/a;)V

    .line 393
    invoke-interface {p1}, Lcom/uploader/implement/d/b;->a()V

    .line 397
    :cond_1
    if-ne p3, v7, :cond_4

    .line 398
    iget v4, p0, Lcom/uploader/implement/a/a;->d:I

    if-ne v4, v7, :cond_3

    const/4 v4, 0x5

    :goto_1
    invoke-direct {p0, v4}, Lcom/uploader/implement/a/a;->a(I)Z

    .line 399
    const/4 v1, 0x4

    .line 413
    .local v1, "notifyType":I
    :goto_2
    invoke-virtual {p0, v1, p2}, Lcom/uploader/implement/a/a;->a(ILjava/lang/Object;)V

    .line 414
    return-void

    .line 386
    .end local v1    # "notifyType":I
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    .line 398
    :cond_3
    const/4 v4, 0x4

    goto :goto_1

    .line 401
    :cond_4
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/uploader/implement/a/a;->a(I)Z

    .line 402
    invoke-direct {p0}, Lcom/uploader/implement/a/a;->e()Lcom/uploader/implement/a/d;

    move-result-object v0

    .line 403
    .local v0, "listener":Lcom/uploader/implement/a/d;
    if-eqz v0, :cond_5

    .line 404
    invoke-interface {v0, p0}, Lcom/uploader/implement/a/d;->a(Lcom/uploader/implement/a/g;)V

    .line 406
    :cond_5
    if-nez p3, :cond_6

    .line 407
    const/4 v1, 0x1

    .restart local v1    # "notifyType":I
    goto :goto_2

    .line 409
    .end local v1    # "notifyType":I
    :cond_6
    const/4 v1, 0x2

    .restart local v1    # "notifyType":I
    goto :goto_2
.end method

.method private a(I)Z
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 340
    iget v1, p0, Lcom/uploader/implement/a/a;->d:I

    if-ne v1, p1, :cond_0

    .line 341
    const/4 v1, 0x0

    .line 348
    :goto_0
    return v1

    .line 343
    :cond_0
    const/4 v0, 0x2

    .line 344
    .local v0, "p":I
    invoke-static {v0}, Lcom/uploader/implement/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 345
    const-string v1, "AbstractUploaderAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/uploader/implement/a/a;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " setState, oldState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/uploader/implement/a/a;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_1
    iput p1, p0, Lcom/uploader/implement/a/a;->d:I

    .line 348
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private c(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Lcom/uploader/implement/c/a;)V
    .locals 2
    .param p1, "session"    # Lcom/uploader/implement/d/b;
    .param p2, "request"    # Lcom/uploader/implement/a/e;
    .param p3, "error"    # Lcom/uploader/implement/c/a;

    .prologue
    const/4 v1, 0x1

    .line 454
    if-nez p3, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    iget-boolean v0, p3, Lcom/uploader/implement/c/a;->a:Z

    if-nez v0, :cond_2

    .line 459
    invoke-direct {p0, p1, p3, v1}, Lcom/uploader/implement/a/a;->a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/c/a;I)V

    goto :goto_0

    .line 463
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/uploader/implement/a/a;->a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Lcom/uploader/implement/c/a;)Lcom/uploader/implement/c/a;

    move-result-object p3

    .line 464
    if-eqz p3, :cond_0

    .line 465
    invoke-direct {p0, p1, p3, v1}, Lcom/uploader/implement/a/a;->a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/c/a;I)V

    goto :goto_0
.end method

.method private d(Lcom/uploader/implement/d/b;)V
    .locals 7
    .param p1, "session"    # Lcom/uploader/implement/d/b;

    .prologue
    const/4 v6, 0x1

    .line 163
    invoke-virtual {p0}, Lcom/uploader/implement/a/a;->b()Z

    move-result v2

    .line 164
    .local v2, "stepUp":Z
    const/4 v1, 0x2

    .line 165
    .local v1, "p":I
    invoke-static {v1}, Lcom/uploader/implement/a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 166
    const-string v3, "AbstractUploaderAction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/uploader/implement/a/a;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " begin, session:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/uploader/implement/a/a;->d:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " stepUp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    if-eqz v2, :cond_1

    .line 169
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/uploader/implement/a/a;->a(I)Z

    .line 171
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3, v6}, Lcom/uploader/implement/a/a;->a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Z)Lcom/uploader/implement/c/a;

    move-result-object v0

    .line 172
    .local v0, "error":Lcom/uploader/implement/c/a;
    if-eqz v0, :cond_2

    .line 173
    invoke-direct {p0, p1, v0, v6}, Lcom/uploader/implement/a/a;->a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/c/a;I)V

    .line 175
    :cond_2
    return-void
.end method

.method private e()Lcom/uploader/implement/a/d;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/uploader/implement/a/a;->c:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 136
    const/4 v0, 0x0

    .line 138
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/uploader/implement/a/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uploader/implement/a/d;

    goto :goto_0
.end method


# virtual methods
.method abstract a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;)Landroid/util/Pair;
    .param p1    # Lcom/uploader/implement/d/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/uploader/implement/a/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uploader/implement/d/b;",
            "Lcom/uploader/implement/a/e;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method abstract a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Lcom/uploader/implement/a/b/a;)Landroid/util/Pair;
    .param p1    # Lcom/uploader/implement/d/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/uploader/implement/a/b/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uploader/implement/d/b;",
            "Lcom/uploader/implement/a/e;",
            "Lcom/uploader/implement/a/b/a;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/uploader/implement/c/a;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method abstract a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Landroid/util/Pair;)Lcom/uploader/implement/c/a;
    .param p1    # Lcom/uploader/implement/d/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uploader/implement/d/b;",
            "Lcom/uploader/implement/a/e;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/uploader/implement/c/a;"
        }
    .end annotation
.end method

.method abstract a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Lcom/uploader/implement/c/a;)Lcom/uploader/implement/c/a;
    .param p1    # Lcom/uploader/implement/d/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method abstract a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Z)Lcom/uploader/implement/c/a;
    .param p1    # Lcom/uploader/implement/d/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method abstract a()V
.end method

.method abstract a(ILjava/lang/Object;)V
.end method

.method public final a(Lcom/uploader/implement/a/d;)V
    .locals 1
    .param p1, "actionListener"    # Lcom/uploader/implement/a/d;

    .prologue
    .line 131
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/uploader/implement/a/a;->c:Ljava/lang/ref/WeakReference;

    .line 132
    return-void
.end method

.method public final a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Lcom/uploader/implement/a/f;)V
    .locals 12
    .param p1, "session"    # Lcom/uploader/implement/d/b;
    .param p2, "request"    # Lcom/uploader/implement/a/e;
    .param p3, "actionResponse"    # Lcom/uploader/implement/a/f;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x1

    .line 247
    move-object v4, p3

    check-cast v4, Lcom/uploader/implement/a/b/a;

    .line 248
    .local v4, "response":Lcom/uploader/implement/a/b/a;
    invoke-virtual {v4}, Lcom/uploader/implement/a/b/a;->a()I

    move-result v5

    .line 250
    .local v5, "type":I
    const/4 v2, 0x2

    .line 251
    .local v2, "p":I
    invoke-static {v2}, Lcom/uploader/implement/a;->a(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 252
    const-string v6, "AbstractUploaderAction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/uploader/implement/a/a;->a:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " onReceive, session:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " request:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " response:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " state:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/uploader/implement/a/a;->d:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " type:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " content:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/uploader/implement/a/b/a;->b()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v6, v7}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_0
    iget v6, p0, Lcom/uploader/implement/a/a;->d:I

    if-ne v6, v10, :cond_2

    .line 258
    const/16 v2, 0x8

    .line 259
    invoke-static {v2}, Lcom/uploader/implement/a;->a(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 260
    const-string v6, "AbstractUploaderAction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/uploader/implement/a/a;->a:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " onReceive, state is finish"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v6, v7}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_1
    :goto_0
    return-void

    .line 265
    :cond_2
    invoke-virtual {p0, p1, p2, v4}, Lcom/uploader/implement/a/a;->a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Lcom/uploader/implement/a/b/a;)Landroid/util/Pair;

    move-result-object v3

    .line 266
    .local v3, "pair":Landroid/util/Pair;
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/uploader/implement/c/a;

    .line 267
    .local v0, "error":Lcom/uploader/implement/c/a;
    packed-switch v5, :pswitch_data_0

    .line 336
    :cond_3
    :goto_1
    invoke-direct {p0, p1, p2, v0}, Lcom/uploader/implement/a/a;->c(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Lcom/uploader/implement/c/a;)V

    goto :goto_0

    .line 269
    :pswitch_0
    if-nez v0, :cond_3

    .line 272
    invoke-virtual {p0}, Lcom/uploader/implement/a/a;->b()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 273
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/uploader/implement/a/a;->a(I)Z

    .line 274
    invoke-virtual {p0, p1, p2, v9}, Lcom/uploader/implement/a/a;->a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Z)Lcom/uploader/implement/c/a;

    move-result-object v0

    goto :goto_1

    .line 276
    :cond_4
    invoke-direct {p0, v10}, Lcom/uploader/implement/a/a;->a(I)Z

    .line 277
    invoke-interface {p1, p2, v9}, Lcom/uploader/implement/d/b;->a(Lcom/uploader/implement/a/e;Z)V

    .line 279
    invoke-direct {p0}, Lcom/uploader/implement/a/a;->e()Lcom/uploader/implement/a/d;

    move-result-object v1

    .line 280
    .local v1, "listener":Lcom/uploader/implement/a/d;
    if-eqz v1, :cond_3

    .line 281
    invoke-interface {v1, p0}, Lcom/uploader/implement/a/d;->a(Lcom/uploader/implement/a/g;)V

    goto :goto_1

    .line 288
    .end local v1    # "listener":Lcom/uploader/implement/a/d;
    :pswitch_1
    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v6, :cond_3

    .line 289
    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p0, v10, v6}, Lcom/uploader/implement/a/a;->a(ILjava/lang/Object;)V

    goto :goto_1

    .line 295
    :pswitch_2
    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v6, :cond_3

    .line 296
    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2, v6}, Lcom/uploader/implement/a/a;->a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Landroid/util/Pair;)Lcom/uploader/implement/c/a;

    move-result-object v0

    goto :goto_1

    .line 302
    :pswitch_3
    if-eqz v0, :cond_3

    .line 303
    const-string v6, "300"

    iget-object v7, v0, Lcom/uploader/implement/c/a;->code:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "2"

    iget-object v7, v0, Lcom/uploader/implement/c/a;->subcode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 304
    invoke-direct {p0, v9}, Lcom/uploader/implement/a/a;->a(I)Z

    .line 305
    invoke-virtual {p0, p1, v11, v9}, Lcom/uploader/implement/a/a;->a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Z)Lcom/uploader/implement/c/a;

    move-result-object v0

    goto :goto_1

    .line 313
    :pswitch_4
    invoke-direct {p0, v10}, Lcom/uploader/implement/a/a;->a(I)Z

    .line 314
    invoke-interface {p1, v11}, Lcom/uploader/implement/d/b;->a(Lcom/uploader/implement/d/a;)V

    .line 315
    invoke-interface {p1, p2, v9}, Lcom/uploader/implement/d/b;->a(Lcom/uploader/implement/a/e;Z)V

    .line 317
    const/4 v6, 0x0

    iget-object v7, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p0, v6, v7}, Lcom/uploader/implement/a/a;->a(ILjava/lang/Object;)V

    .line 319
    invoke-direct {p0}, Lcom/uploader/implement/a/a;->e()Lcom/uploader/implement/a/d;

    move-result-object v1

    .line 320
    .restart local v1    # "listener":Lcom/uploader/implement/a/d;
    if-eqz v1, :cond_3

    .line 321
    invoke-interface {v1, p0}, Lcom/uploader/implement/a/d;->a(Lcom/uploader/implement/a/g;)V

    goto :goto_1

    .line 327
    .end local v1    # "listener":Lcom/uploader/implement/a/d;
    :pswitch_5
    new-instance v0, Lcom/uploader/implement/c/a;

    .end local v0    # "error":Lcom/uploader/implement/c/a;
    const-string v7, "300"

    const-string v8, "3"

    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v6, :cond_5

    const-string v6, ""

    :goto_2
    invoke-direct {v0, v7, v8, v6, v9}, Lcom/uploader/implement/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 329
    .restart local v0    # "error":Lcom/uploader/implement/c/a;
    goto/16 :goto_1

    .line 327
    .end local v0    # "error":Lcom/uploader/implement/c/a;
    :cond_5
    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 267
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method final a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/c/a;)V
    .locals 4
    .param p1, "session"    # Lcom/uploader/implement/d/b;
    .param p2, "error"    # Lcom/uploader/implement/c/a;

    .prologue
    .line 147
    iget v1, p0, Lcom/uploader/implement/a/a;->d:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 148
    const/16 v0, 0x8

    .line 149
    .local v0, "p":I
    invoke-static {v0}, Lcom/uploader/implement/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    const-string v1, "AbstractUploaderAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/uploader/implement/a/a;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " begin, state is finish"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 160
    .end local v0    # "p":I
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    if-eqz p2, :cond_2

    .line 156
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/uploader/implement/a/a;->a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/c/a;I)V

    goto :goto_0

    .line 158
    :cond_2
    invoke-direct {p0, p1}, Lcom/uploader/implement/a/a;->d(Lcom/uploader/implement/d/b;)V

    goto :goto_0
.end method

.method abstract a(Lcom/uploader/implement/d/b;)Z
.end method

.method public final b(Lcom/uploader/implement/d/b;)V
    .locals 8
    .param p1, "session"    # Lcom/uploader/implement/d/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 179
    iget v3, p0, Lcom/uploader/implement/a/a;->d:I

    if-nez v3, :cond_2

    const/4 v1, 0x5

    .line 180
    .local v1, "notifyType":I
    :goto_0
    const/16 v2, 0x8

    .line 181
    .local v2, "p":I
    invoke-static {v2}, Lcom/uploader/implement/a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 182
    const-string v3, "AbstractUploaderAction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/uploader/implement/a/a;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " onStart, state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/uploader/implement/a/a;->d:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " notifyType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " session:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    iget v3, p0, Lcom/uploader/implement/a/a;->d:I

    packed-switch v3, :pswitch_data_0

    .line 223
    :pswitch_0
    const/16 v2, 0x8

    .line 224
    invoke-static {v2}, Lcom/uploader/implement/a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 225
    const-string v3, "AbstractUploaderAction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/uploader/implement/a/a;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " no need to begin, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/uploader/implement/a/a;->d:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_1
    :goto_1
    invoke-virtual {p0, v1, v6}, Lcom/uploader/implement/a/a;->a(ILjava/lang/Object;)V

    .line 231
    return-void

    .line 179
    .end local v1    # "notifyType":I
    .end local v2    # "p":I
    :cond_2
    const/4 v1, 0x6

    goto :goto_0

    .line 189
    .restart local v1    # "notifyType":I
    .restart local v2    # "p":I
    :pswitch_1
    invoke-direct {p0, v7}, Lcom/uploader/implement/a/a;->a(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 190
    invoke-virtual {p0}, Lcom/uploader/implement/a/a;->a()V

    .line 191
    invoke-interface {p1, v6}, Lcom/uploader/implement/d/b;->a(Lcom/uploader/implement/d/a;)V

    .line 192
    invoke-interface {p1}, Lcom/uploader/implement/d/b;->a()V

    .line 194
    :cond_3
    invoke-interface {p1, p0}, Lcom/uploader/implement/d/b;->a(Lcom/uploader/implement/d/a;)V

    .line 196
    invoke-virtual {p0, p1}, Lcom/uploader/implement/a/a;->a(Lcom/uploader/implement/d/b;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 197
    invoke-direct {p0, p1}, Lcom/uploader/implement/a/a;->d(Lcom/uploader/implement/d/b;)V

    .line 200
    :cond_4
    const/4 v2, 0x2

    .line 201
    invoke-static {v2}, Lcom/uploader/implement/a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 202
    const-string v3, "AbstractUploaderAction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/uploader/implement/a/a;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " submit timeConsuming, session:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/uploader/implement/a/a;->d:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 209
    :pswitch_2
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/uploader/implement/a/a;->a(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 210
    invoke-virtual {p0}, Lcom/uploader/implement/a/a;->a()V

    .line 211
    invoke-interface {p1, v6}, Lcom/uploader/implement/d/b;->a(Lcom/uploader/implement/d/a;)V

    .line 212
    invoke-interface {p1}, Lcom/uploader/implement/d/b;->a()V

    .line 214
    :cond_5
    invoke-interface {p1, p0}, Lcom/uploader/implement/d/b;->a(Lcom/uploader/implement/d/a;)V

    .line 216
    invoke-virtual {p0, p1, v6, v7}, Lcom/uploader/implement/a/a;->a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Z)Lcom/uploader/implement/c/a;

    move-result-object v0

    .line 217
    .local v0, "error":Lcom/uploader/implement/c/a;
    if-eqz v0, :cond_1

    .line 218
    invoke-direct {p0, p1, v0, v7}, Lcom/uploader/implement/a/a;->a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/c/a;I)V

    goto :goto_1

    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final b(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;)V
    .locals 6
    .param p1, "session"    # Lcom/uploader/implement/d/b;
    .param p2, "request"    # Lcom/uploader/implement/a/e;

    .prologue
    .line 353
    const/4 v2, 0x2

    .line 354
    .local v2, "p":I
    invoke-static {v2}, Lcom/uploader/implement/a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 355
    const-string v3, "AbstractUploaderAction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/uploader/implement/a/a;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " onSend, session:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " request:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_0
    iget v3, p0, Lcom/uploader/implement/a/a;->d:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 359
    const/16 v2, 0x8

    .line 360
    invoke-static {v2}, Lcom/uploader/implement/a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 361
    const-string v3, "AbstractUploaderAction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/uploader/implement/a/a;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " onSend, state is finish"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_1
    :goto_0
    return-void

    .line 366
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/uploader/implement/a/a;->a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;)Landroid/util/Pair;

    move-result-object v1

    .line 367
    .local v1, "offset":Landroid/util/Pair;
    if-eqz v1, :cond_1

    .line 371
    invoke-virtual {p0, p1, p2, v1}, Lcom/uploader/implement/a/a;->a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Landroid/util/Pair;)Lcom/uploader/implement/c/a;

    move-result-object v0

    .line 373
    .local v0, "error":Lcom/uploader/implement/c/a;
    invoke-direct {p0, p1, p2, v0}, Lcom/uploader/implement/a/a;->c(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Lcom/uploader/implement/c/a;)V

    goto :goto_0
.end method

.method public final b(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Lcom/uploader/implement/c/a;)V
    .locals 5
    .param p1, "session"    # Lcom/uploader/implement/d/b;
    .param p2, "request"    # Lcom/uploader/implement/a/e;
    .param p3, "error"    # Lcom/uploader/implement/c/a;

    .prologue
    .line 418
    const/4 v1, 0x2

    .line 419
    .local v1, "p":I
    invoke-static {v1}, Lcom/uploader/implement/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 420
    const-string v2, "AbstractUploaderAction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/uploader/implement/a/a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " onError, session:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " request:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/uploader/implement/c/a;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_0
    iget v2, p0, Lcom/uploader/implement/a/a;->d:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 425
    const/16 v1, 0x8

    .line 426
    invoke-static {v1}, Lcom/uploader/implement/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 427
    const-string v2, "AbstractUploaderAction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/uploader/implement/a/a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " onError, state is finish"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_1
    :goto_0
    return-void

    .line 432
    :cond_2
    const-string v2, "100"

    iget-object v3, p3, Lcom/uploader/implement/c/a;->code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 433
    iget-object v2, p0, Lcom/uploader/implement/a/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/uploader/implement/e/a;->a(Landroid/content/Context;)Z

    move-result v0

    .line 434
    .local v0, "isConnected":Z
    const/4 v1, 0x2

    .line 435
    invoke-static {v1}, Lcom/uploader/implement/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 436
    const-string v2, "AbstractUploaderAction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/uploader/implement/a/a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " onError, connection error, isConnected:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/uploader/implement/c/a;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_3
    if-eqz v0, :cond_4

    const-string v2, "-1"

    iget-object v3, p3, Lcom/uploader/implement/c/a;->subcode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 440
    :cond_4
    const/4 v2, 0x2

    invoke-direct {p0, p1, p3, v2}, Lcom/uploader/implement/a/a;->a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/c/a;I)V

    goto :goto_0

    .line 445
    .end local v0    # "isConnected":Z
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/uploader/implement/a/a;->c(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Lcom/uploader/implement/c/a;)V

    goto :goto_0
.end method

.method abstract b()Z
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/uploader/implement/a/a;->d:I

    return v0
.end method

.method public final c(Lcom/uploader/implement/d/b;)V
    .locals 4
    .param p1, "session"    # Lcom/uploader/implement/d/b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 235
    iget v1, p0, Lcom/uploader/implement/a/a;->d:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 236
    const/16 v0, 0x8

    .line 237
    .local v0, "p":I
    invoke-static {v0}, Lcom/uploader/implement/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    const-string v1, "AbstractUploaderAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/uploader/implement/a/a;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onCancel, state is finish"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 243
    .end local v0    # "p":I
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/uploader/implement/a/a;->a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/c/a;I)V

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 450
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/uploader/implement/a/a;->a(ILjava/lang/Object;)V

    .line 451
    return-void
.end method
