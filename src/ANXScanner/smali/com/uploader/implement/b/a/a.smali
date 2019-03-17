.class public abstract Lcom/uploader/implement/b/a/a;
.super Ljava/lang/Object;
.source "BaseConnection.java"

# interfaces
.implements Lcom/uploader/implement/b/e;


# instance fields
.field final a:Lcom/uploader/implement/b/a;

.field volatile b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/uploader/implement/b/b;",
            ">;"
        }
    .end annotation
.end field

.field final c:I

.field d:Lcom/uploader/implement/c;


# direct methods
.method constructor <init>(Lcom/uploader/implement/c;Lcom/uploader/implement/b/a;)V
    .locals 1
    .param p1, "config"    # Lcom/uploader/implement/c;
    .param p2, "target"    # Lcom/uploader/implement/b/a;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/uploader/implement/b/a/a;->d:Lcom/uploader/implement/c;

    .line 25
    iput-object p2, p0, Lcom/uploader/implement/b/a/a;->a:Lcom/uploader/implement/b/a;

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/uploader/implement/b/a/a;->c:I

    .line 27
    return-void
.end method


# virtual methods
.method public a()Lcom/uploader/implement/b/a;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/uploader/implement/b/a/a;->a:Lcom/uploader/implement/b/a;

    return-object v0
.end method

.method public a(Lcom/uploader/implement/b/b;)V
    .locals 1
    .param p1, "listener"    # Lcom/uploader/implement/b/b;

    .prologue
    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/uploader/implement/b/a/a;->b:Ljava/lang/ref/WeakReference;

    .line 37
    return-void
.end method

.method e()Lcom/uploader/implement/b/b;
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/uploader/implement/b/a/a;->b:Ljava/lang/ref/WeakReference;

    .line 41
    .local v0, "weak":Ljava/lang/ref/WeakReference;
    if-nez v0, :cond_0

    .line 42
    const/4 v1, 0x0

    .line 44
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uploader/implement/b/b;

    goto :goto_0
.end method
