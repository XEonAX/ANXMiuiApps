.class public Lcom/miui/internal/util/async/ConcurrentWeakHashMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final jR:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final jS:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey<",
            "TK;>;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->jR:Ljava/lang/ref/ReferenceQueue;

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->jS:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private clean()V
    .locals 2

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->jR:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->jS:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->clean()V

    .line 69
    iget-object v0, p0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->jS:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;

    invoke-direct {v1, p1}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 59
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    invoke-direct {p0}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->clean()V

    .line 63
    new-instance v0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;

    iget-object v1, p0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->jR:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, v1}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 64
    iget-object p1, p0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->jS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 60
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
