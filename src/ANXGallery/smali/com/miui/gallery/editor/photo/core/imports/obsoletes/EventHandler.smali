.class public Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EventHandler;
.super Landroid/os/Handler;
.source "EventHandler.java"


# instance fields
.field private mBitSet:Ljava/util/BitSet;

.field private mCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 10
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EventHandler;->mCallbacks:Landroid/util/SparseArray;

    .line 12
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EventHandler;->mBitSet:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 28
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EventHandler;->mCallbacks:Landroid/util/SparseArray;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 29
    .local v0, "callback":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 30
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 32
    :cond_0
    return-void
.end method

.method public register(Ljava/lang/Runnable;)I
    .locals 3
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 15
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EventHandler;->mBitSet:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v0

    .line 16
    .local v0, "index":I
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EventHandler;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EventHandler;->mBitSet:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 18
    return v0
.end method
