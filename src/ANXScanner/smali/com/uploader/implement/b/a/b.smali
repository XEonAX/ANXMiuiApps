.class public Lcom/uploader/implement/b/a/b;
.super Ljava/lang/Object;
.source "ConnectionRecycler.java"

# interfaces
.implements Lcom/uploader/implement/b/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uploader/implement/b/a/b$b;,
        Lcom/uploader/implement/b/a/b$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uploader/implement/b/e;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uploader/implement/b/a/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uploader/implement/b/a/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/uploader/implement/b/a/b$a;",
            "Lcom/uploader/implement/b/e;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Landroid/os/Handler;

.field private final f:I

.field private final g:Lcom/uploader/implement/c;


# direct methods
.method public constructor <init>(Lcom/uploader/implement/c;Landroid/os/Looper;)V
    .locals 1
    .param p1, "config"    # Lcom/uploader/implement/c;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uploader/implement/b/a/b;->a:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uploader/implement/b/a/b;->b:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uploader/implement/b/a/b;->c:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uploader/implement/b/a/b;->d:Ljava/util/ArrayList;

    .line 90
    iput-object p1, p0, Lcom/uploader/implement/b/a/b;->g:Lcom/uploader/implement/c;

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/uploader/implement/b/a/b;->e:Landroid/os/Handler;

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/uploader/implement/b/a/b;->f:I

    .line 93
    return-void
.end method

.method private static a(Lcom/uploader/implement/b/a;Ljava/util/ArrayList;)I
    .locals 3
    .param p0, "target"    # Lcom/uploader/implement/b/a;
    .param p1, "list"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uploader/implement/b/a;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uploader/implement/b/e;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 109
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 110
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uploader/implement/b/e;

    invoke-interface {v2}, Lcom/uploader/implement/b/e;->a()Lcom/uploader/implement/b/a;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/uploader/implement/b/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 109
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static a(Lcom/uploader/implement/b/e;Ljava/util/ArrayList;)I
    .locals 3
    .param p0, "connection"    # Lcom/uploader/implement/b/e;
    .param p1, "list"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uploader/implement/b/e;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uploader/implement/b/a/b$b;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 150
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 151
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 152
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uploader/implement/b/a/b$b;

    iget-object v2, v2, Lcom/uploader/implement/b/a/b$b;->a:Lcom/uploader/implement/b/e;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 151
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Ljava/util/ArrayList;)I
    .locals 4
    .param p0, "session"    # Lcom/uploader/implement/d/b;
    .param p1, "request"    # Lcom/uploader/implement/a/e;
    .param p2, "list"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uploader/implement/d/b;",
            "Lcom/uploader/implement/a/e;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/uploader/implement/b/a/b$a;",
            "Lcom/uploader/implement/b/e;",
            ">;>;)I"
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 98
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 99
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/uploader/implement/b/a/b$a;

    .line 100
    .local v2, "wrapper":Lcom/uploader/implement/b/a/b$a;
    iget-object v3, v2, Lcom/uploader/implement/b/a/b$a;->b:Lcom/uploader/implement/a/e;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/uploader/implement/b/a/b$a;->a:Lcom/uploader/implement/d/b;

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    .end local v0    # "i":I
    .end local v2    # "wrapper":Lcom/uploader/implement/b/a/b$a;
    :goto_1
    return v0

    .line 98
    .restart local v0    # "i":I
    .restart local v2    # "wrapper":Lcom/uploader/implement/b/a/b$a;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    .end local v2    # "wrapper":Lcom/uploader/implement/b/a/b$a;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private a(Lcom/uploader/implement/b/a;Lcom/uploader/implement/b/e;Z)Lcom/uploader/implement/b/e;
    .locals 5
    .param p1, "target"    # Lcom/uploader/implement/b/a;
    .param p2, "connection"    # Lcom/uploader/implement/b/e;
    .param p3, "keepAlive"    # Z

    .prologue
    const/4 v3, -0x1

    .line 343
    if-nez p2, :cond_0

    .line 344
    iget-object v2, p0, Lcom/uploader/implement/b/a/b;->a:Ljava/util/ArrayList;

    invoke-static {p1, v2}, Lcom/uploader/implement/b/a/b;->a(Lcom/uploader/implement/b/a;Ljava/util/ArrayList;)I

    move-result v0

    .line 345
    .local v0, "index":I
    if-eq v0, v3, :cond_0

    .line 346
    iget-object v2, p0, Lcom/uploader/implement/b/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p2

    .end local p2    # "connection":Lcom/uploader/implement/b/e;
    check-cast p2, Lcom/uploader/implement/b/e;

    .line 347
    .restart local p2    # "connection":Lcom/uploader/implement/b/e;
    iget-object v2, p0, Lcom/uploader/implement/b/a/b;->b:Ljava/util/ArrayList;

    invoke-static {p2, v2}, Lcom/uploader/implement/b/a/b;->a(Lcom/uploader/implement/b/e;Ljava/util/ArrayList;)I

    move-result v0

    .line 348
    if-eq v0, v3, :cond_0

    .line 349
    iget-object v3, p0, Lcom/uploader/implement/b/a/b;->e:Landroid/os/Handler;

    iget-object v2, p0, Lcom/uploader/implement/b/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 354
    .end local v0    # "index":I
    :cond_0
    if-eqz p2, :cond_4

    .line 355
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Lcom/uploader/implement/b/e;->a(Lcom/uploader/implement/b/b;)V

    .line 356
    if-nez p3, :cond_1

    .line 357
    invoke-interface {p2}, Lcom/uploader/implement/b/e;->c()Z

    .line 359
    :cond_1
    invoke-interface {p2}, Lcom/uploader/implement/b/e;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 360
    iget-object v2, p0, Lcom/uploader/implement/b/a/b;->g:Lcom/uploader/implement/c;

    invoke-virtual {p1, v2}, Lcom/uploader/implement/b/a;->a(Lcom/uploader/implement/c;)Lcom/uploader/implement/b/e;

    move-result-object p2

    .line 366
    :cond_2
    :goto_0
    const/4 v1, 0x2

    .line 367
    .local v1, "p":I
    invoke-static {v1}, Lcom/uploader/implement/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 368
    const-string v2, "ConnectionRecycler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/uploader/implement/b/a/b;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " retrieve, connection:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " keepAlive:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_3
    return-object p2

    .line 363
    .end local v1    # "p":I
    :cond_4
    iget-object v2, p0, Lcom/uploader/implement/b/a/b;->g:Lcom/uploader/implement/c;

    invoke-virtual {p1, v2}, Lcom/uploader/implement/b/a;->a(Lcom/uploader/implement/c;)Lcom/uploader/implement/b/e;

    move-result-object p2

    goto :goto_0
.end method

.method private a(Lcom/uploader/implement/b/e;)V
    .locals 8
    .param p1, "connection"    # Lcom/uploader/implement/b/e;

    .prologue
    .line 375
    invoke-interface {p1}, Lcom/uploader/implement/b/e;->a()Lcom/uploader/implement/b/a;

    move-result-object v4

    iget-object v5, p0, Lcom/uploader/implement/b/a/b;->c:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Lcom/uploader/implement/b/a/b;->b(Lcom/uploader/implement/b/a;Ljava/util/ArrayList;)I

    move-result v0

    .line 376
    .local v0, "index":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    .line 378
    iget-object v4, p0, Lcom/uploader/implement/b/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uploader/implement/b/a/b$a;

    .line 379
    .local v3, "wrapper":Lcom/uploader/implement/b/a/b$a;
    iget-object v4, p0, Lcom/uploader/implement/b/a/b;->d:Ljava/util/ArrayList;

    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    iget-object v4, v3, Lcom/uploader/implement/b/a/b$a;->c:Lcom/uploader/implement/b/d;

    iget-object v5, v3, Lcom/uploader/implement/b/a/b$a;->a:Lcom/uploader/implement/d/b;

    iget-object v6, v3, Lcom/uploader/implement/b/a/b$a;->b:Lcom/uploader/implement/a/e;

    invoke-interface {v4, v5, v6, p1}, Lcom/uploader/implement/b/d;->a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Lcom/uploader/implement/b/e;)V

    .line 381
    const/4 v1, 0x2

    .line 382
    .local v1, "p":I
    invoke-static {v1}, Lcom/uploader/implement/a;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 383
    const-string v4, "ConnectionRecycler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/uploader/implement/b/a/b;->f:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " rebind, onAvailable:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/uploader/implement/b/a/b$a;->a:Lcom/uploader/implement/d/b;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " request:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/uploader/implement/b/a/b$a;->b:Lcom/uploader/implement/a/e;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 397
    .end local v3    # "wrapper":Lcom/uploader/implement/b/a/b$a;
    :cond_0
    :goto_0
    return-void

    .line 388
    .end local v1    # "p":I
    :cond_1
    iget-object v4, p0, Lcom/uploader/implement/b/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    new-instance v2, Lcom/uploader/implement/b/a/b$b;

    iget-object v4, p0, Lcom/uploader/implement/b/a/b;->a:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/uploader/implement/b/a/b;->b:Ljava/util/ArrayList;

    invoke-direct {v2, p1, v4, v5}, Lcom/uploader/implement/b/a/b$b;-><init>(Lcom/uploader/implement/b/e;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 390
    .local v2, "runnable":Lcom/uploader/implement/b/a/b$b;
    iget-object v4, p0, Lcom/uploader/implement/b/a/b;->e:Landroid/os/Handler;

    const-wide/16 v6, 0x6978

    invoke-virtual {v4, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 391
    iget-object v4, p0, Lcom/uploader/implement/b/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    const/4 v1, 0x2

    .line 393
    .restart local v1    # "p":I
    invoke-static {v1}, Lcom/uploader/implement/a;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 394
    const-string v4, "ConnectionRecycler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/uploader/implement/b/a/b;->f:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " rebind, start timeout connection:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static b(Lcom/uploader/implement/b/a;Ljava/util/ArrayList;)I
    .locals 3
    .param p0, "target"    # Lcom/uploader/implement/b/a;
    .param p1, "list"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uploader/implement/b/a;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uploader/implement/b/a/b$a;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 130
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 131
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uploader/implement/b/a/b$a;

    iget-object v2, v2, Lcom/uploader/implement/b/a/b$a;->b:Lcom/uploader/implement/a/e;

    invoke-interface {v2}, Lcom/uploader/implement/a/e;->a()Lcom/uploader/implement/b/a;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/uploader/implement/b/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 130
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static b(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Ljava/util/ArrayList;)I
    .locals 4
    .param p0, "session"    # Lcom/uploader/implement/d/b;
    .param p1, "request"    # Lcom/uploader/implement/a/e;
    .param p2, "list"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uploader/implement/d/b;",
            "Lcom/uploader/implement/a/e;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uploader/implement/b/a/b$a;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 119
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 120
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uploader/implement/b/a/b$a;

    .line 121
    .local v2, "wrapper":Lcom/uploader/implement/b/a/b$a;
    iget-object v3, v2, Lcom/uploader/implement/b/a/b$a;->b:Lcom/uploader/implement/a/e;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/uploader/implement/b/a/b$a;->a:Lcom/uploader/implement/d/b;

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    .end local v0    # "i":I
    .end local v2    # "wrapper":Lcom/uploader/implement/b/a/b$a;
    :goto_1
    return v0

    .line 119
    .restart local v0    # "i":I
    .restart local v2    # "wrapper":Lcom/uploader/implement/b/a/b$a;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    .end local v2    # "wrapper":Lcom/uploader/implement/b/a/b$a;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static c(Lcom/uploader/implement/b/a;Ljava/util/ArrayList;)Z
    .locals 4
    .param p0, "target"    # Lcom/uploader/implement/b/a;
    .param p1, "list"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uploader/implement/b/a;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/uploader/implement/b/a/b$a;",
            "Lcom/uploader/implement/b/e;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 140
    .local v2, "size":I
    const/4 v0, 0x2

    .line 141
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 142
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/uploader/implement/b/a/b$a;

    iget-object v3, v3, Lcom/uploader/implement/b/a/b$a;->b:Lcom/uploader/implement/a/e;

    invoke-interface {v3}, Lcom/uploader/implement/a/e;->a()Lcom/uploader/implement/b/a;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/uploader/implement/b/a;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_0

    .line 143
    const/4 v3, 0x0

    .line 146
    :goto_1
    return v3

    .line 141
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 432
    iget-object v3, p0, Lcom/uploader/implement/b/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 434
    iget-object v3, p0, Lcom/uploader/implement/b/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 435
    iget-object v4, p0, Lcom/uploader/implement/b/a/b;->e:Landroid/os/Handler;

    iget-object v3, p0, Lcom/uploader/implement/b/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 434
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 437
    :cond_0
    iget-object v3, p0, Lcom/uploader/implement/b/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 440
    iget-object v3, p0, Lcom/uploader/implement/b/a/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_1
    if-ltz v1, :cond_1

    .line 441
    iget-object v3, p0, Lcom/uploader/implement/b/a/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/uploader/implement/b/e;

    .line 442
    .local v0, "connection":Lcom/uploader/implement/b/e;
    invoke-interface {v0, v5}, Lcom/uploader/implement/b/e;->a(Lcom/uploader/implement/b/b;)V

    .line 443
    invoke-interface {v0}, Lcom/uploader/implement/b/e;->c()Z

    .line 440
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 445
    .end local v0    # "connection":Lcom/uploader/implement/b/e;
    :cond_1
    iget-object v3, p0, Lcom/uploader/implement/b/a/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 447
    iget-object v3, p0, Lcom/uploader/implement/b/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_2
    if-ltz v1, :cond_2

    .line 448
    iget-object v3, p0, Lcom/uploader/implement/b/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uploader/implement/b/e;

    .line 449
    .restart local v0    # "connection":Lcom/uploader/implement/b/e;
    invoke-interface {v0, v5}, Lcom/uploader/implement/b/e;->a(Lcom/uploader/implement/b/b;)V

    .line 450
    invoke-interface {v0}, Lcom/uploader/implement/b/e;->c()Z

    .line 447
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 452
    .end local v0    # "connection":Lcom/uploader/implement/b/e;
    :cond_2
    iget-object v3, p0, Lcom/uploader/implement/b/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 454
    const/4 v2, 0x2

    .line 455
    .local v2, "p":I
    invoke-static {v2}, Lcom/uploader/implement/a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 456
    const-string v3, "ConnectionRecycler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/uploader/implement/b/a/b;->f:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reset"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_3
    return-void
.end method

.method public a(Lcom/uploader/implement/d/b;)Z
    .locals 10
    .param p1, "session"    # Lcom/uploader/implement/d/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 401
    const/4 v5, 0x0

    .line 403
    .local v5, "removed":Z
    iget-object v7, p0, Lcom/uploader/implement/b/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 404
    iget-object v7, p0, Lcom/uploader/implement/b/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/uploader/implement/b/a/b$a;

    iget-object v7, v7, Lcom/uploader/implement/b/a/b$a;->a:Lcom/uploader/implement/d/b;

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 405
    iget-object v7, p0, Lcom/uploader/implement/b/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 406
    const/4 v5, 0x1

    .line 403
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 410
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .local v6, "unbindConnections":Ljava/util/ArrayList;
    iget-object v7, p0, Lcom/uploader/implement/b/a/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 412
    iget-object v7, p0, Lcom/uploader/implement/b/a/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 413
    .local v4, "pair":Landroid/util/Pair;
    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lcom/uploader/implement/b/a/b$a;

    iget-object v7, v7, Lcom/uploader/implement/b/a/b$a;->a:Lcom/uploader/implement/d/b;

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 414
    iget-object v7, p0, Lcom/uploader/implement/b/a/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 415
    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lcom/uploader/implement/b/a/b$a;

    iget-object v7, v7, Lcom/uploader/implement/b/a/b$a;->b:Lcom/uploader/implement/a/e;

    invoke-interface {v7}, Lcom/uploader/implement/a/e;->a()Lcom/uploader/implement/b/a;

    move-result-object v8

    iget-object v7, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lcom/uploader/implement/b/e;

    const/4 v9, 0x0

    invoke-direct {p0, v8, v7, v9}, Lcom/uploader/implement/b/a/b;->a(Lcom/uploader/implement/b/a;Lcom/uploader/implement/b/e;Z)Lcom/uploader/implement/b/e;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    const/4 v5, 0x1

    .line 411
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 420
    .end local v4    # "pair":Landroid/util/Pair;
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uploader/implement/b/e;

    .line 421
    .local v0, "connection":Lcom/uploader/implement/b/e;
    invoke-direct {p0, v0}, Lcom/uploader/implement/b/a/b;->a(Lcom/uploader/implement/b/e;)V

    goto :goto_2

    .line 424
    .end local v0    # "connection":Lcom/uploader/implement/b/e;
    :cond_4
    const/4 v3, 0x2

    .line 425
    .local v3, "p":I
    invoke-static {v3}, Lcom/uploader/implement/a;->a(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 426
    const-string v7, "ConnectionRecycler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p0, Lcom/uploader/implement/b/a/b;->f:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " unregister, session:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " removed:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v7, v8}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_5
    return v5
.end method

.method public a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Lcom/uploader/implement/a/e;Lcom/uploader/implement/b/d;Z)Z
    .locals 9
    .param p1, "session"    # Lcom/uploader/implement/d/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "request"    # Lcom/uploader/implement/a/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "newRequest"    # Lcom/uploader/implement/a/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "listener"    # Lcom/uploader/implement/b/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "keepAlive"    # Z

    .prologue
    .line 163
    const/4 v3, 0x2

    .line 164
    .local v3, "p":I
    invoke-static {v3}, Lcom/uploader/implement/a;->a(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 165
    const-string v6, "ConnectionRecycler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/uploader/implement/b/a/b;->f:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " replace start, session:"

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

    const-string v8, " newRequest:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " keepAlive:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    invoke-interface {p2}, Lcom/uploader/implement/a/e;->a()Lcom/uploader/implement/b/a;

    move-result-object v5

    .line 170
    .local v5, "target":Lcom/uploader/implement/b/a;
    invoke-interface {p3}, Lcom/uploader/implement/a/e;->a()Lcom/uploader/implement/b/a;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/uploader/implement/b/a;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 171
    const/4 v3, 0x2

    .line 172
    invoke-static {v3}, Lcom/uploader/implement/a;->a(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 173
    const-string v6, "ConnectionRecycler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/uploader/implement/b/a/b;->f:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " replace:failure, false !=, request:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " newRequest:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_1
    const/4 v6, 0x0

    .line 223
    :goto_0
    return v6

    .line 179
    :cond_2
    iget-boolean v6, v5, Lcom/uploader/implement/b/a;->e:Z

    if-nez v6, :cond_4

    .line 180
    const/4 v3, 0x2

    .line 181
    invoke-static {v3}, Lcom/uploader/implement/a;->a(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 182
    const-string v6, "ConnectionRecycler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/uploader/implement/b/a/b;->f:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " replace:false, !isLongLived"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 187
    :cond_4
    iget-object v6, p0, Lcom/uploader/implement/b/a/b;->c:Ljava/util/ArrayList;

    invoke-static {p1, p2, v6}, Lcom/uploader/implement/b/a/b;->b(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Ljava/util/ArrayList;)I

    move-result v1

    .line 188
    .local v1, "index":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_6

    .line 189
    new-instance v2, Lcom/uploader/implement/b/a/b$a;

    invoke-direct {v2, p1, p3, p4}, Lcom/uploader/implement/b/a/b$a;-><init>(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Lcom/uploader/implement/b/d;)V

    .line 190
    .local v2, "newWrapper":Lcom/uploader/implement/b/a/b$a;
    iget-object v6, p0, Lcom/uploader/implement/b/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 192
    const/4 v3, 0x2

    .line 193
    invoke-static {v3}, Lcom/uploader/implement/a;->a(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 194
    const-string v6, "ConnectionRecycler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/uploader/implement/b/a/b;->f:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " replace, waiting, request:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " newRequest:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_5
    const/4 v6, 0x1

    goto :goto_0

    .line 200
    .end local v2    # "newWrapper":Lcom/uploader/implement/b/a/b$a;
    :cond_6
    iget-object v6, p0, Lcom/uploader/implement/b/a/b;->d:Ljava/util/ArrayList;

    invoke-static {p1, p2, v6}, Lcom/uploader/implement/b/a/b;->a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Ljava/util/ArrayList;)I

    move-result v1

    .line 201
    const/4 v6, -0x1

    if-ne v1, v6, :cond_8

    .line 202
    const/4 v3, 0x2

    .line 203
    invoke-static {v3}, Lcom/uploader/implement/a;->a(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 204
    const-string v6, "ConnectionRecycler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/uploader/implement/b/a/b;->f:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " replace failure, !bounding, request:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 209
    :cond_8
    iget-object v6, p0, Lcom/uploader/implement/b/a/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 211
    .local v4, "pair":Landroid/util/Pair;
    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/uploader/implement/b/e;

    invoke-direct {p0, v5, v6, p5}, Lcom/uploader/implement/b/a/b;->a(Lcom/uploader/implement/b/a;Lcom/uploader/implement/b/e;Z)Lcom/uploader/implement/b/e;

    move-result-object v0

    .line 213
    .local v0, "connection":Lcom/uploader/implement/b/e;
    iget-object v6, p0, Lcom/uploader/implement/b/a/b;->d:Ljava/util/ArrayList;

    new-instance v7, Landroid/util/Pair;

    new-instance v8, Lcom/uploader/implement/b/a/b$a;

    invoke-direct {v8, p1, p3, p4}, Lcom/uploader/implement/b/a/b$a;-><init>(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Lcom/uploader/implement/b/d;)V

    invoke-direct {v7, v8, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v1, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 215
    invoke-interface {p4, p1, p3, v0}, Lcom/uploader/implement/b/d;->a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Lcom/uploader/implement/b/e;)V

    .line 217
    const/16 v3, 0x8

    .line 218
    invoke-static {v3}, Lcom/uploader/implement/a;->a(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 219
    const-string v6, "ConnectionRecycler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/uploader/implement/b/a/b;->f:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " replace, bounding, request:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " newRequest:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " available connection:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_9
    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method public a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Lcom/uploader/implement/b/d;)Z
    .locals 10
    .param p1, "session"    # Lcom/uploader/implement/d/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "request"    # Lcom/uploader/implement/a/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "listener"    # Lcom/uploader/implement/b/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 228
    const/4 v2, 0x2

    .line 229
    .local v2, "p":I
    invoke-static {v2}, Lcom/uploader/implement/a;->a(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 230
    const-string v5, "ConnectionRecycler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/uploader/implement/b/a/b;->f:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " register start, session:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " request:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_0
    invoke-interface {p2}, Lcom/uploader/implement/a/e;->a()Lcom/uploader/implement/b/a;

    move-result-object v3

    .line 236
    .local v3, "target":Lcom/uploader/implement/b/a;
    iget-boolean v5, v3, Lcom/uploader/implement/b/a;->e:Z

    if-nez v5, :cond_2

    .line 237
    iget-object v5, p0, Lcom/uploader/implement/b/a/b;->g:Lcom/uploader/implement/c;

    invoke-virtual {v3, v5}, Lcom/uploader/implement/b/a;->a(Lcom/uploader/implement/c;)Lcom/uploader/implement/b/e;

    move-result-object v0

    .line 238
    .local v0, "connection":Lcom/uploader/implement/b/e;
    invoke-interface {p3, p1, p2, v0}, Lcom/uploader/implement/b/d;->a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Lcom/uploader/implement/b/e;)V

    .line 240
    const/4 v2, 0x2

    .line 241
    invoke-static {v2}, Lcom/uploader/implement/a;->a(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 242
    const-string v5, "ConnectionRecycler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/uploader/implement/b/a/b;->f:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " register, onAvailable short lived connection:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " request:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 291
    .end local v0    # "connection":Lcom/uploader/implement/b/e;
    :cond_1
    :goto_0
    return v8

    .line 248
    :cond_2
    iget-object v5, p0, Lcom/uploader/implement/b/a/b;->d:Ljava/util/ArrayList;

    invoke-static {p1, p2, v5}, Lcom/uploader/implement/b/a/b;->a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Ljava/util/ArrayList;)I

    move-result v1

    .line 249
    .local v1, "index":I
    if-eq v1, v9, :cond_3

    .line 250
    const/16 v2, 0x8

    .line 251
    invoke-static {v2}, Lcom/uploader/implement/a;->a(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 252
    const-string v5, "ConnectionRecycler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/uploader/implement/b/a/b;->f:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " register, is bounding, request:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_3
    iget-object v5, p0, Lcom/uploader/implement/b/a/b;->c:Ljava/util/ArrayList;

    invoke-static {p1, p2, v5}, Lcom/uploader/implement/b/a/b;->b(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Ljava/util/ArrayList;)I

    move-result v1

    .line 257
    if-eq v1, v9, :cond_4

    .line 258
    const/16 v2, 0x8

    .line 259
    invoke-static {v2}, Lcom/uploader/implement/a;->a(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 260
    const-string v5, "ConnectionRecycler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/uploader/implement/b/a/b;->f:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " register, is waiting, request:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_4
    new-instance v4, Lcom/uploader/implement/b/a/b$a;

    invoke-direct {v4, p1, p2, p3}, Lcom/uploader/implement/b/a/b$a;-><init>(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Lcom/uploader/implement/b/d;)V

    .line 267
    .local v4, "wrapper":Lcom/uploader/implement/b/a/b$a;
    const/4 v5, 0x3

    iget-object v6, p0, Lcom/uploader/implement/b/a/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v5, v6, :cond_5

    iget-object v5, p0, Lcom/uploader/implement/b/a/b;->d:Ljava/util/ArrayList;

    invoke-static {v3, v5}, Lcom/uploader/implement/b/a/b;->c(Lcom/uploader/implement/b/a;Ljava/util/ArrayList;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 268
    :cond_5
    iget-object v5, p0, Lcom/uploader/implement/b/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    const/4 v2, 0x2

    .line 270
    invoke-static {v2}, Lcom/uploader/implement/a;->a(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 271
    const-string v5, "ConnectionRecycler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/uploader/implement/b/a/b;->f:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " register, waiting request:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 276
    :cond_6
    const/4 v5, 0x0

    invoke-direct {p0, v3, v5, v8}, Lcom/uploader/implement/b/a/b;->a(Lcom/uploader/implement/b/a;Lcom/uploader/implement/b/e;Z)Lcom/uploader/implement/b/e;

    move-result-object v0

    .line 281
    .restart local v0    # "connection":Lcom/uploader/implement/b/e;
    iget-object v5, p0, Lcom/uploader/implement/b/a/b;->d:Ljava/util/ArrayList;

    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-interface {p3, p1, p2, v0}, Lcom/uploader/implement/b/d;->a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Lcom/uploader/implement/b/e;)V

    .line 285
    const/4 v2, 0x2

    .line 286
    invoke-static {v2}, Lcom/uploader/implement/a;->a(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 287
    const-string v5, "ConnectionRecycler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/uploader/implement/b/a/b;->f:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " register, onAvailable long lived connection:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " request:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Z)Z
    .locals 11
    .param p1, "session"    # Lcom/uploader/implement/d/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "request"    # Lcom/uploader/implement/a/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "keepAlive"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v10, -0x1

    .line 296
    invoke-interface {p2}, Lcom/uploader/implement/a/e;->a()Lcom/uploader/implement/b/a;

    move-result-object v4

    .line 297
    .local v4, "target":Lcom/uploader/implement/b/a;
    const/4 v2, 0x2

    .line 298
    .local v2, "p":I
    invoke-static {v2}, Lcom/uploader/implement/a;->a(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 299
    const-string v7, "ConnectionRecycler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p0, Lcom/uploader/implement/b/a/b;->f:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " unregister start, session:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " request:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v7, v8}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    iget-boolean v7, v4, Lcom/uploader/implement/b/a;->e:Z

    if-nez v7, :cond_2

    .line 303
    const/4 v2, 0x2

    .line 304
    invoke-static {v2}, Lcom/uploader/implement/a;->a(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 305
    const-string v6, "ConnectionRecycler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/uploader/implement/b/a/b;->f:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " unregister, !isLongLived, session:"

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

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v6, v7}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_1
    :goto_0
    return v5

    .line 311
    :cond_2
    iget-object v7, p0, Lcom/uploader/implement/b/a/b;->c:Ljava/util/ArrayList;

    invoke-static {p1, p2, v7}, Lcom/uploader/implement/b/a/b;->b(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Ljava/util/ArrayList;)I

    move-result v1

    .line 312
    .local v1, "index":I
    if-eq v1, v10, :cond_4

    .line 313
    iget-object v5, p0, Lcom/uploader/implement/b/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 314
    const/4 v2, 0x2

    .line 315
    invoke-static {v2}, Lcom/uploader/implement/a;->a(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 316
    const-string v5, "ConnectionRecycler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/uploader/implement/b/a/b;->f:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " unregister, waiting, session:"

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

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v5, v7}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v5, v6

    .line 319
    goto :goto_0

    .line 322
    :cond_4
    iget-object v7, p0, Lcom/uploader/implement/b/a/b;->d:Ljava/util/ArrayList;

    invoke-static {p1, p2, v7}, Lcom/uploader/implement/b/a/b;->a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Ljava/util/ArrayList;)I

    move-result v1

    .line 323
    if-eq v1, v10, :cond_1

    .line 327
    iget-object v5, p0, Lcom/uploader/implement/b/a/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 329
    .local v3, "pair":Landroid/util/Pair;
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/uploader/implement/b/a/b$a;

    iget-object v5, v5, Lcom/uploader/implement/b/a/b$a;->b:Lcom/uploader/implement/a/e;

    invoke-interface {v5}, Lcom/uploader/implement/a/e;->a()Lcom/uploader/implement/b/a;

    move-result-object v7

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/uploader/implement/b/e;

    invoke-direct {p0, v7, v5, p3}, Lcom/uploader/implement/b/a/b;->a(Lcom/uploader/implement/b/a;Lcom/uploader/implement/b/e;Z)Lcom/uploader/implement/b/e;

    move-result-object v0

    .line 331
    .local v0, "connection":Lcom/uploader/implement/b/e;
    invoke-direct {p0, v0}, Lcom/uploader/implement/b/a/b;->a(Lcom/uploader/implement/b/e;)V

    .line 333
    const/4 v2, 0x2

    .line 334
    invoke-static {v2}, Lcom/uploader/implement/a;->a(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 335
    const-string v5, "ConnectionRecycler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/uploader/implement/b/a/b;->f:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " unregister, session:"

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

    const-string v8, " connection:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v5, v7}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v5, v6

    .line 338
    goto/16 :goto_0
.end method
