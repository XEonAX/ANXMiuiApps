.class Lorg/keyczar/StreamCache;
.super Ljava/lang/Object;
.source "StreamCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/keyczar/interfaces/Stream;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final cacheMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lorg/keyczar/KeyczarKey;",
            "Lorg/keyczar/StreamQueue",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/keyczar/StreamCache;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method get(Lorg/keyczar/KeyczarKey;)Lorg/keyczar/interfaces/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/keyczar/KeyczarKey;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lorg/keyczar/StreamCache;->getQueue(Lorg/keyczar/KeyczarKey;)Lorg/keyczar/StreamQueue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/keyczar/StreamQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/keyczar/interfaces/Stream;

    return-object v0
.end method

.method getQueue(Lorg/keyczar/KeyczarKey;)Lorg/keyczar/StreamQueue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/keyczar/KeyczarKey;",
            ")",
            "Lorg/keyczar/StreamQueue",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lorg/keyczar/StreamCache;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/keyczar/StreamQueue;

    .line 44
    if-eqz v0, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-object v0

    .line 47
    :cond_1
    new-instance v1, Lorg/keyczar/StreamQueue;

    invoke-direct {v1}, Lorg/keyczar/StreamQueue;-><init>()V

    .line 48
    iget-object v0, p0, Lorg/keyczar/StreamCache;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/keyczar/StreamQueue;

    .line 49
    if-nez v0, :cond_0

    move-object v0, v1

    .line 53
    goto :goto_0
.end method

.method put(Lorg/keyczar/KeyczarKey;Lorg/keyczar/interfaces/Stream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/keyczar/KeyczarKey;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lorg/keyczar/StreamCache;->getQueue(Lorg/keyczar/KeyczarKey;)Lorg/keyczar/StreamQueue;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/keyczar/StreamQueue;->add(Ljava/lang/Object;)Z

    .line 36
    return-void
.end method
