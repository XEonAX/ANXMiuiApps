.class public final Lcom/ta/utdid2/c/a/d$a$a;
.super Ljava/lang/Object;
.source "TransactionXMLFile.java"

# interfaces
.implements Lcom/ta/utdid2/c/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/utdid2/c/a/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ta/utdid2/c/a/d$a;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z


# direct methods
.method public constructor <init>(Lcom/ta/utdid2/c/a/d$a;)V
    .locals 1

    .prologue
    .line 252
    iput-object p1, p0, Lcom/ta/utdid2/c/a/d$a$a;->a:Lcom/ta/utdid2/c/a/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ta/utdid2/c/a/d$a$a;->d:Ljava/util/Map;

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/utdid2/c/a/d$a$a;->l:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/ta/utdid2/c/a/b$a;
    .locals 1

    .prologue
    .line 292
    monitor-enter p0

    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a$a;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    monitor-exit p0

    return-object p0

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;F)Lcom/ta/utdid2/c/a/b$a;
    .locals 2

    .prologue
    .line 278
    monitor-enter p0

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a$a;->d:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    monitor-exit p0

    return-object p0

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;I)Lcom/ta/utdid2/c/a/b$a;
    .locals 2

    .prologue
    .line 264
    monitor-enter p0

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a$a;->d:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    monitor-exit p0

    return-object p0

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;J)Lcom/ta/utdid2/c/a/b$a;
    .locals 2

    .prologue
    .line 271
    monitor-enter p0

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a$a;->d:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    monitor-exit p0

    return-object p0

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/ta/utdid2/c/a/b$a;
    .locals 1

    .prologue
    .line 257
    monitor-enter p0

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a$a;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    monitor-exit p0

    return-object p0

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Z)Lcom/ta/utdid2/c/a/b$a;
    .locals 2

    .prologue
    .line 285
    monitor-enter p0

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a$a;->d:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    monitor-exit p0

    return-object p0

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Lcom/ta/utdid2/c/a/b$a;
    .locals 1

    .prologue
    .line 299
    monitor-enter p0

    .line 300
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/ta/utdid2/c/a/d$a$a;->l:Z

    .line 301
    monitor-exit p0

    return-object p0

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public commit()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 309
    .line 312
    invoke-static {}, Lcom/ta/utdid2/c/a/d;->a()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 313
    :try_start_0
    iget-object v3, p0, Lcom/ta/utdid2/c/a/d$a$a;->a:Lcom/ta/utdid2/c/a/d$a;

    invoke-static {v3}, Lcom/ta/utdid2/c/a/d$a;->a(Lcom/ta/utdid2/c/a/d$a;)Ljava/util/WeakHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->size()I

    move-result v3

    if-lez v3, :cond_0

    move v2, v1

    .line 314
    :cond_0
    if-eqz v2, :cond_a

    .line 315
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 316
    new-instance v0, Ljava/util/HashSet;

    .line 317
    iget-object v3, p0, Lcom/ta/utdid2/c/a/d$a$a;->a:Lcom/ta/utdid2/c/a/d$a;

    invoke-static {v3}, Lcom/ta/utdid2/c/a/d$a;->a(Lcom/ta/utdid2/c/a/d$a;)Ljava/util/WeakHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 316
    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v3, v0

    move-object v4, v1

    .line 320
    :goto_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 321
    :try_start_1
    iget-boolean v0, p0, Lcom/ta/utdid2/c/a/d$a$a;->l:Z

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a$a;->a:Lcom/ta/utdid2/c/a/d$a;

    invoke-static {v0}, Lcom/ta/utdid2/c/a/d$a;->a(Lcom/ta/utdid2/c/a/d$a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 323
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/utdid2/c/a/d$a$a;->l:Z

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a$a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 340
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a$a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 320
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 342
    :try_start_2
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a$a;->a:Lcom/ta/utdid2/c/a/d$a;

    invoke-static {v0}, Lcom/ta/utdid2/c/a/d$a;->a(Lcom/ta/utdid2/c/a/d$a;)Z

    move-result v6

    .line 343
    if-eqz v6, :cond_3

    .line 344
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a$a;->a:Lcom/ta/utdid2/c/a/d$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ta/utdid2/c/a/d$a;->a(Z)V

    .line 312
    :cond_3
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 348
    if-eqz v2, :cond_4

    .line 349
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_2
    if-gez v2, :cond_7

    .line 360
    :cond_4
    return v6

    .line 326
    :cond_5
    :try_start_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 327
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 328
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 329
    if-ne v0, p0, :cond_6

    .line 330
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a$a;->a:Lcom/ta/utdid2/c/a/d$a;

    invoke-static {v0}, Lcom/ta/utdid2/c/a/d$a;->a(Lcom/ta/utdid2/c/a/d$a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    :goto_3
    if-eqz v2, :cond_2

    .line 336
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 312
    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 332
    :cond_6
    :try_start_5
    iget-object v7, p0, Lcom/ta/utdid2/c/a/d$a$a;->a:Lcom/ta/utdid2/c/a/d$a;

    invoke-static {v7}, Lcom/ta/utdid2/c/a/d$a;->a(Lcom/ta/utdid2/c/a/d$a;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 350
    :cond_7
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 351
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    .line 349
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_2

    .line 351
    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ta/utdid2/c/a/b$b;

    .line 352
    if-eqz v0, :cond_8

    .line 354
    iget-object v7, p0, Lcom/ta/utdid2/c/a/d$a$a;->a:Lcom/ta/utdid2/c/a/d$a;

    .line 353
    invoke-interface {v0, v7, v1}, Lcom/ta/utdid2/c/a/b$b;->a(Lcom/ta/utdid2/c/a/b;Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    move-object v3, v0

    move-object v4, v0

    goto/16 :goto_0
.end method
